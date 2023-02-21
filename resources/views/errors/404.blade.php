<x-error-layout>

    <!--begin::Wrapper-->
    <div class="card card-flush w-lg-650px py-5">
        <div class="card-body py-15 py-lg-20">
            <!--begin::Title-->
            <h1 class="fw-bolder fs-2hx text-gray-900 mb-4">Oops!</h1>
            <!--end::Title-->
            <!--begin::Text-->
            <div class="fw-semibold fs-6 text-gray-500 mb-7">{{ $exception->getMessage() }}</div>
            <!--end::Text-->
            <!--begin::Illustration-->
            <div class="mb-3">
                <img src="{{ asset(theme()->getMediaUrlPath() . 'auth/404-error.png') }}" class="mw-100 mh-300px theme-light-show" alt="">
                <img src="{{ asset(theme()->getMediaUrlPath() . 'auth/404-error-dark.png') }}" class="mw-100 mh-300px theme-dark-show" alt="">
            </div>
            <!--end::Illustration-->
            <!--begin::Link-->
            <div class="mb-0">
                <a href="/" class="btn btn-sm btn-primary">Return Home</a>
            </div>
            <!--end::Link-->
        </div>
    </div>
    <!--end::Wrapper-->

</x-error-layout>
