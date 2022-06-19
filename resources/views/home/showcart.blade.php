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
      <title>Cart Page</title>
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


      <style type="text/css">

        .center
        {
            margin: auto;
            width: 70%;
            text-align: center;
            padding: 40px;   
        }

        table,th,td
        {
            border: 1px solid grey;
        }

        .th_deg
        {
            font-size: 30px;
            padding: 5px;
            background: skyblue;
        }
        
        .img_deg
        {
            height: 200px;
            width: 200px;
        }

        .total_deg
        {
            Color: black;
            font-size: 20px;
            padding: 15px;
            text-align: center;
        }

        .proceed_order
        {
            Color: black; 
            font-size: 25px; 
            padding-bottom: 15px;
        }



      </style>

   </head>
   <body>
  

        <!-- header section strats -->
            @include('home.header')
        <!-- end header section -->

          @if(session()->has('message'))

                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                {{session()->get('message')}}
                </div>

           @endif

        <div class="center">
 
            <table>
                
                <tr>
                    <th class="th_deg">Product Title</th>
                    <th class="th_deg">Product Quantity</th>
                    <th class="th_deg">Price</th>
                    <th class="th_deg">Image</th>
                    <th class="th_deg">Action</th>
                </tr>

                <?php $totalprice=0; ?> 
                
                @foreach($cart as $cart)
                <tr>
                    <td>{{$cart->product_title}}</td>
                    <td>{{$cart->quantity}}</td>
                    <td>{{$cart->price}}</td>
                    <td><img class="img_deg" src="/product/{{$cart->image}}"></td>
                    <td><a class="btn btn-danger" href="{{url('remove_cart', $cart->id)}}">Remove Product</a></td>
                </tr>
                
                <?php $totalprice=$totalprice + $cart->price ?>

                @endforeach

            </table>

            <div>
                <h1 class="total_deg">Total Price: {{$totalprice}}</h1>
            </div>

            <div>
                <h1 class="proceed_order">Proceed to Order: </h1>

                <a href="{{url('cash_order')}}" class="btn btn-danger">Cash On Delivery</a>
                <a href="{{url('stripe', $totalprice)}}" class="btn btn-danger">Pay Using Card</a> 

            </div>

        </div> 


        
        <div>
            @include('home.pva')  
          </div>

        <!-- footer end -->
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