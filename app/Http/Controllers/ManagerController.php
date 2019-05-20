<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use App\Models\Manager;
use App\Models\Workers;
use App\Models\Customers;
use App\Models\Openjobscopello;

use Maatwebsite\Excel\Facades\Excel;

class ManagerController extends Controller
{

    /////////////////////////////////////////////////////////////////////////////
    // update functions
    /////////////////////////////////////////////////////////////////////////////
    public function update(){
        return view('manager.update');
    }

    public function upload(Request $request){

        $models = [
            'workers'           => 'Workers',
            'customers'         => 'Customers',
            'openjobscopello'   => 'OpenJobsCopello',
            'hours'             => 'Hours',

            'agent_selection'   => 'AgentSelection',
            'sales_manages'     => 'SalesManagers',
            'manager'           => 'Manager',
            'job_types'         => 'JobTypes',
            'houses'            => 'Houses',
            'languages'         => 'Languages',
            'certificates'      => 'Certificates',
            'safety_certificates' => 'SafetyCertificates',
            'status_workers'    => 'StatusWorkers',
            'local_partner'     => 'LocalPartner',
            'transport_cost'    => 'TransportCost',
        ];

        $tables = DB::select('SHOW TABLES');

        foreach($tables as $table)
        {
            $table=(array)$table;
            $nams = array_values($table);
            $tablename = $nams[0];

            if ($request->hasFile($tablename)) {
                DB::statement('TRUNCATE '.$tablename);

                $className = 'App\\Imports\\'.$models[$tablename].'Import';
                Excel::import(new $className, $request->file($tablename));
            }
        }

        return back()->with(['success'=>'Updated successfully']);
    }

    public function uploadCSV(Request $request){
        $tables = DB::select('SHOW TABLES');
        foreach($tables as $table)
        {
            $table=(array)$table;
            $nams = array_values($table);
            $tablename = $nams[0];

            if ($request->hasFile($tablename)) {
                $file = $request->file($tablename);
                $path = str_replace('\\', '\\\\', $file->getRealPath());
                DB::statement('TRUNCATE '.$tablename);
                $sql = "LOAD DATA INFILE '".$path."' INTO TABLE ".$tablename." FIELDS TERMINATED BY ',' IGNORE 1 ROWS;";

                DB::unprepared(DB::raw($sql));
            }
        }

        return back()->with(['success'=>'Updated successfully']);
    }

    public function download(Request $request, $what){
        $className = 'App\\Exports\\'.ucfirst($what).'Export';
        return Excel::download(new $className, $what.'.xlsx');
    }

    public function deleteHours(Request $request){
        DB::statement('TRUNCATE hours');
        return '<script>top.Swal.fire("Hours table truncated!")</script>';
    }


