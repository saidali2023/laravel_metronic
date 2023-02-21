<?php
    $compact = isset($params['compact']) ? $params['compact'] : false;
?>
<!--begin::Timeline-->
<div class="timeline">
    {{ theme()->getView('pages/pages/user-profile/activity/timeline/items/_item-1', array('compact' => $compact)) }}

    {{ theme()->getView('pages/pages/user-profile/activity/timeline/items/_item-2', array('compact' => $compact)) }}

    {{ theme()->getView('pages/pages/user-profile/activity/timeline/items/_item-3', array('compact' => $compact)) }}

    {{ theme()->getView('pages/pages/user-profile/activity/timeline/items/_item-4', array('compact' => $compact)) }}

    {{ theme()->getView('pages/pages/user-profile/activity/timeline/items/_item-5', array('compact' => $compact)) }}

    {{ theme()->getView('pages/pages/user-profile/activity/timeline/items/_item-6', array('compact' => $compact)) }}

    {{ theme()->getView('pages/pages/user-profile/activity/timeline/items/_item-7', array('compact' => $compact)) }}

    {{ theme()->getView('pages/pages/user-profile/activity/timeline/items/_item-8', array('compact' => $compact)) }}
</div>
<!--end::Timeline-->
