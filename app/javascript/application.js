// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails


// The lines below were added after running importmap setup commands : -------->>>>>     
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery3
//= require popper
//= require bootstrap

//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

// console.log(" Hello from application.js ");





document.addEventListener("DOMContentLoaded", function () {
    console.log("'DOMContentLoaded' event triggered");

    const logoutBtn = document.getElementById('logout-btn');
    logoutBtn.addEventListener('click', displayLogoutWarning);
    function displayLogoutWarning() {
        console.log("displayLogoutWarning() triggered !! Logging Outtt !! ");
        window.confirm(' Are you sure you want to logout ? '); 

    }
});





// document.addEventListener('DOMContentLoaded', function() {
//     const logoutButton = document.getElementById('logout-button');
  
//     if (logoutButton) {
//       logoutButton.addEventListener('click', function() {
//         window.confirm(' Are you sure you want to logout ? '); 
//       });
//     }
//   });





    // document.addEventListener('turbo:before-fetch-response', (event) => {

    //   console.log("turbo:before-fetch-response");
    //   const isLogoutLink = event.detail.fetchOptions.url.includes('<%= destroy_user_session_path %>');
    //   if (isLogoutLink) {
    //     event.preventDefault();

    //     // Show confirmation dialog
    //     const userConfirmed = window.confirm('Are you sure you want to log out?');
        
    //     // Proceed with logout only if the user confirmed
    //     if (userConfirmed) {
    //       Turbo.visit(event.detail.fetchOptions.url, { action: 'replace' });
    //     }
    //   }
    // });





window.addEventListener("load", function (event) {
  console.log("'load' event triggered", event);

  var stickyContent = document.getElementsByClassName("home-inner30")[0];
  // console.log(stickyContent);

  // Update scroll point based on content height
  function updateScrollPoint() {
    // console.log("updateScrollPoint triggered");
    var contentHeight = stickyContent.offsetHeight;
    // console.log(contentHeight);
    document.documentElement.style.setProperty('--scroll-point', 'calc(100vh - ' + contentHeight + 'px)');
  }

  // Initial update
  updateScrollPoint();

  // Use ResizeObserver to listen for changes in the size of the sticky content and trigger updateScrollPoint accordingly.
  var resizeObserver = new ResizeObserver(updateScrollPoint);
  resizeObserver.observe(stickyContent);

  // Listen for window resize events to update the scroll point when the window is resized.
  window.addEventListener('resize', updateScrollPoint);

});




console.log(" Hello from application.js ");
