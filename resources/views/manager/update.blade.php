@extends('manager.layouts.page')
@section('css')
<style>
</style>
@endsection
@section('content')
<!--========================== Typing Section============================-->
<div class="wow fadeInUp">
    <div class="panel">
        <div class="panel-heading">
            <h2 class="mt-none mb-none">Update</h2>
        </div>
        <div class="panel-body table-responsive">
            <form id="update-form" action="{{url('manager/update/upload')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-sm-12 col-md-6">

                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Workers </label>
                                <div class="col-sm-8">
                                    <a href="{{url('manager/update/download/workers')}}" target="hidden-frame" class="btn btn-primary">Download</a>
                                    |
                                    <input type="file" name="workers" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Customers </label>
                                <div class="col-sm-8">
                                    <a href="{{url('manager/update/download/customers')}}" target="hidden-frame" class="btn btn-primary">Download</a>
                                    |
                                    <input type="file" name="customers" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">OpenJobsCopello </label>
                                <div class="col-sm-8">
                                    <a href="{{url('manager/update/download/openjobscopello')}}" target="hidden-frame" class="btn btn-primary">Download</a>
                                    |
                                    <input type="file" name="openjobscopello" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Hours </label>
                                <div class="col-sm-8">
                                    <a href="{{url('manager/update/download/hours')}}" target="hidden-frame" class="btn btn-primary">Download</a>
                                    |
                                    <input type="file" name="hours" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group pt-lg">
                                <label class="col-sm-4 control-label"></label>
                                <div class="col-sm-8">
                                    <a href="<?php echo url('manager/update/delete-hours')?>" target="hidden-frame" class="btn btn-warning">Delete all hours</a>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="col-sm-12 col-md-6">

                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Agent Selection </label>
                                <div class="col-sm-8">
                                    <input type="file" name="agent_selection" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Sales Managers </label>
                                <div class="col-sm-8">
                                    <input type="file" name="sales_managers" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Manager </label>
                                <div class="col-sm-8">
                                    <input type="file" name="manager" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">JobTypes </label>
                                <div class="col-sm-8">
                                    <input type="file" name="job_types" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Houses </label>
                                <div class="col-sm-8">
                                    <input type="file" name="houses" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Languages </label>
                                <div class="col-sm-8">
                                    <input type="file" name="languages" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Certificates </label>
                                <div class="col-sm-8">
                                    <input type="file" name="certificates" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">SafetyCertificates </label>
                                <div class="col-sm-8">
                                    <input type="file" name="safety_certificates" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">StatusWorkers </label>
                                <div class="col-sm-8">
                                    <input type="file" name="status_workers" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">LocalPartner </label>
                                <div class="col-sm-8">
                                    <input type="file" name="local_partner" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Transport Cost </label>
                                <div class="col-sm-8">
                                    <input type="file" name="transport_cost" style="display:inline;">
                                    <input type="submit" class="btn btn-primary " value="Update Table" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
<iframe name="hidden-frame" style="width:100%;display: none"></iframe>
@endsection

@section('scripts')
<script>
    $(document).on('ready', function(){
        $('#update-form').submit(function(){
            var valid = false;
            $('input[type="file"]').each(function(i, el){
                if(el.value)valid = true;
            })

            return valid;
        })
    })
</script>
@endsection
