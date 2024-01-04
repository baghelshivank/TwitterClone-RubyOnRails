// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails




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

// // document.addEventListener("DOMContentLoaded", function () {
//     const categorySelect = document.getElementById('logout-js');
//     categorySelect.addEventListener('click', fetchSubcategories);
//     function fetchSubcategories() {
//         byebug
//         console.log("updateScrollPoint triggered thjis is logout");
//     }
// // });
// app/javascript/application.js

// app/javascript/application.js

document.addEventListener('DOMContentLoaded', function() {
    const logoutButton = document.getElementById('logout-button');
  
    if (logoutButton) {
      logoutButton.addEventListener('click', function() {
        // Your JavaScript code here
        window.alert('Logout button clicked!'); // Replace this with your actual JavaScript logic
      });
    }
  });
  