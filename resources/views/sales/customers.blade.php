@extends('sales.layouts.page')
@section('css')
<link rel="stylesheet" href="{{url('public')}}/assets/vendor/jquery-datatables-bs3/assets/css/datatables.css">
<style>
    .dataTables_length select{height:30px;padding:initial;    }
    #datatable-default_filter.dataTables_filter label{width:100%;}
    #datatable-default_filter.dataTables_filter input{border-radius: 5px;border: solid 1px #ccc;padding: 3px 12px;}
    .dataTables_info{margin-top: 10px;}
    #datatable-default thead th select{height:initial;padding:3px 5px;  }
</style>
@endsection
@section('content')
<!--========================== Typing Section============================-->
<div class="wow fadeInUp">
    <div class="panel">
        <div class="panel-heading">
            <h2 class="mt-none mb-none">Customers</h2>
            <div class="panel-actions">
                <button onclick="location.href = '{{url('sales/customers/0')}}'" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> New Customer</button>
            </div>
        </div>
        <div class="panel-body table-responsive">
            <table class="table table-bordered table-striped mb-none" id="datatable-default">
                <thead>
                    <tr>
                        @foreach($map as $label=>$col)
                        <th>{{$label}}</th>
                        @endforeach
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    
                    @foreach($datas as $data)
                    <tr class="gradeX">
                        @foreach($map as $label=>$col)
                            @if(is_array($col))
                                <td>{{$data[$col[0]]?$data[$col[0]][$col[1]]:''}}</td>
                            @elseif($label=='Active')
                                <td>{{$data->$col?'Y':'N'}}</td>
                            @else
                                <td>{{$data->$col}}</td>
                            @endif
                        @endforeach
                        <td><a href="{{url('sales/customers/'.$data->NRCustomer)}}" class="btn btn-primary btn-sm">Edit</a></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
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
        $('#datatable-default').dataTable({
            "ordering" : false,
            language: {searchPlaceholder: "Search "},
            initComplete: function () {
                var ind = 0;
                this.api().columns().every( function () {
                    ind++;
                    if(ind>6)return;
                    
                    var column = this;
                    
                    var select = $('<br><select><option value=""></option></select>')
                        .appendTo( $(column.header()) )
                        .on( 'change', function () {
                            var val = $.fn.dataTable.util.escapeRegex(
                                $(this).val()
                            );

                            column
                                .search( val ? '^'+val+'$' : '', true, false )
                                .draw();
                        } );

                    column.data().unique().sort().each( function ( d, j ) {
                        select.append( '<option value="'+d+'">'+d+'</option>' )
                    } );
                    
                    
                } );
            }
        })
    })
</script>
@endsection