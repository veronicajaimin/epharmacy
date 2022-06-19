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
      <title>Order</title>
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
              padding: 30px;
              text-align: center;
          }

          table,th,td
          {
              border: 1px solid black;  
          }

          .th_deg
          {
                padding: 10px;
                background-color: skyblue;
                font-size: 20px;
                font-weight: bold;     
          }

          .img
          {
              height: 120px;
              width: 100px;
          }

      </style>

   </head>
   <body>
   

        <!-- header section strats -->
            @include('home.header')
        <!-- end header section -->


        <div class="center">
            <table>
                <tr>
                    <th class="th_deg">Product Title</th>
                    <th class="th_deg">Quantity</th>
                    <th class="th_deg">Price</th>
                    <th class="th_deg">Payment Status</th>
                    <th class="th_deg">Delivery Status</th>
                    <th class="th_deg">Image</th>
                    <th class="th_deg">Cancel Order</th>
                </tr>

                @foreach ($order as $order)
                    
                <tr>
                    <td>{{$order->product_title}}</td>
                    <td>{{$order->quantity}}</td>
                    <td>{{$order->price}}</td>
                    <td>{{$order->payment_status}}</td>
                    <td>{{$order->delivery_status}}</td>
                    <td>
                        <img class="img" src="product/{{$order->image}}">
                    </td>

                    <td>
                        @if ($order->delivery_status=='Processing')
                            <a onclick="return confirm('Are you sure to cancel this order?')" 
                            class="btn btn-danger" href="{{url('cancel_order', $order->id)}}">Cancel Order</a>
                        
                            @else
                                <p style="color: blue;">Not Allowed</p>
                            
                        @endif

                    </td>
                </tr>

                @endforeach

            </table>
        </div>





















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