<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Languages extends Model
{
    protected $table = "languages";
    protected $primaryKey = "IDLanguages";
    
    protected $fillable = ['*'];
    public $timestamps = false;
}
