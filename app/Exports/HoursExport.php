<?php

namespace App\Exports;

use App\Models\Hours;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use DB;
class HoursExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Hours::all();
    }
    public function headings():array
    {
        $cols = [];
        foreach(DB::select('describe hours;') as $col){

            $cols[] = $col->Field;
        }
        return $cols;
    }
}
