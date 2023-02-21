<?php
    $compact = isset($params['compact']) ? $params['compact'] : false;
?>
<!--begin::Timeline-->
<div class="card">
    <!--begin::Card head-->
    <div class="card-header card-header-stretch">
        <!--begin::Title-->
        <div class="card-title d-flex align-items-center">
            <?{!! theme()->getSvgIcon("icons/duotune/general/gen014.svg", "svg-icon-1 svg-icon-primary me-3 lh-0") !!}

            <h3 class="fw-bold m-0 text-gray-800">Jan 23, <?php echo date("Y")?></h3>
        </div>
        <!--end::Title-->

        <!--begin::Toolbar-->
        <div class="card-toolbar m-0">
            <!--begin::Tab nav-->
            <ul class="nav nav-tabs nav-line-tabs nav-stretch fs-6 border-0 fw-bold" role="tablist">
                <li class="nav-item" role="presentation">
                    <a id="kt_activity_today_tab" class="nav-link justify-content-center text-active-gray-800 active" data-bs-toggle="tab" role="tab" href="#kt_activity_today">
                        Today
                    </a>
                </li>
                <li class="nav-item" role="presentation">
                    <a id="kt_activity_week_tab" class="nav-link justify-content-center text-active-gray-800" data-bs-toggle="tab" role="tab" href="#kt_activity_week">
                        Week
                    </a>
                </li>
                <li class="nav-item" role="presentation">
                    <a id="kt_activity_month_tab" class="nav-link justify-content-center text-active-gray-800" data-bs-toggle="tab" role="tab" href="#kt_activity_month">
                        Month
                    </a>
                </li>
                <li class="nav-item" role="presentation">
                    <a id="kt_activity_year_tab" class="nav-link justify-content-center text-active-gray-800 text-hover-gray-800" data-bs-toggle="tab" role="tab" href="#kt_activity_year">
                        <?php echo date("Y")?>
                    </a>
                </li>
            </ul>
            <!--end::Tab nav-->
        </div>
        <!--end::Toolbar-->
    </div>
    <!--end::Card head-->

    <!--begin::Card body-->
    <div class="card-body">
        <!--begin::Tab Content-->
        <div class="tab-content">
            <!--begin::Tab panel-->
            <div id="kt_activity_today" class="card-body p-0 tab-pane fade show active" role="tabpanel" aria-labelledby="kt_activity_today_tab">
                {{ theme()->getView('pages/pages/user-profile/activity/timeline/tabs/_today', array('compact' => $compact)) }}
            </div>
            <!--end::Tab panel-->

            <!--begin::Tab panel-->
            <div id="kt_activity_week" class="card-body p-0 tab-pane fade show" role="tabpanel" aria-labelledby="kt_activity_week_tab">
                {{ theme()->getView('pages/pages/user-profile/activity/timeline/tabs/_week', array('compact' => $compact)) }}
            </div>
            <!--end::Tab panel-->

            <!--begin::Tab panel-->
            <div id="kt_activity_month" class="card-body p-0 tab-pane fade show" role="tabpanel" aria-labelledby="kt_activity_month_tab">
                {{ theme()->getView('pages/pages/user-profile/activity/timeline/tabs/_month', array('compact' => $compact)) }}
            </div>
            <!--end::Tab panel-->

            <!--begin::Tab panel-->
            <div id="kt_activity_year" class="card-body p-0 tab-pane fade show" role="tabpanel" aria-labelledby="kt_activity_year_tab">
                {{ theme()->getView('pages/pages/user-profile/activity/timeline/tabs/_year', array('compact' => $compact)) }}
            </div>
            <!--end::Tab panel-->
        </div>
        <!--end::Tab Content-->
    </div>
    <!--end::Card body-->
</div>
<!--end::Timeline-->
