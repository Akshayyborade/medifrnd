<%@page import="com.db.HibernateConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Home</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
        
        <style>
          .mr-5{
           cursor:pointer
         
          }
          .log{
            width:7em;
          }
          .logo{
            width: 6.5em;
          }
          .About{
            text-align: center;
  

          }
          .alert .alert-warning .alert-dismissible .fade .show{

          }
          .Services{
           
           border-radius: 35px;
          }
          @media (max-width: 575px){
               .log{
            width:9.5em;
          }
          .logo{
            width: 9.5em;
          }
              
          }
        </style>
    </head>
         <body>
             <!--[if lt IE 7]>
                 <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
             <![endif]-->
             <%
             Object obj = HibernateConfig.getSessionFactory();
             out.println(obj);
             %>
             <header class="text-gray-600 body-font">
            <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
              <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
                <img class="log"  src="img\logo.png" alt="">
                
              </a>
              <nav class="md:mr-auto md:ml-4 md:py-1 md:pl-4 md:border-l md:border-gray-400	flex flex-wrap items-center text-base justify-center">
                <a class="mr-5 hover:text-gray-900" href="#Home">Home</a>
                <a class="mr-5 hover:text-gray-900" href="https://medifrnd.000webhostapp.com/blog.php">Blog</a>
                <a class="mr-5 hover:text-gray-900" href="#About">About</a>
                <a class="mr-5 hover:text-gray-900" href="#Contact">Contact Us</a>
              </nav>
              
            </div>
          </header>
            <!-- hii---->
          <section id="Home" class="text-gray-600 body-font">
            <div class="container mx-auto flex px-5 py-24 md:flex-row flex-col items-center">
              <div class="lg:flex-grow md:w-1/2 lg:pr-24 md:pr-16 flex flex-col md:items-start md:text-left mb-16 md:mb-0 items-center text-center">
                <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">We Make your life Easy!</h1>
                <p class="mb-8 leading-relaxed"> Your tired for searching sutaible  hospital near you Don't Worry! we make easy for you just type your area we provide information of all Hospital that near to you </p>
                <div class="flex w-full md:justify-start justify-center items-end">
                  <a href="search.jsp">
                  <button  class="Services  font-semibold  text-white bg-indigo-500 border-0 py-5 px-12  hover:bg-indigo-600 rounded text-lg">Let's Discover</button>
                  </a>
                </div>
                
                <div class="flex lg:flex-row md:flex-col">
                  
                </div>
              </div>
              <div class="lg:max-w-lg lg:w-full md:w-1/2 w-5/6">
                <img class="object-cover object-center rounded" alt="hero" src="img\medical-5459631 (1).png">
              </div>
            </div>
          </section>
            <!-- hii---->
          <section id="About" class="About title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">
            <h1>About Us</h1>
            <div class="container px-5 py-24 mx-auto">
              <div class="xl:w-1/2 lg:w-3/4 w-full mx-auto text-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="inline-block w-8 h-8 text-gray-400 mb-8" viewBox="0 0 975.036 975.036">
                  <path d="M925.036 57.197h-304c-27.6 0-50 22.4-50 50v304c0 27.601 22.4 50 50 50h145.5c-1.9 79.601-20.4 143.3-55.4 191.2-27.6 37.8-69.399 69.1-125.3 93.8-25.7 11.3-36.8 41.7-24.8 67.101l36 76c11.6 24.399 40.3 35.1 65.1 24.399 66.2-28.6 122.101-64.8 167.7-108.8 55.601-53.7 93.7-114.3 114.3-181.9 20.601-67.6 30.9-159.8 30.9-276.8v-239c0-27.599-22.401-50-50-50zM106.036 913.497c65.4-28.5 121-64.699 166.9-108.6 56.1-53.7 94.4-114.1 115-181.2 20.6-67.1 30.899-159.6 30.899-277.5v-239c0-27.6-22.399-50-50-50h-304c-27.6 0-50 22.4-50 50v304c0 27.601 22.4 50 50 50h145.5c-1.9 79.601-20.4 143.3-55.4 191.2-27.6 37.8-69.4 69.1-125.3 93.8-25.7 11.3-36.8 41.7-24.8 67.101l35.9 75.8c11.601 24.399 40.501 35.2 65.301 24.399z"></path>
                </svg>
                <p class="leading-relaxed text-lg">Hi, I am akshay deepak borade now at learning stage in full stack web development here is my first website project created only for educational purpose not for commurcial use please write us for improvement Thank You !</p>
                <span class="inline-block h-1 w-10 rounded bg-indigo-500 mt-8 mb-6"></span>
                <h2 class="text-gray-900 font-medium title-font tracking-wider text-sm">Akshay Borade</h2>
                 
              </div>
            </div>
          </section>
          <!-- hii---->
             <section class="text-gray-600 body-font relative"  id="Contact">
             <div class="container px-5 py-24 mx-auto flex sm:flex-nowrap flex-wrap">
              <div class="lg:w-2/3 md:w-1/2 bg-gray-300 rounded-lg overflow-hidden sm:mr-10 p-10 flex items-end justify-start relative">
                <iframe width="100%" height="100%" class="absolute inset-0" frameborder="0" title="map" marginheight="0" marginwidth="0" scrolling="no" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15087.530107208024!2d73.30766912212783!3d19.02489744387424!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7f050dd473f3d%3A0xbe5089095fb4faf4!2sNeral%2C%20Maharashtra%20410101!5e0!3m2!1sen!2sin!4v1633442869775!5m2!1sen!2sin"  style="border: 0ch ;"></iframe>
                <div class="bg-white relative flex flex-wrap py-6 rounded shadow-md">
                  <div class="lg:w-1/2 px-6">
                    <h2 class="title-font font-semibold text-gray-900 tracking-widest text-xs">ADDRESS</h2>
                    <p class="mt-1">Karjat,Maharastra,India</p>
                  </div>
                  <div class="lg:w-1/2 px-6 mt-4 lg:mt-0">
                    <h2 class="title-font font-semibold text-gray-900 tracking-widest text-xs">EMAIL</h2>
                    <a class="text-indigo-500 leading-relaxed">medifrnd@email.com</a>
                    <h2 class="title-font font-semibold text-gray-900 tracking-widest text-xs mt-4"></h2>
                    <p class=''></p></p>
                  </div>
                </div>
              </div>
    
   
    <div class="lg:w-1/3 md:w-1/2 bg-white flex flex-col md:ml-auto w-full md:py-8 mt-8 md:mt-0">
      
     <form action="index.jsp" method="post">
    <h2 class="text-gray-900 text-lg mb-1 font-medium title-font">Feedback</h2>
      <p class="leading-relaxed mb-5 text-gray-600">Feel free and write us...</p>
      <div class="relative mb-4">
        <label for="name" class="leading-7 text-sm text-gray-600">Name</label>
        <input type="text" id="name" name="name" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
      </div>
      <div class="relative mb-4">
        <label for="email" class="leading-7 text-sm text-gray-600">Email</label>
        <input type="email" id="email" name="email" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
      </div>
      <div class="relative mb-4">
        <label for="message" class="leading-7 text-sm text-gray-600">Message</label>
        <textarea id="message" name="message" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 h-32 text-base outline-none text-gray-700 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out"></textarea>
      </div>
      <button class="text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded text-lg">Submit</button>
      <div class="alert alert-success alert-dismissible">
    
   
