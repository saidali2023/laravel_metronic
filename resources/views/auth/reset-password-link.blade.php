<!-- <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
		

					@if(session()->has('message'))
				                {{Session::get('message')}}
				            @endif

				            @if(Session::has('errorss'))				              	
				               <span class="text-danger">{{Session::get('errorss')}}</span>
				            @endif 
				            <br><br>
							<form class="form-horizontal form-simple"  novalidate method="POST" action="{{url('api/reset-user-password-post')}}">
                       				 @csrf
								<input type="hidden" name="token" value="{{ $token }}">
								<div class="form-group">
									
									<div style="position:relative" id="eye-password-0">
										<label for="email">new password</label>
										<input  type="password" class="form-control"  name="password"  style="padding-right: 60px;">										
							    	</div>

							    
								   
								</div>
								<div class="form-group">
									
									<div style="position:relative" id="eye-password-0">
										<label for="email">confirmation password</label>
										<input  type="password" class="form-control"  name="confirm_password"  style="padding-right: 60px;">										
							    	</div>

								   
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">{{__('home.save change')}} </button>
								</div>
								
							</form>
</body>
</html> -->

<x-auth-layout>

    <!--begin::Signup Form-->
    <form class="form w-100 " novalidate="novalidate" id="kt_password_reset_form" method="POST" action="{{url('api/reset-user-password-post')}}">
    @csrf

        <!-- Password Reset Token -->
        <input type="hidden" name="token" value="{{ $token }}">

        <!--begin::Heading-->
        <div class="text-center mb-11">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder mb-3">Update Your Password</h1>
            <!--end::Title-->
            <!--begin::Subtitle-->
            <div class="text-gray-500 fw-semibold fs-6">This is a secure area of the application. Please confirm your password before continuing</div>
            <!--end::Subtitle=-->
        </div>
        <!--begin::Heading-->

        <!--begin::Input group=-->
        <!-- <div class="fv-row mb-8 fv-plugins-icon-container fv-plugins-bootstrap5-row-valid">
            <input type="text" placeholder="Email" name="email" autocomplete="off" class="form-control bg-transparent">
        </div> -->
        <!--begin::Input group-->
        <div class="fv-row mb-8 fv-plugins-icon-container" data-kt-password-meter="true">
            <!--begin::Wrapper-->
            <div class="mb-1">
                <!--begin::Input wrapper-->
                <div class="position-relative mb-3">
                    <input class="form-control bg-transparent" type="password" placeholder="Password" name="password" autocomplete="off">
                    <span class="btn btn-sm btn-icon position-absolute translate-middle top-50 end-0 me-n2" data-kt-password-meter-control="visibility">
                        <i class="bi bi-eye-slash fs-2"></i>
                        <i class="bi bi-eye fs-2 d-none"></i>
                    </span>
                </div>
                <!--end::Input wrapper-->
                <!--begin::Meter-->
                <div class="d-flex align-items-center mb-3" data-kt-password-meter-control="highlight">
                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2 active"></div>
                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2"></div>
                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2"></div>
                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px"></div>
                </div>
                <!--end::Meter-->
            </div>
            <!--end::Wrapper-->
            <!--begin::Hint-->
            <div class="text-muted">Use 8 or more characters with a mix of letters, numbers &amp; symbols.</div>
            <!--end::Hint-->
        </div>
        <!--end::Input group=-->
        <!--end::Input group=-->
        <div class="fv-row mb-8 fv-plugins-icon-container">
            <!--begin::Repeat Password-->
            <input placeholder="Repeat Password" name="confirm_password" type="password" autocomplete="off" class="form-control bg-transparent">
            <!--end::Repeat Password-->
        </div>
        <!--end::Input group=-->
        <!--begin::Submit button-->
        <div class="d-grid mb-10">
            <button type="submit" id="kt_sign_up_submit" class="btn btn-primary">
                @include('partials.general._button-indicator')
            </button>
        </div>
        <!--end::Submit button-->
        <div></div>
    </form>
    <!--end::Signup Form-->

</x-auth-layout>
