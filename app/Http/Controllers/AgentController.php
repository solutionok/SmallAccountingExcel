<?php

namespace App\Http\Controllers;

use Storage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Response;
use App\Models\AgentSelection;
use App\Models\Workers;
use App\Models\Customers;
use App\Models\Openjobscopello;


class AgentController extends Controller
{

    /////////////////////////////////////////////////////////////////////////////
    // jobs functions.
    /////////////////////////////////////////////////////////////////////////////
    public function savejob(Request $request) {
        $data = $request->input();
        foreach(dateColNames('openjobscopello') as $c){
            if(isset($data[$c])){
                $data[$c] = IT2LT($data[$c]);
            }
        }

        unset($data['_token']);

        $row = Openjobscopello::find($data['JobNRWebsite']);
        foreach($data as $field=>$dd){
            $row->$field = $dd;
        }

        $row->save();
        return back()->with(['success'=>'Saved successfully']);
    }

    public function editjob(Request $request, $id){
        $cols = [];
        foreach(DB::select('describe openjobscopello;') as $col){
            $cols[$col->Field] = $col;
        }

        $data = [];
        $data['data'] = Openjobscopello::find($id)->toArray();
        $data['cols'] = $cols;
        $data['depended'] = [//depended fields
            'JobFromSales' => ['sales_managers', 'IDSalesManager', 'FullName'],//table, primary, label name
            'JobForFIRST' => ['agent_selection', 'IdAgentSelection', 'AgentSelection'],//table, primary, label name
            'JobForSECOND' => ['agent_selection', 'IdAgentSelection', 'AgentSelection'],//table, primary, label name
            'JobForTHIRD' => ['agent_selection', 'IdAgentSelection', 'AgentSelection'],//table, primary, label name
            'NameCustomer' => ['customers', 'NRCustomer', 'NameCustomer'],//table, primary, label name
            'JobType' => ['job_types', 'NRType', 'JobType'],
            'Language' => ['languages', 'IDLanguages', 'Language'],
            'CertificatesNeeded' => ['certificates', 'Id', 'Certificate'],//
            'SafetyCertificatesNeeded' => ['safety_certificates', 'NrSafetyCertificate', 'NameSafetyCertificate'],//
            'WhereToSleep' => ['houses', 'NrHouse', 'NameHouse'],//
        ];

        $data['customs'] = [//custom fields
            'DateEntered' => 'DateCurrentReadonly',//custom function name
            'StartDateRequest' => 'DateCurrentReadonly',//custom function name
            'EndDateExclusivity' => 'ManagerOpenjob_EndDateExclusivity',//custom function name
        ];

        return view('agent.editjob', $data);
    }

    public function jobs(Request $request){
        $data = [];
        $data['datas'] = Openjobscopello::get();
        $data['map'] = [
            'NR' => 'JobNRWebsite',
            'Date' => 'DateEntered',
            'Open' => 'JobOpen',
            'From' => 'JobFromSales',
            'Description customer:' => 'CustomerDescritionAndRegion',
            'JobType' => ['JobTypeData', 'JobType'],
            'People' => 'NumberOfPeople',
            'Offer Price Worker' => 'OfferedPriceWorker',
        ];

        return view('agent.job', $data);
    }
    /*
     * ended
     */


