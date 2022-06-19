<!DOCTYPE html>
<html>
   <head> 
      <!-- Basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- Site Metas -->
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <link rel="shortcut icon" href="images/favicon.png" type="">
      <title>All Product</title>
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="{{asset('home/css/bootstrap.css')}}" />
      <!-- Cart icon -->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
      <!-- font awesome style -->
      <link href="{{asset('home/css/font-awesome.min.css')}}" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="{{asset('home/css/style.css')}}" rel="stylesheet" />
      <!-- responsive style -->
      <link href="{{asset('home/css/responsive.css')}}" rel="stylesheet" />
      <!-- PVA chatbot -->
      <link href="{{asset('home/css/main.css')}}" rel="stylesheet" type="text/css" >
   </head>
   <body>

        <!-- header section strats -->
            @include('home.header')
        <!-- end header section -->

            
            @include('home.product')


            @include('home.pva')

              
             <div class="cpy_">
               <p class="mx-auto">© 2022 All Rights Reserved By <a href="67999@siswa.unimas.my">67999@unimas.my</a><br>
                   E-pharmacy with PharmaBot</a>
                </p>
           </div>

   <script>
        document.addEventListener("DOMContentLoaded", function(event) { 
            var scrollpos = localStorage.getItem('scrollpos');
            if (scrollpos) window.scrollTo(0, scrollpos);
        });

        window.onbeforeunload = function(e) {
            localStorage.setItem('scrollpos', window.scrollY);
        };
    </script>

         <!-- jQery -->
         <script src="home/js/jquery-3.4.1.min.js"></script>
         <!-- popper js -->
         <script src="home/js/popper.min.js"></script>
         <!-- bootstrap js -->
         <script src="home/js/bootstrap.js"></script>
         <!-- custom js -->
         <script src="home/js/custom.js"></script>
      </body>
   </html> 