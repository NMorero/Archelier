<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Events extends Model
{
    public $table = 'EVENTS';

    protected $fillable = [
      'message', 'end_date', 'client_id', 'project_id', 'view_id'
    ];
}
