<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OpenJobsCopello extends Model
{
    protected $table = "openjobscopello";
    protected $primaryKey = "JobNRWebsite";
    
    protected $fillable = ['*'];
    public $timestamps = false;
    
    public function SalesMangerData(){
        return $this->hasOne('App\Models\SalesManagers', 'IDSalesManager', 'JobFromSales');
    }
}
