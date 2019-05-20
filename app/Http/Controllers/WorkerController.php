<?php

namespace App\Http\Controllers;

use Storage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Response;
use App\Models\Manager;
use App\Models\Workers;
use App\Models\Customers;
use App\Models\Openjobscopello;
use App\Models\Hours;

 

class WorkerController extends Controller
{
    
    
    public function hours(Request $request){
        $data = [];

        return view('worker.hours', $data);
    }
    public function hoursWeek(Request $request, $week){
        $sp = explode('_', $week);
        $y = $sp[0];
        $w = $sp[1];
        
        $workerId = session('worker.NRWorker');
        
        $datas = Hours::where('NRWorker', $workerId)
                ->where('Year', $y)
                ->where('Week', $w)
                ->orderBy('Day')
                ->get()->toArray();
        $re = [];
        for($i=0; $i<8; $i++){
            $re[] = isset($datas[$i]) ? $datas[$i] : [];
        }
        return json_encode($re);
    }
    public function hoursWeekSave(Request $request, $week){
        $sp = explode('_', $week);
        $y = $sp[0];
        $w = $sp[1];
        
        $workerId = session('worker.NRWorker');
        $workerName = session('worker.NameWorker');
        
        $hs = $request->input('h');
        $ms = $request->input('m');
        
        foreach($hs as $i=>$v){
            $row = Hours::where('NRWorker', $workerId)
                    ->where('Year', $y)
                    ->where('Week', $w)
                    ->where('Day', $i+1)
                    ->first();
            if(!$row){
                $row = new Hours;
            }
            $row->NameWorker = $workerName;
            $row->NRWorker = $workerId;
            $row->Year = $y;
            $row->Week = $w;
            $row->Day = $i+1;
            $row->Hours = $v;
            if($i<7){
                $row->Minutes = $ms[$i];
                
            }
            $row->save();
        }
        
        return 'ok';
    }
    public function index(Request $request){
        return view('worker.index');
    }
    
    public function doLogin(Request $request){
        $username= $request->input('username');
        $password= $request->input('pwd');

        $user = Workers::where('LoginWorker', $username)
                ->where('PasswordWorker', $password)
                ->first();

        if(!$user){
            return redirect('worker')->with([
                'error'=>'Username or Password mismatch', 
                'lastLoginUserName'=>$username,
                'lastLoginPassword'=>$password,
            ]);
        }else if($user->LoginAttempsWorker>=$user->MaximumLoginWorker){
            $user->BlockedWorker= 1;
            $user->save();
            return redirect('worker')->with([
                'error'=>'This user login permission limited', 
                'lastLoginUserName'=>$username,
            ]);
        }else if($user->BlockedWorker==1){
            
            return redirect('worker')->with([
                'error'=>'This user has been blocked', 
                'lastLoginUserName'=>$username,
            ]);
        }else{
            $user->LoginAttempsWorker += 1;
            $user->save();
            session(['worker' => $user->toArray()]);
            return redirect('worker/hours');
        }
    }
    
    public function logout(Request $request){
        $request->session()->forget('worker');
        return redirect('worker');
    }
    
    
}
