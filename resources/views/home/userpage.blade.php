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
      <title>Home</title>
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
      
    <div class="hero_area">
             
        <!-- header section strats -->
            @include('home.header')
        <!-- end header section -->

        <!-- slider section -->
            @include('home.slider')    
        <!-- end slider section -->
      </div>
        <!-- why section -->
            @include('home.why')
        <!-- end why section -->
      
        <!-- product section -->
            @include('home.product_view')
        <!-- end product section -->
        
        <!-- footer start -->
            @include('home.footer')
        <!-- footer end --> 
        
        
        <div>
            @include('home.pva')  
          </div>


        <div class="cpy_">
            <p class="mx-auto">© 2022 All Rights Reserved By <a href="67999@siswa.unimas.my">67999@unimas.my</a><br>
                E-pharmacy with PharmaBot</a>
             </p>
        </div>


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