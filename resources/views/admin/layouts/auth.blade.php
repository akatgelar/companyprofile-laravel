<!doctype html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin {{ $setting['name'] }}</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="{{ asset('/' . $setting['favicon']) }}">

    <!-- Library / Plugin Css Build -->
    <link rel="stylesheet" href="{{ asset('assets/assets/css/core/libs.min.css') }}">


    <!-- Hope Ui Design System Css -->
    <link rel="stylesheet" href="{{ asset('assets/assets/css/hope-ui.min.css?v=4.0.0') }}">

    <!-- Custom Css -->
    <link rel="stylesheet" href="{{ asset('assets/assets/css/custom.min.css?v=4.0.0') }}">

    <!-- Dark Css -->
    <link rel="stylesheet" href="{{ asset('assets/assets/css/dark.min.css') }}">

    <!-- Customizer Css -->
    <link rel="stylesheet" href="{{ asset('assets/assets/css/customizer.min.css') }}">

    <!-- RTL Css -->
    <link rel="stylesheet" href="{{ asset('assets/assets/css/rtl.min.css') }}">


</head>

<body class=" " data-bs-spy="scroll" data-bs-target="#elements-section" data-bs-offset="0" tabindex="0">
    <!-- loader Start -->
    {{-- <div id="loading">
        <div class="loader simple-loader">
            <div class="loader-body">
            </div>
        </div>
    </div> --}}
    <div class="loader"></div>
    <!-- loader END -->

    @yield('content')

    <!-- Library Bundle Script -->
    <script src="{{ asset('assets/assets/js/core/libs.min.js') }}"></script>

    <!-- External Library Bundle Script -->
    <script src="{{ asset('assets/assets/js/core/external.min.js') }}"></script>

    <!-- Widgetchart Script -->
    <script src="{{ asset('assets/assets/js/charts/widgetcharts.js') }}"></script>

    <!-- mapchart Script -->
    <script src="{{ asset('assets/assets/js/charts/vectore-chart.js') }}"></script>
    <script src="{{ asset('assets/assets/js/charts/dashboard.js') }}"></script>

    <!-- fslightbox Script -->
    <script src="{{ asset('assets/assets/js/plugins/fslightbox.js') }}"></script>

    <!-- Settings Script -->
    <script src="{{ asset('assets/assets/js/plugins/setting.js') }}"></script>

    <!-- Slider-tab Script -->
    <script src="{{ asset('assets/assets/js/plugins/slider-tabs.js') }}"></script>

    <!-- Form Wizard Script -->
    <script src="{{ asset('assets/assets/js/plugins/form-wizard.js') }}"></script>

    <!-- AOS Animation Plugin-->

    <!-- App Script -->
    <script src="{{ asset('assets/assets/js/hope-ui.js') }}" defer></script>


</body>

</html>
