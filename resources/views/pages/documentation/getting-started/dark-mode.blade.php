<x-base-layout>

    <!--begin::Section-->
    <div class="pb-10">
        <!--begin::Heading-->
        <h1 class="anchor fw-bold mb-5" id="overview" data-kt-scroll-offset="50">
            <a href="#overview"></a>Overview</h1>
        <!--end::Heading-->
        <!--begin::Block-->
        <div class="py-5">
            <p class="mb-0">Metronic supports dynamic theme mode switching to both
                <b>Dark</b>&nbsp; and
                <b>Light</b>&nbsp; modes by storing the user's preference in the browser's local storage or user'f profile in the server side database.</p>
        </div>
        <!--end::Block-->
    </div>
    <!--end::Section-->

    <!--begin::Section-->
    <div class="py-10">
        <!--begin::Heading-->
        <h1 class="anchor fw-bold mb-5" id="quick-setup" data-kt-scroll-offset="50">
            <a href="#quick-setup"></a>Quick Setup</h1>
        <!--end::Heading-->
        <!--begin::Block-->
        <div class="py-5">The theme mode can be set through
            <code>data-bs-theme-mode</code>attribute on the page's root &lt;html&gt; tag. The theme mode accepts
            <code>dark</code>,
            <code>light</code>or
            <code>system</code>. If this attribute is not set then user's selected theme mode will be stored in the browser storage.
        </div>
        <!--end::Block-->
        <!--begin::Code-->
        <div class="py-5 mb-5">
            <!--begin::Highlight-->
            <div class="highlight">
                <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                <div class="highlight-code">
													<pre class="language-html" tabindex="0"><code class="language-html"><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>html</span> <span class="token attr-name">data-bs-theme-mode</span><span
                                                                    class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>light<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
....
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>html</span><span class="token punctuation">&gt;</span></span></code></pre>
                </div>
            </div>
            <!--end::Highlight-->
        </div>
        <!--end::Code-->
        <!--begin::Information-->
        <div class="d-flex align-items-center rounded py-5 px-5 bg-light-info">
            <!--begin::Icon-->
            <!--begin::Svg Icon | path: icons/duotune/general/gen044.svg-->
            <span class="svg-icon svg-icon-3x svg-icon-info me-5">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="10" fill="currentColor"></rect>
                    <rect x="11" y="14" width="7" height="2" rx="1" transform="rotate(-90 11 14)" fill="currentColor"></rect>
                    <rect x="11" y="17" width="2" height="2" rx="1" transform="rotate(-90 11 17)" fill="currentColor"></rect>
                </svg>
            </span>
            <!--end::Svg Icon-->
            <!--end::Icon-->
            <!--begin::Description-->
            <div class="text-gray-700 fw-bold fs-6">Refer to
                <code>src/js/layout/theme-mode-user.js</code>script to submit the selected theme mode value to backend for saving it in database so users always use prefered theme mode when logged in from different devices.
            </div>
            <!--end::Description-->
        </div>
        <!--end::Information-->
        <!--begin::Block-->
        <div class="pt-10 pb-5">The theme mode can be set individually for particular page blocks despite having different mode for the page:</div>
        <!--end::Block-->
        <!--begin::Block-->
        <div class="py-5">
            <div class="rounded border p-10">
                <div class="row">
                    <div class="col-lg-6" data-bs-theme="light">
                        <div class="card card-bordered">
                            <!--begin::Body-->
                            <div class="card-body">
                                <!--begin::Item-->
                                <div class="d-flex flex-stack">
                                    <!--begin::Wrapper-->
                                    <div class="d-flex align-items-center me-3">
                                        <!--begin::Icon-->
                                        <img src="{{ asset(theme()->getMediaUrlPath() . 'svg/brand-logos/instagram-2-1.svg') }}" class="me-3 w-30px" alt="">
                                        <!--end::Icon-->
                                        <!--begin::Section-->
                                        <div class="flex-grow-1">
                                            <a href="#" class="text-gray-800 text-hover-primary fs-5 fw-bold lh-0">Instagram</a>
                                            <span class="text-gray-400 fw-semibold d-block fs-6">Social Media</span>
                                        </div>
                                        <!--end::Section-->
                                    </div>
                                    <!--end::Wrapper-->
                                    <!--begin::Statistics-->
                                    <div class="d-flex align-items-center w-100 mw-125px">
                                        <!--begin::Progress-->
                                        <div class="progress h-6px w-100 me-2 bg-light-warning">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 87%" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <!--end::Progress-->
                                        <!--begin::Value-->
                                        <span class="text-gray-400 fw-semibold">87%</span>
                                        <!--end::Value-->
                                    </div>
                                    <!--end::Statistics-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                    </div>
                    <div class="col-lg-6" data-bs-theme="dark">
                        <div class="card card-bordered">
                            <!--begin::Body-->
                            <div class="card-body">
                                <!--begin::Item-->
                                <div class="d-flex flex-stack">
                                    <!--begin::Wrapper-->
                                    <div class="d-flex align-items-center me-3">
                                        <!--begin::Icon-->
                                        <img src="{{ asset(theme()->getMediaUrlPath() . 'svg/brand-logos/instagram-2-1.svg') }}" class="me-3 w-30px" alt="">
                                        <!--end::Icon-->
                                        <!--begin::Section-->
                                        <div class="flex-grow-1">
                                            <a href="#" class="text-gray-800 text-hover-primary fs-5 fw-bold lh-0">Instagram</a>
                                            <span class="text-gray-400 fw-semibold d-block fs-6">Social Media</span>
                                        </div>
                                        <!--end::Section-->
                                    </div>
                                    <!--end::Wrapper-->
                                    <!--begin::Statistics-->
                                    <div class="d-flex align-items-center w-100 mw-125px">
                                        <!--begin::Progress-->
                                        <div class="progress h-6px w-100 me-2 bg-light-warning">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 87%" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <!--end::Progress-->
                                        <!--begin::Value-->
                                        <span class="text-gray-400 fw-semibold">87%</span>
                                        <!--end::Value-->
                                    </div>
                                    <!--end::Statistics-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Body-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--end::Block-->
        <!--begin::Code-->
        <div class="py-5">
            <!--begin::Highlight-->
            <div class="highlight">
                <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                <div class="highlight-code">
													<pre class="language-html" tabindex="0"><code class="language-html"><span class="token comment">&lt;!-- Dark mode --&gt;</span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">data-bs-theme</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span
            class="token punctuation">"</span>dark<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
