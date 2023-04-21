document.addEventListener("DOMContentLoaded", function(){
        var myOffcanvas = document.getElementById('offcanvasExample');
        var bsOffcanvas = new bootstrap.Offcanvas(myOffcanvas);
        document.getElementById("OpenMenu").addEventListener('click',function (e){
                e.preventDefault();
                e.stopPropagation();
                bsOffcanvas.toggle();
        });
});
      
window.onload = function () {
        var loadTime = window.performance.timing.domContentLoadedEventEnd-window.performance.timing.navigationStart; 
        $(".pageload").text('Pageload: '+ loadTime + 'ms');
    }
$.getJSON('https://api.github.com/users/kkerem', function(data) {

        $("#follow").append("<a href='https://github.com/login?return_to=https%3A%2F%2Fgithub.com%2FkKerem' target='_blank' class='btn btn-light border my-3 d-block text-center fw-semibold btn-sm py-2' role='button'>Follow</a>")

       $("#takipci").text(data.followers)
       $("#takipedilen").text(data.following)
       $("#repos").text(data.public_repos)

       if(data.bio !== null) {
        $(".bio").text(data.bio)
       }
});

const darkTheme = "dark";


    const darkThemeSetUp = () => {
        if (getCurrentTheme() === "dark") {
            document.getElementById("toggleBtn").checked = true;
            $(".switch").html('<i class="bi bi-sun-fill"></i><span class="d-md-none ps-2">Light Mode</span>')
        } else {
            document.getElementById("toggleBtn").checked = false;
            $(".switch").html('<i class="bi bi-moon-fill"></i><span class="d-md-none ps-2">Dark Mode</span>')
        }
    };

    const getCurrentTheme = () =>
        document.body.classList.contains(darkTheme) ? "dark" : "light";


    //   Get user's theme preference from local storage
    const selectedTheme = localStorage.getItem("selected-theme");
    if (selectedTheme === "dark") {
        document.body.classList[selectedTheme === "dark" ? "add" : "remove"](darkTheme);
        darkThemeSetUp();
    }

    const themeButton = document.getElementById("toggleBtn");
    themeButton.addEventListener("change", () => {
        document.body.classList.toggle(darkTheme);
        localStorage.setItem("selected-theme", getCurrentTheme());
        darkThemeSetUp();

        if (getCurrentTheme() == "dark") {
            $('.navbar').removeClass('navbar-light').removeClass('bg-white').addClass('navbar-dark').addClass(
                'bg-dark')
        } else {
            $('.navbar').addClass('navbar-light').addClass('bg-white').removeClass('navbar-dark').removeClass(
                'bg-dark')
        }

    });

    if (getCurrentTheme() == "dark") {
        $('.navbar').removeClass('navbar-light').removeClass('bg-white').addClass('navbar-dark').addClass('bg-dark')
    } else {
        $('.navbar').addClass('navbar-light').addClass('bg-white').removeClass('navbar-dark').removeClass('bg-dark')
    }


    document.addEventListener("DOMContentLoaded", function () {
        document.querySelectorAll("a.nav-link.active").forEach(li => {
            li.classList.remove("active");
            li.attributes.removeNamedItem("aria-current");
        });

        document.querySelectorAll(`a[href="${location.pathname}"].nav-link`).forEach(a => {
            a.classList.add("active");
            a.setAttribute("aria-current", "page");
        });
    });