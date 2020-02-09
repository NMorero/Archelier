<?php

namespace App\Http\Controllers;

use App\Cities;
use App\Clients;
use App\Companies;
use App\Countries;
use App\Persons;
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
        $vac = compact('persons', 'companies', 'countries', 'cities', 'states');
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
        $company->production_manager_name = $request['prodmanName'];
        $company->production_email = $request['prodEmail'];
        $company->phone_number = $request['phoneNumber'];
        $company->addrerss = $request['address'];
        $company->postal_code = $request['postalCode'];
        $company->identification_code = $request['identificationCode'];
        $company->country = $request['country'];
        $company->state = $request['state'];
        $company->city = $request['city'];

        $company->save();
        return redirect('/Admin/Companies');
    }

}