....
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>

<span class="token comment">&lt;!-- Light mode --&gt;</span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">data-bs-theme</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span
            class="token punctuation">"</span>light<span class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
....
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span></code></pre>
                </div>
            </div>
            <!--end::Highlight-->
        </div>
        <!--end::Code-->
    </div>
    <!--end::Section-->

    <!--begin::Section-->
    <div class="py-10">
        <!--begin::Heading-->
        <h1 class="anchor fw-bold mb-5" id="initialization" data-kt-scroll-offset="50">
            <a href="#initialization"></a>Initialization</h1>
        <!--end::Heading-->
        <!--begin::Block-->
        <div class="py-5">To enable remembering user's selected theme mode in the browser storage the below inline Javascript code must be placed as the first child of the body element so the code is executed right after the body element's creation in the DOM. The default theme
            mode
            <code>defaultThemeMode</code>variable can be set to
            <code>system</code>,
            <code>dark</code>or
            <code>light</code>:
        </div>
        <!--end::Block-->
        <!--begin::Code-->
        <div class="py-5">
            <code>resources/views/partials/theme-mode/_init.blade.php</code>

            <?php util()->highlight('if (document.documentElement) {
    const defaultThemeMode = "system";
    const name = document.body.getAttribute("data-kt-name");
    let themeMode = localStorage.getItem("kt_" + (name !== null ? name + "_" : "") + "theme_mode_value");
    if (themeMode === null) {
        if (defaultThemeMode === "system") {
            themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light";
        } else {
            themeMode = defaultThemeMode;
        }
    }
    document.documentElement.setAttribute("data-bs-theme", themeMode);
}', 'js'); ?>
        </div>
        <!--end::Code-->
    </div>
    <!--end::Section-->

    <!--begin::Section-->
    <div class="py-10">
        <!--begin::Heading-->
        <h1 class="anchor fw-bold mb-5" id="switch-menu" data-kt-scroll-offset="50">
            <a href="#switch-menu"></a>Switch Menu</h1>
        <!--end::Heading-->
        <!--begin::Block-->
        <div class="py-5">The theme mode can be switched through unified Theme Mode Switcher opened by the sun or moon icons click in the page's header block. The theme mode switch feature is handled by
            <code>KTThemeMode</code>javascript class and allows saving user's preference in the browser's local storage.
        </div>
        <!--end::Block-->
    </div>
    <!--end::Section-->

    <!--begin::Section-->
    <div class="py-10">
        <!--begin::Heading-->
        <h1 class="anchor fw-bold mb-5" id="flip-elements" data-kt-scroll-offset="50">
            <a href="#flip-elements"></a>Flip Elements</h1>
        <!--end::Heading-->
        <!--begin::Block-->
        <div class="py-5">Use
            <code>.theme-light-show</code>and
            <code>.theme-dark-show</code>utility classes to flip an element for particular theme mode:
        </div>
        <!--end::Block-->
        <!--begin::Code-->
        <div class="py-5 mb-5">
            <!--begin::Highlight-->
            <div class="highlight">
                <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                <div class="highlight-code">
													<pre class="language-html" tabindex="0"><code class="language-html"><span class="token comment">&lt;!-- Show for light mode only--&gt;</span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>theme-light-show<span
            class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
