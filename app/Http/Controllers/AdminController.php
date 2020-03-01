<?php

namespace App\Http\Controllers;

use App\Cities;
use App\Clients;
use App\Companies;
use App\Countries;
use App\Persons;
use App\Developers;
use App\Images;
use App\ProjectLeaders;
use App\ProjectManagers;
use App\Projects;
use App\ProjectViews;
use App\Roles;
use App\States;
use App\User;
use App\Views;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware(function ($request, $next) {
            $userId = Auth::id();
            $user = User::find($userId);

            if ($user->roles->rol !== 'admin') {
                return abort(401);
            }
            return $next($request);
        });
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */




    public function home()
    {

        $persons = Persons::all();
        $companies = Companies::all();
        $countries = Countries::all();
        $cities = Cities::all();
        $states = States::all();
        $users = User::all();
        $roles = Roles::all();
        $clients = Clients::all();
        $managers = ProjectManagers::all();
        $leaders = ProjectLeaders::all();

        foreach ($managers as $manager) {
            $user = User::find($manager->user_id);
            $manager['name'] = $user->username;
        }

        foreach ($leaders as $leader) {
            $user = User::find($leader->user_id);
            $leader['name'] = $user->username;
        }


        $vac = compact('persons', 'companies', 'countries', 'cities', 'states', 'users', 'roles', 'clients', 'managers', 'leaders');
        return view('adminHome', $vac);
    }

    public function pageClientsPersons()
    {
        $clients = Clients::whereNotNull('person_id')->get();

        $vac = compact('clients');
        return view('layouts.admin.clientsPersons', $vac);
    }

    public function pageClientsCompany()
    {
        $clients = Clients::whereNotNull('company_id')->get();
        $vac = compact('clients');
        return view('layouts.admin.clientsCompanyTable', $vac);
    }


    public function addClientsPersons(Request $request)
    {

        $client = new Clients;
        $client->client_name = $request['name'];
        $client->type = 'Freelancer';
        $client->person_id = $request['person'];
        $client->company_id = NULL;
        $client->save();
        return redirect('/Admin/Clients/Person');
    }

    public function addClientsCompany(Request $request)
    {
        $client = new Clients;
        $client->client_name = $request['name'];
        $client->type = 'Company';
        $client->person_id = NULL;
        $client->company_id = $request['company'];
        $client->save();
        return redirect('/Admin/Clients/Company');
    }

    public function getCompaniesTable()
    {
        $companies = Companies::all();
        $vac = compact('companies');
        return view('layouts.admin.companiesTable', $vac);
    }


    public function addCompany(Request $request)
    {
        $company = new Companies;
        $company->name = $request['name'];
        $company->cuit = $request['cuit'];
        $company->alias = $request['alias'];
        $company->website = $request['website'];
        $company->administrator_name = $request['adminName'];
        $company->administrator_email = $request['adminEmail'];
        $company->production_manager_name = $request['prodManName'];
        $company->production_email = $request['prodEmail'];
        $company->phone_number = $request['phoneNumber'];
        $company->address = $request['address'];
        $company->postal_code = $request['postalCode'];
        $company->identification_code = $request['identificationCode'];
        $company->country_id = $request['country'];
        $company->state_id = $request['state'];
        $company->city_id = $request['city'];

        $company->save();
        return redirect('/Admin/Companies');
    }

    public function pageDevelopers()
    {
        $developers = Developers::all();
        foreach ($developers as $developer) {
            $user = User::find($developer->user_id);
            $person = Persons::find($user->person_id);
            $developer['person'] = $person;
            $developer['username'] = $user['username'];
        }

        $vac = compact('developers');
        return view('layouts.admin.developersTable', $vac);
    }


    public function addDeveloper(Request $request)
    {
        $developer = new Developers;
        $developer->user_id = $request['user'];

        $developer->save();

        return redirect('/Admin/Developers');
    }

    public function pagePersons()
    {
        $persons = Persons::all();
        $vac = compact('persons');
        return view('layouts.admin.personsTable', $vac);
    }

    public function addPerson(Request $request)
    {
        $person = new Persons;
        $person->name = $request['name'];
        $person->last_name = $request['last_name'];
        $person->dni = $request['dni'];
        $person->alias = $request['alias'];
        $person->email = $request['email'];
        $person->phone_number = $request['phone_number'];
        $person->address = $request['address'];
        $person->identification_code = $request['identification_code'];
        $person->country_id = $request['country'];
        $person->state_id = $request['state'];
        $person->city_id = $request['city'];
        $persons->save();

        return redirect('/Admin');
    }


    public function addPRManager(Request $request)
    {
        $PRManager = new ProjectManagers;
        $PRManager->user_id = $request['user'];
        $PRManager->save();

        return redirect('/Admin/Projects/Managers');
    }

    public function addPRLeader(Request $request)
    {
        $PRLeader = new ProjectLeaders;
        $PRLeader->user_id = $request['user'];
        $PRLeader->save();

        return redirect('/Admin/Projects/Leaders');
    }

    public function pagePRLeaders()
    {
        $PRLeaders = ProjectLeaders::all();

        foreach ($PRLeaders as $leader) {
            $user = User::find($leader->user_id);
            $person = Persons::find($user->person_id);
            $leader['user'] = $user;
            $leader['person'] = $person;
        }



        $vac = compact('PRLeaders');
        return view('layouts.admin.PRLeadersTable', $vac);
    }

    public function pagePRManagers()
    {
        $PRManagers = ProjectManagers::all();

        foreach ($PRManagers as $manager) {
            $user = User::find($manager->user_id);
            $person = Persons::find($user->person_id);
            $manager['user'] = $user;
            $manager['person'] = $person;
        }


        $vac = compact('PRManagers');
        return view('layouts.admin.PRManagersTable', $vac);
    }

    public function addUser(Request $request)
    {
        $user = new User;
        $user->username = $request['username'];
        $user->email = $request['email'];
        $user->password = Hash::make($request['password']);
        if (isset($request['person']) && !empty($request['person'])) {
            $user->person_id = $request['person'];
        }
        $user->rol_id = $request['rol'];
        $user->save();

        return redirect('/Admin/Users');
    }

    public function pageUsers()
    {
        $users = User::all();

        foreach ($users as $user) {
            $person = Persons::find($user->person_id);
            $rol = Roles::find($user->rol_id);
            $user['person'] = $person;
            $user['rol'] = $rol;
        }


        $vac = compact('users');
        return view('layouts.admin.usersTable', $vac);
    }


    public function pageProjects()
    {
        $projects = Projects::all();
        foreach ($projects as $project) {
            $client = Clients::find($project->client_id);
            $manager = ProjectManagers::find($project->manager_id);
            $user1 = User::find($manager->user_id);
            $leader = ProjectLeaders::find($project->leader_id);
            $user2 = User::find($leader->user_id);
            $project['client'] = $client->client_name;
            $project['manager'] = $user1->username;
            $project['leader'] = $user2->username;
        }
        $vac = compact('projects');
        return view('layouts.admin.projects', $vac);
    }

    public function pageViews($id)
    {
        $views = ProjectViews::where('project_id', 'LIKE', $id)->get();
        foreach ($views as $view) {
            $image1 = Views::find($view->view_id);
            $image2 = Images::find($image1['image_id']);
            $view['image'] = $image2['image_route'];
        }
        $vac = compact('views', 'id');
        return view('layouts.admin.projectViews', $vac);
    }

    public function addProject(Request $request)
    {
        $project = new Projects;
        $project->project_name = $request['projectName'];
        $project->delivery_date = $request['deliveryDate'];
        $project->client_id = $request['client'];
        $project->manager_id = $request['manager'];
        $project->leader_id = $request['leader'];
        $project->save();

        return redirect('/Admin/Projects');
    }

    public function addView(Request $request, $id)
    {

        $image = new Images;
        $imageName = date("Y-m-d") . '-' . time() . '.' . $request['image']->getClientOriginalExtension();
        $request['image']->move(
            base_path() . '/public/upload/views',
            $imageName
        );

        $image->image_route = '/upload/views/' . $imageName;
        $image->save();

        $view = new Views;
        $view->image_id = $image->id;
        $view->save();

        $projectView = new ProjectViews;
        $projectView->view_id = $view->id;
        $projectView->project_id = $id;
        $projectView->save();

        return back();
    }

    public function pageRoles()
    {
        $roles = Roles::all();
        $vac = compact('roles');
        return view('layouts.admin.roles', $vac);
    }

    public function addRol(Request $request)
    {
        $rol = new Roles;
        $rol->rol = $request['name'];
        $rol->save();

        return redirect('/Admin/Roles');
    }
}
