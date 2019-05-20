<?php

/**
 * manager for openjob edit
 */
function ManagerOpenjob_EndDateExclusivity($val, $col, $data){
    return '<input name="'.$col->Field.'" value="'.(false===strpos($val,'0000')?LT2IT($val):date('m/d/Y', strtotime('+1 year'))).'" type="text" class="form-control" readonly>';
}
//end

/**
 * manager for customer edit
 */
function ManagerCustomer_StartDate($val, $col, $data){
    $funcname = 'ManagerCustomer_StartDate'.mt_rand().mt_rand();
    $attachedScript = '<script type="text/javascript">';
    $attachedScript .= 'function '.$funcname.'(val){';
        $attachedScript .= "var ndate = new Date(val);";
        $attachedScript .= "var year = val.split('/').pop()*1+1;";
        $attachedScript .= "ndate.setFullYear(year);";
        $attachedScript .= "$('input[name=EndDatecontract]').val((ndate.getMonth()+1)+'/'+ndate.getDate()+'/'+ndate.getFullYear());";
    $attachedScript .= '}';
    $attachedScript .= '</script>';
    return '<input name="'.$col->Field.'" value="'.LT2IT($val).'" data-plugin-datepicker onchange="'.$funcname.'(this.value)" type="text" class="form-control" readonly>'.$attachedScript;
}
//end manager for customer edit

/**
 * manager for worker edit
 */
function WorkersReadonlyText($val, $col, $data){
    return '<input name="'.$col->Field.'" value="'.$val.'" type="text" class="form-control" readonly>';
}
function WorkersCVWorker($val, $col, $data){
    $html = '<input name="'.$col->Field.'" type="file" class="form-control" accept="application/pdf">';
    if($val){
        $html = '<a href="'.url('storage/app/').'/'.$val.'" target="_blank" class="btn btn-info">View</a><br>'.$html;
    }
    return $html;
}
function WorkersLangSelect ($val, $col, $data) {
    return '<select name="'.$col->Field.'" class="form-control">' .
                '<option value="0" '.($val==0?'selected':'').'>0</option>' .
                '<option value="1" '.($val==1?'selected':'').'>1</option>' .
                '<option value="2" '.($val==2?'selected':'').'>2</option>' .
                '<option value="3" '.($val==3?'selected':'').'>3</option>' .
                '<option value="4" '.($val==4?'selected':'').'>4</option>' .
                '<option value="5" '.($val==5?'selected':'').'>5</option>' .
            '</select>';
}

function WorkersDateAvailableWorker($val, $col, $data){
    $funcname = 'WorkersDateAvailableWorker'.mt_rand().mt_rand();
    $attachedScript = '<script type="text/javascript">';
    $attachedScript .= 'function '.$funcname.'(val){';
        $attachedScript .= "$('input[name=StartDateContract]').val(val);";
        $attachedScript .= "var ndate = new Date(val);";
        $attachedScript .= "var year = val.split('/').pop()*1+1;";
        $attachedScript .= "ndate.setFullYear(year);";
        $attachedScript .= "$('input[name=EndDateContract]').val((ndate.getMonth()+1)+'/'+ndate.getDate()+'/'+ndate.getFullYear());";
    $attachedScript .= '}';
    $attachedScript .= '</script>';
    return '<input name="'.$col->Field.'" value="'.LT2IT($val).'" data-plugin-datepicker onchange="'.$funcname.'(this.value)" type="text" class="form-control" readonly>'.$attachedScript;
}
function WorkersMarginCustom($val, $col, $data){
    return '<input name="'.$col->Field.'" value="'.$val.'" type="text" class="form-control" readonly>';
}
//end manager for worker edit

/**
 * general form builder functions
 */
function renderTextAreaItem($val, $col){
    return '<textarea name="'.$col->Field.'" type="text" class="form-control">'.$val.'</textarea>';
}

function renderDatePickerItem($val, $col){
    return '<input name="'.$col->Field.'" value="'.LT2IT($val).'" data-plugin-datepicker type="text" class="form-control date-picker">';
}
function renderDependedItem($val, $col, $depended) {
    static $tableDatas = [];

    $attr = [];
    if(isset($depended[3]) && is_array($depended[3])){
        foreach($depended[3] as $kk=>$vv){
            $attr[] = $kk.'='.$vv;
        }
    }

    $html = '<select name="'.$col->Field.'" data-plugin-selectTwo class="form-control filter-select" '.implode(' ', $attr).'>';

    if(!isset($tableDatas[$depended[0]])){
        $tableDatas[$depended[0]] = DB::table($depended[0])->get();
    }
    foreach($tableDatas[$depended[0]] as $dependedRow){
        $dependedRow = (array) $dependedRow;
        $html .= '<option value="'.$dependedRow[$depended[1]].'" '.($dependedRow[$depended[1]]==$val?'selected':'').'>'.$dependedRow[$depended[2]].'</option>';
    }

    $html .= '</select>';

    return $html;
}

function renderYNSelectItem ($val, $col) {
    return '<select name="'.$col->Field.'" class="form-control">' .
                '<option value="1" '.($val==1?'selected':'').'>Y</option>' .
                '<option value="0" '.($val==0?'selected':'').'>N</option>' .
            '</select>';
}

function renderTextItem($val, $col){
    return '<input name="'.$col->Field.'" value="'.$val.'" type="text" class="form-control">';
}

function renderNumberItem($val, $col){
    return '<input name="'.$col->Field.'" value="'.($val*1?$val:'').'" type="number" class="form-control">';
}

function renderPrimayItem($val, $col){
    return '<input name="'.$col->Field.'" value="'.$val.'" type="text" class="form-control" readonly>';
}
function DateCurrentReadonly($val, $col, $data){
    return '<input name="'.$col->Field.'" value="'.(false===strpos($val,'0000')?LT2IT($val):date('m/d/Y')).'" type="text" class="form-control" readonly>';
}
//end general form builder functions

function dateColNames($table){
    $re = [];
    foreach(DB::select('describe '.$table.';') as $col){
        if($col->Type=='date')
            $re[] = $col->Field;
    }
    return $re;
}

function IT2LT($IT){
    // if($IT==="2/1/2017")
    // dd($IT);
    if(!$IT)return '';
    $s = preg_split("/[\.\/\-\,]/",$IT);
    if(count($s)!=3)return $IT;
    if(intval($s[0])<1)return '';
    return sprintf('%04d-%02d-%02d', $s[2], $s[0], $s[1]);
}
function LT2IT($LT){
    if(!$LT)return '';
    $s = preg_split("/[\.\/\-\,]/",$LT);
    if($s[0]*1==0)return '';
    if(count($s)!=3)return $LT;
    return sprintf('%02d/%02d/%04d', $s[1], $s[2], $s[0]);
}

function _df_($e){
    if(!$e)return '';
    $e = explode('/', $e);
    return sprintf('%04d-%02d-%02d', $e[2], $e[1], $e[0]);
}
