<?php

namespace App\Imports;

use App\Models\StatusWorkers;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\Schema;
use Maatwebsite\Excel\Validators\Failure;
use Maatwebsite\Excel\Validators\ValidationException;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\RegistersEventListeners;
use Maatwebsite\Excel\Events\BeforeImport;


class StatusWorkersImport implements ToModel, WithHeadingRow, WithEvents
{
    use Importable, RegistersEventListeners;

    private $columns = null;
    public function __construct()
    {
        $this->columns = Schema::getColumnListing('status_workers');
    }

    public function model(array $row)
    {

        $collection = [];

        $i = 0;
        foreach($this->columns as $col){
            $lowerCol = strtolower ($col);
            // if(isset($row[$lowerCol])){

                $collection[$col] = $row[$lowerCol];
                $i++;
            // }
        }

        StatusWorkers::insert($collection);
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

    public function headingRow(): int
    {
        return 1;
    }
}