    /////////////////////////////////////////////////////////////////////////////
    // workers functions
    /////////////////////////////////////////////////////////////////////////////
    public function saveWorker(Request $request){
        $data = $request->input();
        foreach(dateColNames('workers') as $c){
            if(isset($data[$c])){
                $data[$c] = IT2LT($data[$c]);
            }
        }

        unset($data['_token']);

        if(intval($data['NRWorker'])){
            $worker = Workers::find($data['NRWorker']);
        }else{
            $worker = new Workers;
        }
        foreach($data as $field=>$dd){
            $worker->$field = $dd;
        }

        $worker->AgentSelection1 = session('agent.IdAgentSelection');

        if ($request->hasFile('CVWorker')) {

            $path = $request->file('CVWorker')->store('cv');

            $worker->CVWorker = $path;
        }

        $worker->save();

        $id = $worker->NRWorker;

        return redirect('agent/workers/'.$id)->with(['success'=>'Saved successfully']);
    }
    public function editworker(Request $request, $id){
        $cols = [];
        $col1 = [];
        foreach(DB::select('describe workers;') as $col){
            $cols[$col->Field] = $col;
            $col1[$col->Field] = false !== strpos(strtolower($col->Type), 'int(') || false !== strpos(strtolower($col->Type), 'double') ? 0 : '';
        }

        $data = [];
        $data['data'] = intval($id)?Workers::find($id)->toArray():$col1;
        $data['cols'] = $cols;
        $data['depended'] = [//depended fields
            'Customer' => ['customers', 'NRCustomer', 'NameCustomer'],//table, primary, label name
            'AgentSelection1' => ['agent_selection', 'IdAgentSelection', 'AgentSelection', ['disabled'=>'disabled']],//table, primary, label name, other option
            'AgentSelection2' => ['agent_selection', 'IdAgentSelection', 'AgentSelection'],//table, primary, label name
            'AgentSelection3' => ['agent_selection', 'IdAgentSelection', 'AgentSelection'],//table, primary, label name
            'StatusWorker' => ['status_workers', 'IdStatusWorker', 'StatusWorker'],//
            'LocalPartner' => ['local_partner', 'NRLocalPartner', 'NameLocalpartner'],//
            'JobType' => ['job_types', 'NRType', 'JobType'],//
            'JobTypeBackup' => ['job_types', 'NRType', 'JobType'],//
            'Certificate' => ['certificates', 'Id', 'Certificate'],//
            'Certificate2' => ['certificates', 'Id', 'Certificate'],//
            'SafetyCertificate' => ['safety_certificates', 'NrSafetyCertificate', 'NameSafetyCertificate'],//
            'House' => ['houses', 'NrHouse', 'NameHouse'],//
            'TransportCostSytemFromCountry' => ['transport_cost', 'Idtransportcost', 'TransportCost'],//
            'TransportCostToGoToSite' => ['transport_cost', 'Idtransportcost', 'TransportCost'],//
        ];
        $data['customs'] = [//custom fields
            'Margin' => 'WorkersMarginCustom',//custom function name
            'DateAvailableWorker' => 'WorkersDateAvailableWorker',//custom function name
            'StartDateContract' => 'WorkersReadonlyText',//custom function name
            'EndDateContract' => 'WorkersReadonlyText',//custom function name
            'Eng' => 'WorkersLangSelect',//
            'German' => 'WorkersLangSelect',//
            'French' => 'WorkersLangSelect',//
            'Netherlands' => 'WorkersLangSelect',//
            'CVWorker' => 'WorkersCVWorker',//
        ];

        return view('agent.editworker', $data);
    }

    public function workers(Request $request){

        $agentId = session('agent.IdAgentSelection');
        $data = [];
        $data['datas'] = Workers::where('AgentSelection1', $agentId)->get();
        $data['map'] = [
            'NR' => 'NRWorker',
            'Status' => ['StatusWorkerData', 'StatusWorker'],
            'Name' => 'NameWorker',
            'Job' => ['JobTypeData', 'JobType'],
            'Agent' => ['AgentSelection1Data', 'AgentSelection'],
        ];

        return view('agent.workers', $data);
    }

    public function index(Request $request){
        return view('agent.index');
    }

    public function doLogin(Request $request){
        $username= $request->input('username');
        $password= $request->input('pwd');

        $user = AgentSelection::where('LoginAgent', $username)
                ->where('PasswordAgent', $password)
                ->first();

        if(!$user){
            return redirect('agent')->with([
                'error'=>'Username or Password mismatch',
                'lastLoginUserName'=>$username,
                'lastLoginPassword'=>$password,
            ]);
        }else if($user->LoginAttempsAgent>=$user->MaximumLoginAgent){
            $user->BlockedAgent = 1;
            $user->save();
            return redirect('agent')->with([
                'error'=>'This user login permission limited',
                'lastLoginUserName'=>$username,
            ]);
        }else if($user->BlockedAgent==1){

            return redirect('agent')->with([
                'error'=>'This user has been blocked',
                'lastLoginUserName'=>$username,
            ]);
        }else{
            $user->LoginAttempsAgent += 1;
            $user->save();
            session(['agent' => $user->toArray()]);
            return redirect('agent/workers');
        }
    }

    public function logout(Request $request){
        $request->session()->forget('agent');
        return redirect('agent');
    }
}
