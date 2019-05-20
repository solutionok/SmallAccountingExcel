@extends('worker.layouts.page')
@section('css')
<link rel="stylesheet" href="{{url('public')}}/assets/vendor/jquery-datatables-bs3/assets/css/datatables.css">
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
            <h2 class="mt-none mb-none">Hours</h2>
        </div>
        <div class="panel-body table-responsive">
            
            <table class="table table-bordered  mb-none" style="border:solid 1px #ccc;" id="datatable-default">
                <thead>
                    <tr>
                        <th>
                            Week
                            <?php 
                            $y =date('Y'); 
                            $maxweek =date('W', strtotime('December 28, 2015')); 
                            $currentweek =date('W'); 
                            ?>
                            <hr>
                            <select id="week" class="form-control">
                                @for($w=1; $w<=$maxweek;$w++)
                                <option value="{{$y}}_{{$w}}" {{$w==$currentweek?'selected':''}}>{{$w}}</option>
                                @endfor
                            </select>
                        </th>
                        <th>Day <hr><input class="form-control" style="visibility:hidden;"></th>
                        <th>
                            Hours <hr>
                            <input class="form-control" id="total-hours" readonly>
                        </th>
                        <th>
                            Minutes <hr>
                            <input class="form-control" id="total-minutes" readonly>
                        </th>
                    </tr>
                </thead>
                <tbody id='datas'>
                    <tr id="tr1">
                        <td></td>
                        <td>1</td>
                        <td><input type="number" min='0' id="h1" class="form-control"> </td>
                        <td><input type="number" min='0' id="m1" class="form-control"> </td>
                    </tr>
                    <tr id="tr2">
                        <td></td>
                        <td>2</td>
                        <td><input type="number" min='0' id="h2" class="form-control"> </td>
                        <td><input type="number" min='0' id="m2" class="form-control"> </td>
                    </tr>
                    <tr id="tr3">
                        <td></td>
                        <td>3</td>
                        <td><input type="number" min='0' id="h3" class="form-control"> </td>
                        <td><input type="number" min='0' id="m3" class="form-control"> </td>
                    </tr>
                    <tr id="tr4">
                        <td></td>
                        <td>4</td>
                        <td><input type="number" min='0' id="h4" class="form-control"> </td>
                        <td><input type="number" min='0' id="m4" class="form-control"> </td>
                    </tr>
                    <tr id="tr5">
                        <td></td>
                        <td>5</td>
                        <td><input type="number" min='0' id="h5" class="form-control"> </td>
                        <td><input type="number" min='0' id="m5" class="form-control"> </td>
                    </tr>
                    <tr id="tr6">
                        <td></td>
                        <td>6</td>
                        <td><input type="number" min='0' id="h6" class="form-control"> </td>
                        <td><input type="number" min='0' id="m6" class="form-control"> </td>
                    </tr>
                    <tr id="tr7">
                        <td></td>
                        <td>7</td>
                        <td><input type="number" min='0' id="h7" class="form-control"> </td>
                        <td><input type="number" min='0' id="m7" class="form-control"> </td>
                    </tr>
                    <tr id="tr8">
                        <td></td>
                        <td>Km</td>
                        <td colspan="2"><input type="number" min='0' id="h8" class="form-control"> </td>
                    </tr>
                    
                </tbody>
            </table>
            <div class="form-group mt-lg">
                <div class="col-12 text-right">
                    <button class="btn btn-primary save-btn">Save</button>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@section('scripts')
<script src="{{url('public')}}/assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
<script src="{{url('public')}}/assets/vendor/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
<script src="{{url('public')}}/assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
<script>
    $(document).on('ready', function(){
        $('#week').change(function(){
            $.get(BASE_URL + '/worker/hours/' + this.value, function(r){
                $('#datas input').val('')
                for(var i=0; i<8; i++){
                    $('#datas tr:nth-child('+(i+1)+') td:nth-child(1)').text($('#week option:selected').text())

                    if(r[i]){
                        if(i==7){
                            $('#h8').val(r[i]['Hours']?r[i]['Hours']:'')
                        }else{
                            $('#h'+(i+1)).val(r[i]['Hours']?r[i]['Hours']:'')
                            $('#m'+(i+1)).val(r[i]['Minutes']?r[i]['Minutes']:'')
                        }
                    }
                }
                calcTotal();
            }, 'json')
        }).change();
        
        $('#datas input').change(function(){
            if(this.id=='h8')return;
            calcTotal();
        })
        $('.save-btn').click(function(){
            var data = {
                _token:'{{csrf_token()}}',
                h:[],
                m:[],
            }
            for(var i=0; i<8; i++){
                if(i==7){
                    data.h[i] = parseFloat($('#h'+(i+1)).val()) | 0
                }else{
                    data.h[i] = parseFloat($('#h'+(i+1)).val()) | 0
                    data.m[i] = parseFloat($('#m'+(i+1)).val()) | 0
                }
            }
            $.post(BASE_URL + '/worker/hours/'+$('#week').val(), data, function(r){
                if(r=='ok'){
                    new PNotify({
                        title: 'Sussessed!',
                        text: 'Successfully saved!',
                        type: 'primary',
                    });
                }
            })
        })
        function calcTotal(){
            var h=0,m=0;
            for(var i=0; i<7; i++){
                h+=Number($('#h'+(i+1)).val())
                m+=Number($('#m'+(i+1)).val())
            }
            $('#total-hours').val(h)
            $('#total-minutes').val(m)
        }
    })
</script>
@endsection