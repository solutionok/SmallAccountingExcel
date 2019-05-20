<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Workers extends Model
{
    protected $table = "workers";
    protected $primaryKey = "NRWorker";

    public $timestamps = false;

    protected $fillable = ['*'];

    public function StatusWorkerData(){
        return $this->hasOne('App\Models\StatusWorkers', 'IdStatusWorker', 'StatusWorker');
    }

    public function AgentSelection1Data(){
        return $this->hasOne('App\Models\AgentSelection', 'IdAgentSelection', 'AgentSelection1');
    }

    public function CustomerData(){
        return $this->hasOne('App\Models\Customers', 'NRCustomer', 'Customer');
    }

    public function JobTypeData(){
        return $this->hasOne('App\Models\JobTypes', 'NRType', 'JobType');
    }

}
