<!doctype html>
<html>
   <head>
      <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
      <title>BEST DEALS</title>
      <link rel='stylesheet' href='styles.css' type='text/css' />
      <script type='text/javascript' src='easySearch.js'></script>
   </head>
   <body onload='init()'>
      <div id='container'>
         <header>
            <h1><a href='/'>Best <span>Deals</span></a></h1>
            <h2>Amazing Products!</h2>
         </header>
         <nav>
            <ul>
               <li class='start selected'><a href='/A4/LoggedInUserServlet?p=Customer'>Home</a></li>
               <li><a href='#'>Products</a></li>
               <li class='end'><a href='#'>Contact</a>
               <li><a>Hello Sharath </a></li>
               <li><a href='/A4/ViewOrderHistoryServlet'>Order History</a></li>
               <li><a href='/A4/TrendingServlet'>Trending</a></li>
               <li>
                  <form method='get' class='searchform' action='#'>
                     <div name='autofillform'>
                        <input type='text' name='searchId' value='' id='searchId' onkeyup='doCompletion()' placeholder='Search here...' style='width:192px;padding: 5px; font-size: 16px;' />
                        <div id='auto-row'>
                           <table bgcolor='##668CB7' onblur='hideTable()' id='complete-table' style='position:absolute; width:205px;'></table>
                        </div>
                     </div>
                  </form>
               </li>
               <li><a href='/A4/LogoutServlet'>Log Out</a></li>
            </ul>
         </nav>
         <img class='header-image' height='460' width='820' src='image.jpg' alt='Gadgets'/>
         <div id='body'>
            <section id='content'>
               <h3>Welcome to Best Deals</h3>
               <h4>We offer best deals for a wide range of electronic items. Some of the stuff we sell can be categorically placed into TVs, Laptops, SmartPhones, Tablets, and related Accessories</h4>
            </section>
            <aside class='sidebar'>
               <ul>
                  <li>
                     <h4>Products</h4>
                     <ul>
                        <li><a href='/A4/RetrieveProductInfoServlet?category=TV'>TVs</a></li>
                        <li><a href='/A4/RetrieveProductInfoServlet?category=Laptop'>Laptops</a></li>
                        <li><a href='/A4/RetrieveProductInfoServlet?category=SmartPhone'>SmartPhones</a></li>
                        <li><a href='/A4/RetrieveProductInfoServlet?category=Tablet'>Tablets</a></li>
                     </ul>
                  </li>
               </ul>
            </aside>
            <div class='clear'></div>
         </div>
         <footer>
            <div class='footer-content'>
               <h5>Prices and offers are subject to change. © 2016 Best Deals. All rights reserved. BEST DEALS, the BEST DEAL logo, the tag design, MY BEST DEAL, and BESTDEALS.COM are trademarks of Best Deals and its affiliated companies.</h5>
            </div>
         </footer>
      </div>
   </body>
</html>