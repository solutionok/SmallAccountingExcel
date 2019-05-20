<?php

namespace App\Exports;

use App\Models\Workers;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use DB;

class WorkersExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $bb = Workers::get();

        foreach($bb as &$r){
            $r->DateAvailableWorker = LT2IT($r->DateAvailableWorker);
            $r->StartDateContract = LT2IT($r->StartDateContract);
            $r->EndDateContract = LT2IT($r->EndDateContract);
        }

        return $bb;
    }

    public function headings():array
    {
        $cols = [];
        foreach(DB::select('describe workers;') as $col){

            $cols[] = $col->Field;
        }
        return $cols;
    }
}
