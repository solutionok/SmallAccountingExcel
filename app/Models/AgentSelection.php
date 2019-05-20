<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AgentSelection extends Model
{
    protected $table = "agent_selection";
    protected $primaryKey = "IdAgentSelection";

    protected $fillable = ['*'];
    public $timestamps = false;
}
