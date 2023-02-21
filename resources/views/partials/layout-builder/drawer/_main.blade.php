<!--begin::App layout builder-->
<div
	id="kt_app_layout_builder"
	class="bg-body"

	data-kt-drawer="true"
	data-kt-drawer-name="app-settings"
	data-kt-drawer-activate="true"
	data-kt-drawer-overlay="true"
	data-kt-drawer-width="{default:'300px', 'lg': '380px'}"
	data-kt-drawer-direction="end"
	data-kt-drawer-toggle="#kt_app_layout_builder_toggle"
	data-kt-drawer-close="#kt_app_layout_builder_close">
	<!--begin::Card-->
	<div class="card border-0 shadow-none rounded-0 w-100">
		{{ theme()->getView('partials/layout-builder/drawer/__header') }}

		<!--begin::Card body-->
		<div class="card-body position-relative" id="kt_app_layout_builder_body">
			<!--begin::Content-->
			<div id="kt_app_settings_content"
				class="position-relative scroll-y me-n5 pe-5"

				data-kt-scroll="true"
				data-kt-scroll-height="auto"
				data-kt-scroll-wrappers="#kt_app_layout_builder_body"
				data-kt-scroll-dependencies="#kt_app_layout_builder_header, #kt_app_layout_builder_footer"
				data-kt-scroll-offset="5px">

				<!--begin::Form-->
				<form class="form" method="POST" id="kt_app_layout_builder_form" action="{{ route('layout-builder.store') }}">
                    @csrf
                    <input type="hidden" id="kt_app_layout_builder_action" name="layout-builder[action]"/>
					{{ theme()->getView('partials/layout-builder/drawer/__form') }}
				</form>
				<!--end::Form-->
			</div>
			<!--end::Content-->
		</div>
		<!--end::Card body-->

		{{ theme()->getView('partials/layout-builder/drawer/__footer') }}
	</div>
	<!--end::Card-->
</div>
<!--end::App layout builder-->

{{ theme()->getView('partials/layout-builder/drawer/__toggle') }}
