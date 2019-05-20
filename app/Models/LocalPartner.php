<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LocalPartner extends Model
{
    protected $table = "local_partner";
    protected $primaryKey = "NRLocalPartner";

    protected $fillable = ['*'];
    public $timestamps = false;
}
