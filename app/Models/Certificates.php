<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Certificates extends Model
{
    protected $table = "certificates";
    protected $primaryKey = "Id";

    protected $fillable = ['*'];
    public $timestamps = false;
}
