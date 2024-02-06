<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>
      FeedBack Syste, | @yield('title')
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Nucleo Icons -->
    <link href="../uiassets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="../uiassets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="../uiassets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link id="pagestyle" href="../uiassets/css/soft-ui-dashboard.css?v=1.0.7" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <!-- Nepcha Analytics (nepcha.com) -->
    <!-- Nepcha is a easy-to-use web analytics. No cookies and fully compliant with GDPR, CCPA and PECR. -->
    <script defer data-site="YOUR_DOMAIN_HERE" src="https://api.nepcha.com/js/nepcha-analytics.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css" />
    {{-- <script src="../assets/plugins/global/plugins.bundle.js"></script> --}}
    <script src="../assets/plugins/smooth-scrollbar.min.js"></script>
    <script src="../assets/js/scripts.bundle.js"></script>

    <style>
        #videoElement {
            width: 400px;
            height: 300px;
            border: 1px solid black;
        }
    </style>
    @yield('css')
</head>
@php
    $topnav=false;
@endphp
<body class="g-sidenav-show  bg-gray-100">
    @if($topnav)
        @include('components.topnav')
    @else
    @include('components.sidenav')
    @endif
   
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
        @include('components.header')

        <div class="container-fluid py-4" style="height: calc(100vh - 115px);">
            @yield('content')
        </div>
        <footer class="footer pt-3  ">
            <div class="container-fluid">
                <div class="row align-items-center justify-content-lg-between">
                    <div class="col-lg-6 mb-lg-0 mb-4">
                        <div class="copyright text-center text-sm text-muted text-lg-start">
                            ©
                            <script>
                                document.write(new Date().getFullYear())
                            </script>,
                            made with <i class="fa fa-heart"></i> by
                            <a href="{{ route('dashboard') }}" class="font-weight-bold" target="_blank">Sajjad FeedBack System</a>
                            for a better web.
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </main>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
        @csrf
    </form>
    <!--   Core JS Files   -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script src="../uiassets/js/core/popper.min.js"></script>
    <script src="../uiassets/js/core/bootstrap.min.js"></script>
    <script src="../uiassets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../uiassets/js/plugins/smooth-scrollbar.min.js"></script>
    <script src="../uiassets/js/plugins/chartjs.min.js"></script>

    <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>
    <script>
        let navlink = document.querySelectorAll('.nav-link');
        const fromStorage = (action, key, value) => localStorage[action + 'Item'](key, value);
        navlink.forEach((link) => {
            const val = link.getAttribute('data-menu');
            const active = fromStorage('get', 'activeNav') || "dashboard";
            link.classList.toggle('active', active === val);
            link.addEventListener('click', () => {
                fromStorage('set', 'activeNav', val);
            })
        })
    </script>
    <script>
     const fileInput = document.querySelector('.inputimage');
        const imagePreview = document.querySelector(".previewimage");

        fileInput.addEventListener("change", function() {
            const file = fileInput.files[0];

            if (file) {
                const reader = new FileReader();

                reader.onload = function(e) {
                    imagePreview.src = e.target.result;
                };

                reader.readAsDataURL(file);
            } else {
                // Handle case when no file is selected or user cancels the file dialog
                imagePreview.src = "";
            }
        });
        </script>
    @yield('js')
    <!-- Github buttons -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="../uiassets/js/soft-ui-dashboard.min.js?v=1.0.7"></script>
</body>

</html>