</div>
    </from>
    </div>
      
  </div>
</section>
 <!-- hii---->
<footer class="text-gray-600 body-font">
            <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
              <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
                <img class="logo" src="img\logo.png" alt="logo">
                <span class="ml-3 text-xl">Medifrnd</span>
              </a>
              <p class="text-sm text-gray-500 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:mt-0 mt-4">© 2021 Medifrnd —
                <a href="https://twitter.com/Akshayb2707" class="text-gray-600 ml-1" rel="noopener noreferrer" target="_blank">@Akshayb2707</a>
              </p>
              <span class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
                <a href="https://www.facebook.com/akshay.borade.1848" class="text-gray-500">
                  <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                    <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                  </svg>
                </a>
                <a href="https://twitter.com/Akshayb2707?t=BW4_gfYNO6i8aVweZ21usQ&s=08" class="ml-3 text-gray-500">
                  <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                    <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                  </svg>
                </a>
                <a href="https://www.instagram.com/akshay02105/?r=nametag" class="ml-3 text-gray-500">
                  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                    <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
                    <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
                  </svg>
                </a>
                <a href="https://www.linkedin.com/in/akshay-borade-882463216" class="ml-3 text-gray-500">
                  <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
                    <path stroke="none" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
                    <circle cx="4" cy="4" r="2" stroke="none"></circle>
                  </svg>
                </a>
              </span>
            </div>
          </footer>     
     
             <script>    if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}</script>
         </body>
     </html>
