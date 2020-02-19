<?php

namespace App\Http\Controllers;

use App\Cities;
use App\Clients;
use App\Companies;
use App\Countries;
use App\Persons;
use App\Developers;
use App\States;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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

            if($user->roles->rol !== 'admin'){
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




    public function home(){

        $persons = Persons::all();
        $companies = Companies::all();
        $countries = Countries::all();
        $cities = Cities::all();
        $states = States::all();
        $users = User::all();
        $vac = compact('persons', 'companies', 'countries', 'cities', 'states', 'users');
        return view('adminHome', $vac);
    }

    public function pageClientsPersons(){
        $clients = Clients::whereNotNull('person_id')->get();

        $vac = compact('clients');
        return view('layouts.admin.clientsPersons', $vac);
    }

    public function pageClientsCompany(){
        $clients = Clients::whereNotNull('company_id')->get();
        $vac = compact('clients');
        return view('layouts.admin.clientsCompanyTable', $vac);
    }


    public function addClientsPersons(Request $request){

        $client = new Clients;
        $client->client_name = $request['name'];
        $client->type = 'Freelancer';
        $client->person_id = $request['person'];
        $client->company_id = NULL;
        $client->save();
        return redirect('/Admin/Clients/Person');
    }

    public function addClientsCompany(Request $request){
        $client = new Clients;
        $client->client_name = $request['name'];
        $client->type = 'Company';
        $client->person_id = NULL;
        $client->company_id = $request['company'];
        $client->save();
        return redirect('/Admin/Clients/Company');
    }

    public function getCompaniesTable(){
        $companies = Companies::all();
        $vac = compact('companies');
        return view('layouts.admin.companiesTable', $vac);
    }


    public function addCompany(Request $request){
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

    public function pageDevelopers(){
        $developers = Developers::all();
        foreach($developers as $developer){
            $user = User::find($developer->user_id);
            $person = Persons::find($user->person_id);
            $developer['person'] = $person;
            $developer['username'] = $user['username'];
        }
        
        $vac = compact('developers');
        return view('layouts.admin.developersTable', $vac);
    }


    public function addDeveloper(Request $request){
        $developer = new Developers;
        $developer->user_id = $request['user'];
        
        $developer->save();

        return redirect('/Admin/Developers');
    }

    public function pagePersons(){
        $persons = Persons::all();
        $vac = compact('persons');
        return view('layouts.admin.personsTable', $vac);
    }

    public function addperson(Request $request){
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
    }



}
