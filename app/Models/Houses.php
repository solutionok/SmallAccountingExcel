<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Houses extends Model
{
    protected $table = "houses";
    protected $primaryKey = "NrHouse";

    protected $fillable = ['*'];
    public $timestamps = false;
}
