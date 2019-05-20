<?php

namespace App\Imports;

use App\Models\OpenJobsCopello;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\Schema;
use Maatwebsite\Excel\Validators\Failure;
use Maatwebsite\Excel\Validators\ValidationException;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\RegistersEventListeners;
use Maatwebsite\Excel\Events\BeforeImport;


class OpenJobsCopelloImport implements ToModel, WithHeadingRow, WithEvents
{
    use Importable, RegistersEventListeners;

    private $columns = null;
    public function __construct()
    {
        $this->columns = Schema::getColumnListing('openjobscopello');

    }
    public function model(array $row)
    {

        $collection = [];

        $i = 0;
        foreach($this->columns as $col){
            $lowerCol = strtolower ($col);
            if($col=='DateEntered' || $col=='StartDateRequest' || $col=='EndDateExclusivity'){
                if(is_numeric($row[$lowerCol]))
                    $collection[$col] = (\PhpOffice\PhpSpreadsheet\Shared\Date::excelToDateTimeObject($row[$lowerCol]))->format('Y-m-d');
                else
                    $collection[$col] = IT2LT($row[$lowerCol]);
            }else{

                $collection[$col] = $row[$lowerCol];
                // $collection[$col] = $this->_excelval($row, $lowerCol);
            }
            $i++;
        }
        OpenJobsCopello::insert($collection);
    }


    public static function beforeImport(BeforeImport $event)
    {
        $worksheet = $event->reader->getActiveSheet();
        $highestRow = $worksheet->getHighestRow(); // e.g. 10

        if ($highestRow < 2) {
            $error = \Illuminate\Validation\ValidationException::withMessages([]);
            $failure = new Failure(1, 'rows', [0 => 'Now enough rows!']);
            $failures = [0 => $failure];
            throw new ValidationException($error, $failures);
        }
    }

    private $_gcol = [
        'reportmeetinga' => 'report_meeting_a',
        'reportmeetingb' => 'report_meeting_b',
        'reportmeetingc' => 'report_meeting_c',
        'reportmeetingd' => 'report_meeting_d',
        'reportmeetinge' => 'report_meeting_e',
    ];

    private function _excelval($row, $dbcol){
        if(isset($row[$dbcol])){

            return $row[$dbcol];
        }else if(isset($this->_gcol[$dbcol])){

            return $row[$this->_gcol[$dbcol]];
        }

        return '';
    }


    public function headingRow(): int
    {
        return 1;
    }
}
