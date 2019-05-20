<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StatusWorkers extends Model
{
    protected $table = "status_workers";
    protected $primaryKey = "IdStatusWorker";
    
    protected $fillable = ['*'];
    public $timestamps = false;
}
