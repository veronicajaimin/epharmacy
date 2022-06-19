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
      <title>Product Details</title>
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
      
        <style>
            .detail
            {
               padding-bottom: 10px;
               color: darkslategray;
            }
        </style>

   </head>
   <body>
      <div class="hero_area">

        <!-- header section strats -->
            @include('home.header')
        <!-- end header section -->
      

      <div class="col-sm-6 col-md-4 col-lg-4" style="margin: auto; width:50%; padding: 30px;">
        
           <div class="img-box" style="padding: 20px">
              <img src="/product/{{$product->image}}" alt="">
           </div>
           <div class="detail-box">
            <h5 style="padding-bottom: 10px">
               {{$product->title}}
            </h5>
            @if($product->discount_price!=null)
                  
               <h6 style="color:red; padding-bottom: 8px;">
                  Discount Price
                  <br>
                  RM {{$product->discount_price}}
               </h6>

               <h6 style="text-decoration: line-through; color:green; padding-bottom: 8px;">
                  Price
                  <br>
                  RM {{$product->price}}
               </h6>

            @else
                  
               <h6 style="color:green; padding-bottom: 8px;">
                  Price
                  <br>
                  RM {{$product->price}}
               </h6>

               @endif

                <h6 class="detail"><b>Product Category    : </b> {{$product->category}}</h6> 
                <h6 class="detail"><b>Product Details     : </b> {{$product->description}}</h6>
                <h6 class="detail"><b>Available Quantity  : </b> {{$product->quantity}}</h6>

                <form action="{{url('add_cart', $product->id)}}" method="Post">

                    @csrf

                    <div class="row">

                       <div class="col-md-4">
                          <input type="number" name="quantity" value="1" min="1" style="width: 100px">
                       </div>

                       <div class="col-md-4">
                          <input type="submit" value="Add To Cart">
                       </div>

                    </div>                                         
                   </form>


                  
           </div>
        </div>
     </div>


        <div class="open-button">
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