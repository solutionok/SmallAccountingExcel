<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SalesManagers extends Model
{
    protected $table = "sales_managers";
    protected $primaryKey = "IDSalesManager";
    
    protected $fillable = ['*'];
    public $timestamps = false;
}