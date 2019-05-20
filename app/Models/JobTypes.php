<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JobTypes extends Model
{
    protected $table = "job_types";
    protected $primaryKey = "NRType";
    
    public $timestamps = false;
    protected $fillable = ['*'];
}