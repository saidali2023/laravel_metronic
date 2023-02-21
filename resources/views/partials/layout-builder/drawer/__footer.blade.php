<!--begin::Card footer-->
<div class="card-footer border-0 d-flex gap-3 pb-9 pt-0" id="kt_app_layout_builder_footer">
    <button type="button" id="kt_app_layout_builder_preview" class="btn btn-primary flex-grow-1 fw-semibold">
        {{ theme()->getView('partials/general/_button-indicator', array('label' => 'Preview')) }}
    </button>

    <button type="button" id="kt_app_layout_builder_reset"  class="btn btn-light flex-grow-1 fw-semibold">
        {{ theme()->getView('partials/general/_button-indicator', array('label' => 'Reset')) }}
    </button>
</div>
<!--end::Card footer-->
