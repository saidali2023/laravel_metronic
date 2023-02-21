<?php
return array(
    '' => array(
        'title'       => 'Dashboard',
        'description' => '#XRS-45670',
        'view'        => 'index',
        'layout'      => array(
            'page-title' => array(
                'description' => false,
                'breadcrumb'  => true,
            ),
        ),
        'assets'      => array(
            'vendors' => array('fullcalendar'),
            'layout'  => array(
                'js' => array(
                    'js/layout/toolbar.js',
                ),
            ),
        ),
    ),
);
