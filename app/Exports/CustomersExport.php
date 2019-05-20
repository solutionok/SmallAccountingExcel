<?php

namespace App\Exports;

use App\Models\Customers;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use DB;

class CustomersExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $bb = Customers::get();

        foreach($bb as &$r){
            $r->StartDate = LT2IT($r->StartDate);
            $r->EndDatecontract = LT2IT($r->EndDatecontract);
        }

        return $bb;
    }

    public function headings():array
    {
        $cols = [];
        foreach(DB::select('describe customers;') as $col){

            $cols[] = $col->Field;
        }
        return $cols;
    }

}
