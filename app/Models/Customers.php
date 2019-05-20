<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customers extends Model
{
    protected $table = "customers";
    protected $primaryKey = "NRCustomer";
    
    public $timestamps = false;
    protected $fillable = ['*'];
    
    public function SalesManager1Data(){
        return $this->hasOne('App\Models\SalesManagers', 'IDSalesManager', 'SalesManager1');
    }
    
    public function JobTypeData(){
        return $this->hasOne('App\Models\JobTypes', 'NRType', 'JobType');
    }
    
}