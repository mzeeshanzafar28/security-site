@extends('layout')
@section('title','Steel Toe | Manage Permissions')
@section('content')

<!-- BEGIN: Content-->
<div class="app-content content" style="margin-top:10px">
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-9 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h5 class="content-header-title float-left mb-0">Permissions</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <div class="row">
            </div>
            <!-- Column selectors with Export Options and print table -->
            <section id="column-selectors">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <div style="float:left">
                                    <h5>Permissions for {{$role->name}}</h5>
                                </div>
                                <div style="float: right;">
                                    <button id="select_all" onclick="toggleCheckboxes()" class="btn btn-primary">Uncheck all</button>
                                </div>
                            </div>
                            <div class="card-content" style="">   
                                <div class="card-body card-dashboard">
                                
                                    <form method="POST" action="{{URL::to('permissions/save-permissions')}}">
                                        @csrf
                                        <div class="row">
                                            <input type="text" name="roleId" value="{{$role->id}}" hidden>
                                            <input type="hidden" id="permissions" name="permissions" value="{{ isset($perm) ? $perm : '' }}">
                                            @foreach ($tabs as $tab)
                                                <div class="col-lg-4 col-md-6 col-sm6" style="margin-top: 20px;">
                                                    <div class="card" style="height: 100px;">
                                                        <div class="card-header" style="background-color: #1931e391; color:white">
                                                            <h6><label style="color: white"><input type="checkbox" class="checkbox" name="checked_tabs[]" id="Tab-{{$tab->id}}" value="{{$tab->id}}"> Allow {{$tab->tab_name}}</label></h6>
                                                        </div>
                                                        <div class="card-body">
                                                            <div class="row"> 
                                                                <div class="col-md-4">
                                                                    <h6><label><input type="checkbox" class="checkbox" name="checked_pers[{{$tab->id}}-add]" id="{{$tab->id}}-add" value="1">Add </label></h6>
                                                                </div>
                                                                <div class="col-md-4">
                                                                <h6><label><input type="checkbox" class="checkbox" name="checked_pers[{{$tab->id}}-update]" id="{{$tab->id}}-update" value="1" >Update </label></h6>
                                                                </div>
                                                                <div class="col-md-4">
                                                                <h6><label><input type="checkbox" class="checkbox" name="checked_pers[{{$tab->id}}-delete]" id="{{$tab->id}}-delete" value="1" >Delete </label></h6>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                        <div style="margin-top: 30px;">
                                            <button class="btn  btn-primary" >
                                                Save Permissions
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Column selectors with Export Options and print table -->
        </div>
    </div>
</div>
<!-- END: Content-->



<script type="text/javascript">
    // $('#select_all').toggle(function(){
    //         $('input:checkbox').attr('checked','checked');
    //         $('#select_all').html('Uncheck all');

    //     },function(){
    //         $('input:checkbox').removeAttr('checked');
    //         $('#select_all').html('Check all');  
    //     })
    function toggleCheckboxes() {
  var checkboxes = document.querySelectorAll('.checkbox');
  var selectAllBtn = document.getElementById("select_all");
  if (selectAllBtn.innerHTML === "Check all") {
    for (var i = 0; i < checkboxes.length; i++) {
      checkboxes[i].checked = true;
    }
    selectAllBtn.innerHTML = "Uncheck all";
  } else {
    for (var i = 0; i < checkboxes.length; i++) {
      checkboxes[i].checked = false;
    }
    selectAllBtn.innerHTML = "Check all";
  }
}
        
    $(document).ready(function(){
        

        const permissions = $('#permissions').val();
        let perms = JSON.parse(permissions);
        for(let perm in perms){
            document.getElementById('Tab-'+perms[perm].tab_id).checked =true;
            if(perms[perm].can_create == 1){
                document.getElementById(perms[perm].tab_id+'-add').checked =true;
            }
            if(perms[perm].can_update == 1){
                document.getElementById(perms[perm].tab_id+'-update').checked =true;
            }
            if(perms[perm].can_delete == 1){
                document.getElementById(perms[perm].tab_id+'-delete').checked =true;
            }
        }

        // 
        
    })
</script>



@endsection