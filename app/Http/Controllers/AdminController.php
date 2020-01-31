<?php

namespace App\Http\Controllers;

use App\Clients;
use App\Companies;
use App\Persons;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function home(){
        $persons = Persons::all();
        $companies = Companies::all();
        $vac = compact('persons', 'companies');
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

}
