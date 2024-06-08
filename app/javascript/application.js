// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "channels"
document.addEventListener('turbolinks:load', () => {
    const themeToggle = document.getElementById('theme-toggle');
    const body = document.body;
  
    // Check if the user has a preferred theme
    const theme = localStorage.getItem('theme');
    if (theme) {
      body.classList.add(theme);
    }
  
    // Toggle dark/light mode
    themeToggle.addEventListener('click', () => {
      if (body.classList.contains('dark-mode')) {
        body.classList.remove('dark-mode');
        body.classList.add('light-mode');
        localStorage.setItem('theme', 'light-mode');
      } else {
        body.classList.remove('light-mode');
        body.classList.add('dark-mode');
        localStorage.setItem('theme', 'dark-mode');
      }
    });
  });
  