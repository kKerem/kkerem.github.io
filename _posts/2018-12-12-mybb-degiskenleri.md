---
title: MyBB Değişkenleri
tags:
    - PHP
---

<pre><code class="language-php">&lt;?php
define("IN_MYBB", 1);
require_once "./global.php";

if($mybb-&gt;user['uid'] == KULLANICI_ID) {
  echo '&lt;pre&gt;';
  var_dump($mybb);
  echo '&lt;/pre&gt;';
}
?&gt;</code></pre>
KULLANICI_ID bölümüne sadece sizin görebilmeniz için int şeklinde kullanıcı idsi girilmesi gerekmekte.