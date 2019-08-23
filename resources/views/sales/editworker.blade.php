@extends('sales.layouts.page')
@section('css')
<link rel="stylesheet" href="{{url('public')}}/assets/vendor/bootstrap-datepicker/css/datepicker3.css">
<link rel="stylesheet" href="{{url('public')}}/assets/vendor/select2/select2.css">
<style>
    .dataTables_length select{height:30px;padding:initial;    }
    #datatable-default_filter.dataTables_filter label{width:100%;}
    #datatable-default_filter.dataTables_filter input{border-radius: 5px;border: solid 1px #ccc;padding: 3px 12px;}
    .dataTables_info{margin-top: 10px;}
</style>
@endsection
@section('content')

<!--========================== Typing Section============================-->

<div class="wow fadeInUp">
    <div class="panel">
        <div class="panel-heading">
            <h2 class="mt-none mb-none">Workers</h2>
            <div class="panel-actions">
                <button onclick="location.href = '{{url('sales/workers')}}'" class="btn btn-primary btn-sm"><i class="fa fa-backward"></i> Back</button>
            </div>
        </div>
        <div class="panel-body table-responsive">
            <form class="form-horizontal form-bordered" name="edit-form" action="{{url('sales/workers/save')}}" method="post" enctype="multipart/form-data">
                @csrf
                <?php
                $html = '';

                foreach ($data as $key => $val) {
                    $col = @$cols[$key];

                    if (!$col)
                        continue;

                    $html .= '<div class="form-group">';
                    $html .= '<label class="col-md-3 control-label">' . $key . '</label>';
                    $html .= '<div class="col-md-6">';


                    if (isset($customs) && isset($customs[$col->Field])) {//custom fields
                        $html .= $customs[$col->Field]($val, $col, $data);
                    } else if (isset($depended) && isset($depended[$col->Field])) {//depended to other table
                        $html .= renderDependedItem($val, $col, $depended[$col->Field]);
                    } else if (strtolower($col->Extra) == 'auto_increment' || strtolower($col->Key) == 'pri') {//primary
                        $html .= renderPrimayItem($val, $col);
                    } else if (false !== strpos(strtolower($col->Type), 'int(')) {//type integer
                        if (false !== strpos(strtolower($col->Type), 'tinyint(')) { //tinyint yes/no select
                            $html .= renderYNSelectItem($val, $col);
                        } else {   //normal numbers
                            $html .= renderNumberItem($val, $col);
                        }
                    } else if (false !== strpos(strtolower($col->Type), 'double')) {//type double
                        $html .= renderNumberItem($val, $col);
                    } else if (false !== strpos(strtolower($col->Type), 'date')) {//type date
                        $html .= renderDatePickerItem($val, $col);
                    } else if (false !== strpos(strtolower($col->Type), 'text')) {//textarea
                        $html .= renderTextAreaItem($val, $col);
                    } else {//if never
                        $html .= renderTextItem($val, $col);
                    }

                    $html .= '</div>';
                    $html .= '</div>';
                }

                echo $html;
                ?>
                <div class="form-group">
                    <label class="col-sm-3 control-label"></label>
                    <div class="col-sm-9">
                        <button class="btn btn-primary">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection

@section('scripts')
<script src="{{url('public')}}/assets/vendor/select2/select2.js"></script>
<script src="{{url('public')}}/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script>
    $(document).on('ready', function(){
    })
</script>
@endsection