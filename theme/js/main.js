$.getJSON('https://api.github.com/users/kkerem', function(data) {
        console.log(data)

        $("#follow").append("<a href='https://github.com/login?return_to=https%3A%2F%2Fgithub.com%2FkKerem' target='_blank' class='btn btn-light border my-3 d-block text-center fw-semibold btn-sm py-2' role='button'>Takip Et</a>")

       $("#takipci").text(data.followers)
       $("#takipedilen").text(data.following)
       $("#repos").text(data.public_repos)

       if(data.bio !== null) {
        $(".bio").text(data.bio)
       }
    });