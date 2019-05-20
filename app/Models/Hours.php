<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Hours extends Model
{
    protected $table = "hours";
    protected $primaryKey = "Id";
    
    protected $fillable = ['*'];
    public $timestamps = false;
}
