<x-base-layout>
    <br>
   
    <!--<div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Users Management</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('users.create') }}"> Create New User</a>
            </div>
        </div>
    </div>


    @if ($message = Session::get('success'))
    <div class="alert alert-success">
      <p>{{ $message }}</p>
    </div>
    @endif


    <table class="table table-bordered">
     <tr>
       <th>No</th>
       <th>Name</th>
       <th>Email</th>
       <th>Roles</th>
       <th width="280px">Action</th>
     </tr>
     @foreach ($data as $key => $user)
      <tr>
        <td>{{ ++$i }}</td>
        <td>{{ $user->name }}</td>
        <td>{{ $user->email }}</td>
        <td>
          @if(!empty($user->getRoleNames()))
            @foreach($user->getRoleNames() as $v)
               <label class="badge badge-success">{{ $v }}</label>
            @endforeach
          @endif
        </td>
        <td>
           <a class="btn btn-info" href="{{ route('users.show',$user->id) }}">Show</a>
           <a class="btn btn-primary" href="{{ route('users.edit',$user->id) }}">Edit</a>
            {!! Form::open(['method' => 'DELETE','route' => ['users.destroy', $user->id],'style'=>'display:inline']) !!}
                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
            {!! Form::close() !!}
        </td>
      </tr>
     @endforeach
    </table>
    {!! $data->render() !!} -->



















    <div class="card card-flush h-md-100">
        <div class="card-header pt-7">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bold text-gray-800">Projects Stats</span>
                <span class="text-gray-400 mt-1 fw-semibold fs-6">Updated 37 minutes ago</span>
            </h3>
            <div class="card-toolbar">
                <a class="btn btn-success" href="{{ route('users.create') }}"> Create New User</a>
<!--                 <a href="{{route('users.create')}}" class="btn btn-sm fw-bold btn-primary">Add User</a> -->
            </div>
        </div>
        <div class="card-body pt-6 kt-portlet__body">
            <div class="table-responsive">

                @if ($message = Session::get('success'))
                <div class="alert alert-success">
                  <p>{{ $message }}</p>
                </div>
                @endif
                <table class="table table-row-dashed align-middle gs-0 gy-3 my-0" id="kt_table_1">
                    <thead>
                        <tr>
                           <th>No</th>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Roles</th>
                           <th width="280px">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $key => $user)
                        <tr>
                            <td>{{ ++$i }}</td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td>
                              @if(!empty($user->getRoleNames()))
                                @foreach($user->getRoleNames() as $v)
                                   <label class="badge badge-success">{{ $v }}</label>
                                @endforeach
                              @endif
                            </td>
                            <td>
                               <a class="btn btn-info" href="{{ route('users.show',$user->id) }}">Show</a>
                               <a class="btn btn-primary" href="{{ route('users.edit',$user->id) }}">Edit</a>
                                {!! Form::open(['method' => 'DELETE','route' => ['users.destroy', $user->id],'style'=>'display:inline']) !!}
                                    {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                                {!! Form::close() !!}
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
            <!--end::Table-->
        </div>
        <!--end: Card Body-->
    </div>


<!--end::Tables widget 14-->

</x-base-layout>