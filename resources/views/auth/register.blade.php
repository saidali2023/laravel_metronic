<x-auth-layout>

    <!--begin::Signup Form-->
    <form class="form w-100 " novalidate="novalidate" id="kt_sign_up_form" action="{{ theme()->getPageUrl('register') }}">
    @csrf
    <!--begin::Heading-->
        <div class="text-center mb-11">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder mb-3">Sign Up</h1>
            <!--end::Title-->
            <!--begin::Subtitle-->
            <div class="text-gray-500 fw-semibold fs-6">Your Social Campaigns</div>
            <!--end::Subtitle=-->
        </div>
        <!--begin::Heading-->
        <!--begin::Login options-->
        <div class="row g-3 mb-9">
            <!--begin::Col-->
            <div class="col-md-6">
                <!--begin::Google link=-->
                <a href="{{ url('/auth/redirect/google') }}?redirect_uri={{ url()->previous() }}" class="btn btn-flex btn-outline btn-text-gray-700 btn-active-color-primary bg-state-light flex-center text-nowrap w-100">
                    <img alt="Logo" src="{{ asset(theme()->getMediaUrlPath() . 'svg/brand-logos/google-icon.svg') }}" class="h-15px me-3">Sign in with Google</a>
                <!--end::Google link=-->
            </div>
            <!--end::Col-->
            <!--begin::Col-->
            <div class="col-md-6">
                <!--begin::Google link=-->
                <a href="{{ url('/auth/redirect/apple') }}?redirect_uri={{ url()->previous() }}" class="btn btn-flex btn-outline btn-text-gray-700 btn-active-color-primary bg-state-light flex-center text-nowrap w-100">
                    <img alt="Logo" src="{{ asset(theme()->getMediaUrlPath() . 'svg/brand-logos/apple-black.svg') }}" class="theme-light-show h-15px me-3">
                    <img alt="Logo" src="{{ asset(theme()->getMediaUrlPath() . 'svg/brand-logos/apple-black-dark.svg') }}" class="theme-dark-show h-15px me-3">Sign in with Apple</a>
                <!--end::Google link=-->
            </div>
            <!--end::Col-->
        </div>
        <!--end::Login options-->
        <!--begin::Separator-->
        <div class="separator separator-content my-14">
            <span class="w-125px text-gray-500 fw-semibold fs-7">Or with email</span>
        </div>
        <!--end::Separator-->


        <!--begin::Input group-->
        <div class="row fv-row mb-7">
            <!--begin::Col-->
            <div class="col-xl-6">
                <input class="form-control form-control-lg form-control-solid" type="text" name="first_name" autocomplete="off" value="{{ old('first_name') }}" placeholder="First Name"/>
            </div>
            <!--end::Col-->

            <!--begin::Col-->
            <div class="col-xl-6">
                <input class="form-control form-control-lg form-control-solid" type="text" name="last_name" autocomplete="off" value="{{ old('last_name') }}" placeholder="Last Name"/>
            </div>
            <!--end::Col-->
        </div>
        <!--end::Input group-->


        <!--begin::Input group=-->
        <div class="fv-row mb-8 fv-plugins-icon-container fv-plugins-bootstrap5-row-valid">
            <!--begin::Email-->
            <input type="text" placeholder="Email" name="email" autocomplete="off" class="form-control bg-transparent">
            <!--end::Email-->
        </div>
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
            <input placeholder="Repeat Password" name="password_confirmation" type="password" autocomplete="off" class="form-control bg-transparent">
            <!--end::Repeat Password-->
        </div>
        <!--end::Input group=-->
        <!--begin::Accept-->
        <div class="fv-row mb-8 fv-plugins-icon-container">
            <label class="form-check form-check-inline">
                <input class="form-check-input" type="checkbox" name="toc" value="1">
                <span class="form-check-label fw-semibold text-gray-700 fs-base ms-1">I Accept the
                    <a href="#" class="ms-1 link-primary">Terms</a></span>
            </label>
        </div>
        <!--end::Accept-->
        <!--begin::Submit button-->
        <div class="d-grid mb-10">
            <button type="submit" id="kt_sign_up_submit" class="btn btn-primary">
                @include('partials.general._button-indicator')
            </button>
        </div>
        <!--end::Submit button-->
        <!--begin::Sign up-->
        <div class="text-gray-500 text-center fw-semibold fs-6">Already have an Account?
            <a href="{{ theme()->getPageUrl('login') }}" class="link-primary fw-semibold">Sign in</a></div>
        <!--end::Sign up-->
        <div></div>
    </form>
    <!--end::Signup Form-->

</x-auth-layout>