....
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span>

<span class="token comment">&lt;!-- Show for dark mode only--&gt;</span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>theme-dark-show<span
            class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
....
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span></code></pre>
                </div>
            </div>
            <!--end::Highlight-->
        </div>
        <!--end::Code-->
    </div>
    <!--end::Section-->

    <!--begin::Section-->
    <div class="py-10">
        <!--begin::Heading-->
        <h1 class="anchor fw-bold mb-5" id="flip-images" data-kt-scroll-offset="50">
            <a href="#flip-images"></a>Flip Images</h1>
        <!--end::Heading-->
        <!--begin::Block-->
        <div class="py-5">Use
            <code>.theme-light-show</code>and
            <code>.theme-dark-show</code>utility classes to flip image for required mode:
        </div>
        <!--end::Block-->
        <!--begin::Code-->
        <div class="py-5 mb-5">
            <!--begin::Highlight-->
            <div class="highlight">
                <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                <div class="highlight-code">
													<pre class="language-html" tabindex="0"><code class="language-html"><span class="token comment">&lt;!-- Show for light mode only --&gt;</span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>img</span> <span class="token attr-name">alt</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>Logo<span
            class="token punctuation">"</span></span> <span class="token attr-name">src</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>assets/logos/default.svg<span
            class="token punctuation">"</span></span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>theme-light-show h-35px<span
            class="token punctuation">"</span></span><span class="token punctuation">/&gt;</span></span>

<span class="token comment">&lt;!-- Show for dark mode light--&gt;</span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>img</span> <span class="token attr-name">alt</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>Logo<span
            class="token punctuation">"</span></span> <span class="token attr-name">src</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>assets/logos/default-dark.svg<span
            class="token punctuation">"</span></span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>theme-dark-show h-35px<span
            class="token punctuation">"</span></span><span class="token punctuation">/&gt;</span></span></code></pre>
                </div>
            </div>
            <!--end::Highlight-->
        </div>
        <!--end::Code-->
        <!--begin::Block-->
        <div class="py-5">Use a custom class defined inside
            <code>&lt;style&gt;</code>tag for background image flip support:
        </div>
        <!--end::Block-->
        <!--begin::Code-->
        <div class="py-5 mb-5">
            <!--begin::Highlight-->
            <div class="highlight">
                <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                <div class="highlight-code">
													<pre class="language-html" tabindex="0"><code class="language-html"><span class="token comment">&lt;!--begin::Image placeholder--&gt;</span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>style</span><span class="token punctuation">&gt;</span></span><span class="token style"><span class="token language-css">
 <span class="token selector">.image-placeholder</span> <span class="token punctuation">{</span>
  <span class="token property">background-image</span><span class="token punctuation">:</span> <span class="token url"><span class="token function">url</span><span class="token punctuation">(</span><span class="token string url">'assets/example.svg'</span><span
                                                                            class="token punctuation">)</span></span><span class="token punctuation">;</span>
 <span class="token punctuation">}</span>

 <span class="token selector">[data-bs-theme="dark"] .image-placeholder</span> <span class="token punctuation">{</span>
  <span class="token property">background-image</span><span class="token punctuation">:</span> <span class="token url"><span class="token function">url</span><span class="token punctuation">(</span><span class="token string url">'assets/example-dark.svg'</span><span
                                                                            class="token punctuation">)</span></span><span class="token punctuation">;</span>
 <span class="token punctuation">}</span>
</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>style</span><span class="token punctuation">&gt;</span></span>
<span class="token comment">&lt;!--end::Image placeholder--&gt;</span>

