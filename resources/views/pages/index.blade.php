<x-base-layout>

    <!--begin::Row-->
    <div class="row g-5 g-xl-10 mb-5 mb-xl-10">
        <!--begin::Col-->
        <div class="col-md-6 col-lg-6 col-xl-6 col-xxl-3 mb-md-5 mb-xl-10">
            {{ theme()->getView('partials/widgets/cards/_widget-20') }}
            {{ theme()->getView('partials/widgets/cards/_widget-7') }}
        </div>
        <!--end::Col-->
        <!--begin::Col-->
        <div class="col-md-6 col-lg-6 col-xl-6 col-xxl-3 mb-md-5 mb-xl-10">
            {{ theme()->getView('partials/widgets/cards/_widget-17') }}
            {{ theme()->getView('partials/widgets/lists/_widget-26') }}
        </div>
        <!--end::Col-->
        <!--begin::Col-->
        <div class="col-xxl-6">
            {{ theme()->getView('partials/widgets/engage/_widget-10') }}
        </div>
        <!--end::Col-->
    </div>
    <!--end::Row-->
    <!--begin::Row-->
    <div class="row gx-5 gx-xl-10">
        <!--begin::Col-->
        <div class="col-xxl-6 mb-5 mb-xl-10">
            {{ theme()->getView('partials/widgets/charts/_widget-8') }}
        </div>
        <!--end::Col-->
        <!--begin::Col-->
        <div class="col-xl-6 mb-5 mb-xl-10">
            {{ theme()->getView('partials/widgets/tables/_widget-16') }}
        </div>
        <!--end::Col-->
    </div>
    <!--end::Row-->
    <!--begin::Row-->
    <div class="row g-5 g-xl-10 mb-5 mb-xl-10">
        <!--begin::Col-->
        <div class="col-xxl-6">
            {{ theme()->getView('partials/widgets/cards/_widget-18') }}
        </div>
        <!--end::Col-->
        <!--begin::Col-->
        <div class="col-xl-6">
            {{ theme()->getView('partials/widgets/charts/_widget-36') }}
        </div>
        <!--end::Col-->
    </div>
    <!--end::Row-->
    <!--begin::Row-->
    <div class="row g-5 g-xl-10 mb-5 mb-xl-10">
        <!--begin::Col-->
        <div class="col-xl-4">
            {{ theme()->getView('partials/widgets/charts/_widget-35') }}
        </div>
        <!--end::Col-->
        <!--begin::Col-->
        <div class="col-xl-8">
            {{ theme()->getView('partials/widgets/tables/_widget-14') }}
        </div>
        <!--end::Col-->
    </div>
    <!--end::Row-->
    <!--begin::Row-->
    <div class="row gx-5 gx-xl-10">
        <!--begin::Col-->
        <div class="col-xl-4">
            {{ theme()->getView('partials/widgets/charts/_widget-31') }}
        </div>
        <!--end::Col-->
        <!--begin::Col-->
        <div class="col-xl-8">
            {{ theme()->getView('partials/widgets/charts/_widget-24') }}
        </div>
        <!--end::Col-->
    </div>
    <!--end::Row-->

</x-base-layout>