    /////////////////////////////////////////////////////////////////////////////
    // openjob functions
    /////////////////////////////////////////////////////////////////////////////
    public function saveOpenjobscopello(Request $request){
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

    public function editopenjobscopello(Request $request, $id){
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

        return view('manager.editopenjobscopello', $data);
    }

    public function openjobscopello(Request $request){
        $data = [];
        $data['datas'] = Openjobscopello::get();
        $data['map'] = [
            'NR' => 'JobNRWebsite',
            'Date' => 'DateEntered',
            'Open' => 'JobOpen',
            'From' => ['SalesMangerData', 'FullName'],
            'Name of the customer:' => ['CustomerData', 'NameCustomer'],
            'JobType' => ['JobTypeData', 'JobType'],
            'People' => 'NumberOfPeople',
            'Offer Price Worker' => 'OfferedPriceWorker',
            'Customer price' => 'CustomerWantsToPay',
        ];

        return view('manager.openjobscopello', $data);
    }
    /*
     * ended
     */



    /////////////////////////////////////////////////////////////////////////////
    // customers functions
    /////////////////////////////////////////////////////////////////////////////
    public function saveCustomer(Request $request){
        $data = $request->input();
        foreach(dateColNames('customers') as $c){
            if(isset($data[$c])){
                $data[$c] = IT2LT($data[$c]);
            }
        }

        unset($data['_token']);

        $row = Customers::find($data['NRCustomer']);
        foreach($data as $field=>$dd){
            $row->$field = $dd;
        }

        $row->save();
        return back()->with(['success'=>'Saved successfully']);
    }

    public function editcustomer(Request $request, $id){
        $cols = [];
        foreach(DB::select('describe customers;') as $col){
            $cols[$col->Field] = $col;
        }

        $data = [];
        $data['data'] = Customers::find($id)->toArray();
        $data['cols'] = $cols;
        $data['depended'] = [//depended fields
            'Customer' => ['customers', 'NRCustomer', 'NameCustomer'],//table, primary, label name
            'SalesManager1' => ['sales_managers', 'IDSalesManager', 'FullName'],//table, primary, label name
            'SalesManager2' => ['sales_managers', 'IDSalesManager', 'FullName'],//table, primary, label name
            'SalesManager3' => ['sales_managers', 'IDSalesManager', 'FullName'],//table, primary, label name
            'JobType' => ['job_types', 'NRType', 'JobType'],
        ];
        $data['customs'] = [//custom fields
            'StartDate' => 'ManagerCustomer_StartDate',//custom function name
            'EndDatecontract' => 'WorkersReadonlyText',//custom function name

        ];

        return view('manager.editcustomer', $data);
    }

    public function customers(Request $request){
        $data = [];
        $data['datas'] = Customers::get();
        $data['map'] = [
            'NR' => 'NRCustomer',
            'Name' => 'NameCustomer',
            'SalesManager1' => ['SalesManager1Data', 'FullName'],
            'JobType' => ['JobTypeData', 'JobType'],
            'People' => 'HoeveelManContract',
            'Active' => 'InBusinessCustomer',
        ];

        return view('manager.customers', $data);
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

        $worker = Workers::find($data['NRWorker']);
        foreach($data as $field=>$dd){
            $worker->$field = $dd;
        }

        if ($request->hasFile('CVWorker')) {

            $path = $request->file('CVWorker')->store('cv');

            $worker->CVWorker = $path;
        }

        $worker->save();
        return back()->with(['success'=>'Saved successfully']);
    }
    public function editworker(Request $request, $id){
        $cols = [];
        foreach(DB::select('describe workers;') as $col){
            $cols[$col->Field] = $col;
        }
        $data = [];
        $data['data'] = Workers::find($id)->toArray();
        $data['cols'] = $cols;
        $data['depended'] = [//depended fields
            'Customer' => ['customers', 'NRCustomer', 'NameCustomer'],//table, primary, label name
            'AgentSelection1' => ['agent_selection', 'IdAgentSelection', 'AgentSelection'],//table, primary, label name
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

        return view('manager.editworker', $data);
    }

    public function workers(Request $request){
        $data = [];
        $data['datas'] = Workers::get();
        $data['map'] = [
            'NR' => 'NRWorker',
            'Status' => ['StatusWorkerData', 'StatusWorker'],
            'Name' => 'NameWorker',
            'Agent' => ['AgentSelection1Data', 'AgentSelection'],
            'Customer' => ['CustomerData', 'NameCustomer'],
            'Inv.P' => 'Rate',
            'Cost.P' => 'CostWorker',
            'DB1' => 'Margin',
        ];

        return view('manager.workers', $data);
    }

    public function index(Request $request){
        return view('manager.index');
    }

    public function doLogin(Request $request){
        $username= $request->input('username');
        $password= $request->input('pwd');

        $user = Manager::where('LoginManager', $username)
                ->where('PasswordManager', $password)
                ->first();

        if(!$user){
            return redirect('manager')->with([
                'error'=>'Username or Password mismatch',
                'lastLoginUserName'=>$username,
                'lastLoginPassword'=>$password,
            ]);
        }else if($user->LoginAttempsManager>=$user->MaximumLoginManager){
            $user->BlockedManager = 1;
            $user->save();
            return redirect('manager')->with([
                'error'=>'This user login permission limited',
                'lastLoginUserName'=>$username,
            ]);
        }else if($user->BlockedManager==1){

            return redirect('manager')->with([
                'error'=>'This user has been blocked',
                'lastLoginUserName'=>$username,
            ]);
        }else{
            $user->LoginAttempsManager += 1;
            $user->save();
            session(['manager' => $user->toArray()]);
            return redirect('manager/workers');
        }
    }

    public function logout(Request $request){
        $request->session()->forget('manager');
        return redirect('manager');
    }
}
