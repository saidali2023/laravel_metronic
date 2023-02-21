<?php

namespace App\Http\Controllers\Documentation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LayoutBuilderController extends Controller
{
    public function store(Request $request)
    {
        $config = $request->get('layout-builder');

        if (isset($config['layout']) && $config['layout'] === 'light-sidebar') {
            setcookie('layout', $config['layout'], time() + (86400 * 30), '/');
        } else {
            unset($_COOKIE['layout']);
            setcookie('layout', null, -1, '/');
        }

        if (isset($config['rtl']) && $config['rtl'] === 'true') {
            setcookie('rtl', true, time() + (86400 * 30), '/');
        } else {
            unset($_COOKIE['rtl']);
            setcookie('rtl', null, -1, '/');
        }
    }
}
