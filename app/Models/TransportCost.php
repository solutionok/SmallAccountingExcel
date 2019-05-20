<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TransportCost extends Model
{
    protected $table = "transport_cost";
    protected $primaryKey = "Idtransportcost";

    protected $fillable = ['*'];
    public $timestamps = false;
}
