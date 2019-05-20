<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SafetyCertificates extends Model
{
    protected $table = "safety_certificates";
    protected $primaryKey = "IdSafetyCertificate";

    protected $fillable = ['*'];
    public $timestamps = false;
}
