<!--begin::Card header-->
<div class="card-header bgi-position-y-bottom bgi-position-x-end bgi-size-cover bgi-no-repeat rounded-0 border-0 py-4" id="kt_app_layout_builder_header"
style="background-image:url('{{ asset(theme()->getMediaUrlPath() . 'misc/layout/header-bg.jpg') }}')">
    <!--begin::Card title-->
    <h3 class="card-title fs-3 fw-bold text-white flex-column m-0">
        {{ theme()->getProductName() }} Builder
        <small class="text-white opacity-50 fs-7 fw-semibold pt-1">Get your product deeply customized</small>
    </h3>
    <!--end::Card title-->

    <!--begin::Card toolbar-->
    <div class="card-toolbar">
        <button type="button" class="btn btn-sm btn-icon bg-white bg-opacity-25 btn-color-white p-0 w-20px h-20px rounded-1" id="kt_app_layout_builder_close">
            {!! theme()->getSvgIcon("icons/duotune/arrows/arr061.svg", "svg-icon-3") !!}
        </button>
    </div>
    <!--end::Card toolbar-->
</div>
<!--end::Card header-->
