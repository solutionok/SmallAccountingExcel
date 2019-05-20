<?php

namespace App\Exports;

use App\Models\Openjobscopello;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use DB;

class OpenjobscopelloExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $bb = Openjobscopello::get();
        foreach($bb as &$r){
            $r->DateEntered = LT2IT($r->DateEntered);
            $r->StartDateRequest = LT2IT($r->StartDateRequest);
            $r->EndDateExclusivity = LT2IT($r->EndDateExclusivity);
        }

        return $bb;
    }
    public function headings():array
    {
        $cols = [];
        foreach(DB::select('describe openjobscopello;') as $col){

            $cols[] = $col->Field;
        }
        return $cols;
    }
}