<span class="token comment">&lt;!-- Dark and light background image support --&gt;</span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>div</span> <span class="token attr-name">class</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">"</span>image-placeholder<span
            class="token punctuation">"</span></span><span class="token punctuation">&gt;</span></span>
...
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>div</span><span class="token punctuation">&gt;</span></span></code></pre>
                </div>
            </div>
            <!--end::Highlight-->
        </div>
        <!--end::Code-->
    </div>
    <!--end::Section-->

    <!--begin::Section-->
    <div class="py-10">
        <!--begin::Heading-->
        <h1 class="anchor fw-bold mb-5" id="api-methods" data-kt-scroll-offset="50">
            <a href="#api-methods"></a>API Methods</h1>
        <!--end::Heading-->
        <!--begin::Block-->
        <div class="py-5">The API methods of
            <code>KTThemeMode</code>class defined in
            <code>src/js/layout/theme-mode.js</code>:
        </div>
        <!--end::Block-->
        <!--begin::Table-->
        <div class="pt-2 pb-10">
            <!--begin::Table wrapper-->
            <div class="table-responsive border rounded">
                <!--begin::Table-->
                <table class="table table-striped mb-0 g-6">
                    <!--begin::Head-->
                    <thead>
                    <tr class="fs-4 fw-bold p-6">
                        <th class="min-w-300px">Name</th>
                        <th>Description</th>
                    </tr>
                    </thead>
                    <!--end::Head-->
                    <!--begin::Body-->
                    <tbody>
                    <tr>
                        <td>
                            <code>getMode()</code>
                        </td>
                        <td>Returns current theme mode as string
                            <div class="pt-3">
                                <!--begin::Highlight-->
                                <div class="highlight">
                                    <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                                    <div class="highlight-code">
																		<pre class="language-javascript" tabindex="0"><code class="language-javascript"><span class="token comment">// Returns "dark" or "light" string value.</span>
<span class="token keyword">var</span> mode <span class="token operator">=</span> KTThemeMode<span class="token punctuation">.</span><span class="token function">getMode</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span
                                                                                    class="token punctuation">;</span></code></pre>
                                    </div>
                                </div>
                                <!--end::Highlight-->
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <code>getMenuMode()</code>
                        </td>
                        <td>Returns the theme switcher menu's current selection mode as string
                            <div class="pt-3">
                                <!--begin::Highlight-->
                                <div class="highlight">
                                    <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                                    <div class="highlight-code">
																		<pre class="language-javascript" tabindex="0"><code class="language-javascript"><span class="token comment">// Returns "dark", "light" or "system" string value.</span>
<span class="token keyword">var</span> mode <span class="token operator">=</span> KTThemeMode<span class="token punctuation">.</span><span class="token function">getMenuMode</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span
                                                                                    class="token punctuation">;</span></code></pre>
                                    </div>
                                </div>
                                <!--end::Highlight-->
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <code>getSystemMode()</code>
                        </td>
                        <td>Returns the browser's mode as string
                            <div class="pt-3">
                                <!--begin::Highlight-->
                                <div class="highlight">
                                    <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                                    <div class="highlight-code">
																		<pre class="language-javascript" tabindex="0"><code class="language-javascript"><span class="token comment">// Returns "dark" or "light" string value.</span>
