<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Manager extends Model
{
    protected $table = "manager";
    protected $primaryKey = "IdManager";
    
    protected $fillable = ['*'];
    public $timestamps = false;
}
