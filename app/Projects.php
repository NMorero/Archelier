<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Projects extends Model
{
    public $table = 'PROJECTS';

    protected $fillable = [
        'project_name', 'delivery_date', 'client_id', 'manager_id', 'leader_id'
    ];



    public function manager(){
        return $this->hasOne('App\Managers', 'manager_id');
    }

    public function leader(){
        return $this->hasOne('App\Leaders', 'leader_id');
    }
    public function client(){
        return $this->hasOne('App\Clients', 'client_id}');
    }
    public function views(){
        return $this->hasMany('App\ProjectViews', 'id', 'project_id');
    }

}
