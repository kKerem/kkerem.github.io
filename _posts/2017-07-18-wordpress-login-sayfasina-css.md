---
title: WordPress Login sayfasına CSS
tags:
    - CSS
    - PHP
---


<img src="/assets/Untitled-1.png" />

<p class="my-3">Aşağıda ki kodları <code>functions.php</code> içerisine eklemeniz yeterli.</p>
<pre><code class="language-php">function my_login_stylesheet() {
    echo '
    &lt;style type="text/css"&gt;
    body {background: #FFF !important;max-width: 400px;width: 95%;margin: 0 auto !important}
    #login {width: 100% !important;padding-top:30%}
    #login_error #login_error {display: none !important}
    #login form {box-shadow: none;margin-top:0;background:none}
    .login .button.wp-hide-pw .dashicons {top: 1.25rem !important;}
    #login form input {transition:.3s;}
    #login form input[type="text"]:focus, #login input[type="password"]:focus {outline:2px auto #2076D8;}
    #login input[type="text"], #login input[type="password"] {transition: .2s;padding: 10px;border: 1px solid #eaecef;background: #FFF !important;box-shadow: none !important;border-radius: 3px;box-sizing: border-box;font-size: 16px;margin-top:15px;box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075) !important;}
    #login input[type="submit"] {padding: 20px;display: block;background-color: #2076D8;font-weight: 600;color: #FFF;margin-top: 5px;border: none;line-height: 0;width: 100%;margin: 15px 0;box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15) !important;}
    #login input[type="submit"]:hover {background-color: #0a64ca;cursor: pointer;}
    #login input[type="checkbox"] {box-shadow:none;border-radius: 4px;background: white;border: 1px solid #eaecef;}
    #login .submit {display: block !important;}
    #login .message {border: 1px solid #eaecef;border-radius: 0.25rem;border-left: 4px solid #00a0d2;padding: 1rem;margin: 40px 25px 0 25px;box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075) !important;}
    #nav{text-align:center;}
    #backtoblog {display: none}
    &lt;/style&gt;
    '; 
} 
add_action('login_enqueue_scripts', 'my_login_stylesheet');

function my_login_logo_url() {
    return home_url();
}
add_filter('login_headerurl', 'my_login_logo_url');

function my_login_logo_url_title() {
    return '';
}
add_filter('login_headertitle', 'my_login_logo_url_title');</code></pre>