<span class="token keyword">var</span> mode <span class="token operator">=</span> KTThemeMode<span class="token punctuation">.</span><span class="token function">getSystemMode</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span
                                                                                    class="token punctuation">;</span></code></pre>
                                    </div>
                                </div>
                                <!--end::Highlight-->
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <code>setMode(String mode)</code>
                        </td>
                        <td>Sets a mode to change the theme mode
                            <div class="pt-3">
                                <!--begin::Highlight-->
                                <div class="highlight">
                                    <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                                    <div class="highlight-code">
                                        <pre class="language-javascript" tabindex="0"><code class="language-javascript">KTThemeMode<span class="token punctuation">.</span><span class="token function">setMode</span><span class="token punctuation">(</span><span
                                                    class="token string">"dark"</span><span class="token punctuation">)</span><span class="token punctuation">;</span></code></pre>
                                    </div>
                                </div>
                                <!--end::Highlight-->
                            </div>
                        </td>
                    </tr>
                    </tbody>
                    <!--end::Body-->
                </table>
            </div>
        </div>
        <!--end::Table-->
    </div>
    <!--end::Section-->

    <!--begin::Section-->
    <div class="pt-10">
        <!--begin::Heading-->
        <h1 class="anchor fw-bold mb-5" id="api-events" data-kt-scroll-offset="50">
            <a href="#api-events"></a>API Events</h1>
        <!--end::Heading-->
        <!--begin::Block-->
        <div class="py-5">The API events of
            <code>KTThemeMode</code>class defined in
            <code>src/js/layout/theme-mode.js</code>:
        </div>
        <!--end::Block-->
        <!--begin::Table-->
        <div class="pt-2 pb-5">
            <!--begin::Table wrapper-->
            <div class="table-responsive border rounded">
                <!--begin::Table-->
                <table class="table table-striped mb-0 g-5">
                    <!--begin::Head-->
                    <thead>
                    <tr class="fs-4 fw-bold text-dark p-6">
                        <th class="min-w-300px">Event Type</th>
                        <th>Description</th>
                    </tr>
                    </thead>
                    <!--end::Head-->
                    <!--begin::Body-->
                    <tbody>
                    <tr>
                        <td>
                            <code>kt.thememode.init</code>
                        </td>
                        <td>This event fires on the theme mode initialization right after the page load.
                            <div class="pt-3">
                                <!--begin::Highlight-->
                                <div class="highlight">
                                    <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                                    <div class="highlight-code">
																		<pre class="language-javascript" tabindex="0"><code class="language-javascript"><span class="token comment">// Register an event handler</span>
<span class="token keyword">var</span> handlerId <span class="token operator">=</span> KTThemeMode<span class="token punctuation">.</span><span class="token function">on</span><span class="token punctuation">(</span><span class="token string">"kt.thememode.init"</span><span
                                                                                    class="token punctuation">,</span> <span class="token keyword">function</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span
                                                                                    class="token punctuation">{</span>
    console<span class="token punctuation">.</span><span class="token function">log</span><span class="token punctuation">(</span><span class="token string">"Initialized init:"</span> <span class="token operator">+</span> KTThemeMode<span class="token punctuation">.</span><span
                                                                                    class="token function">getMode</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span
                                                                                    class="token punctuation">;</span>
<span class="token punctuation">}</span><span class="token punctuation">)</span><span class="token punctuation">;</span></code></pre>
                                    </div>
                                </div>
                                <!--end::Highlight-->
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <code>kt.thememode.change</code>
                        </td>
                        <td>This event fires on previous navigation button click.
                            <div class="pt-3">
                                <!--begin::Highlight-->
                                <div class="highlight">
                                    <button class="highlight-copy btn" data-bs-toggle="tooltip" data-kt-initialized="1">copy</button>
                                    <div class="highlight-code">
																		<pre class="language-javascript" tabindex="0"><code class="language-javascript"><span class="token comment">// Register an event handler</span>
<span class="token keyword">var</span> handlerId <span class="token operator">=</span> KTThemeMode<span class="token punctuation">.</span><span class="token function">on</span><span class="token punctuation">(</span><span class="token string">"kt.thememode.change"</span><span
                                                                                    class="token punctuation">,</span> <span class="token keyword">function</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span
                                                                                    class="token punctuation">{</span>
    console<span class="token punctuation">.</span><span class="token function">log</span><span class="token punctuation">(</span><span class="token string">"Theme mode is changed:"</span> <span class="token operator">+</span> KTThemeMode<span
                                                                                    class="token punctuation">.</span><span class="token function">getMode</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span
                                                                                    class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

<span class="token comment">// Unregister the event handler after 10 seconds</span>
<span class="token function">setTimeout</span><span class="token punctuation">(</span><span class="token keyword">function</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
    KTThemeMode<span class="token punctuation">.</span><span class="token function">off</span><span class="token punctuation">(</span><span class="token string">"kt.thememode.change"</span><span class="token punctuation">,</span> handlerId<span
                                                                                    class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span><span class="token punctuation">,</span> <span class="token number">1000</span> <span class="token operator">*</span> <span class="token number">10</span><span class="token punctuation">)</span><span
                                                                                    class="token punctuation">;</span></code></pre>
                                    </div>
                                </div>
                                <!--end::Highlight-->
                            </div>
                        </td>
                    </tr>
                    </tbody>
                    <!--end::Body-->
                </table>
            </div>
        </div>
        <!--end::Table-->
    </div>
    <!--end::Section-->

</x-base-layout>
