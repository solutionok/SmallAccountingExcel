<?php

namespace App\Imports;

use App\Models\Workers;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\Schema;
use Maatwebsite\Excel\Validators\Failure;
use Maatwebsite\Excel\Validators\ValidationException;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\RegistersEventListeners;
use Maatwebsite\Excel\Events\BeforeImport;


class WorkersImport implements ToModel, WithHeadingRow, WithEvents
{
    use Importable, RegistersEventListeners;

    private $columns = null;
    public function __construct()
    {
        $this->columns = Schema::getColumnListing('workers');
    }

    public function model(array $row)
    {

        $collection = [];

        $i = 0;
        foreach($this->columns as $col){
            $lowerCol = strtolower ($col);

            if($col=='DateAvailableWorker' || $col=='StartDateContract' || $col=='EndDateContract'){

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

        Workers::insert($collection);
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
        'agentselection1' => '1agentselection1',
        'agentselection2' => '2agentselection2',
        'agentselection3' => '3agentselection3',
        'bicbanknrworker' => 'bic_bank_nrworker',
        'ibanbanknrworker' => 'iban_bank_nrworker',
        'limosastreet' => '1_limosastreet',
        'limosanr' => '1_limosanr',
        'limosacity' => '1_limosacity',
        'limosapostal' => '1_limosapostal',
        'limosacountry' => '1_limosacountry',
        'limosaarea' => '2_limosaarea',
        'limosaareapostals' => '2_limosaareapostals',
        'limosaareacountry' => '2_limosaareacountry',
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
