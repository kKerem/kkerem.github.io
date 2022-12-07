---
title: Programlamaya Giriş I (Ruby)
narrow: true
permalink: programlamaya-giris-1.html
show_profile: false
---

## Değişken tanımı
<p>Kaydedilmesi istenen tüm veriler(anlık hesaplamalar hariç) doğru bir isime sahip olmak zorundadır.</p>
<div class="alert alert-danger p-2 my-3">
    <i class="bi bi-x-circle-fill text-danger p-2"></i> Değişken isimlerinde türkçe karakter, sembol, boşluk
    <u>kullanılamaz</u> ve sayı ile <u>başlayamaz</u>.
    <pre class="mb-0 mt-2"><code class="language-plaintext d-block shadow-none">1.degişken = </code></pre>
</div>

<div class="alert alert-success p-2 my-3">
    <i class="bi bi-check-circle-fill text-success p-2"></i> Doğru kullanım
    <pre class="mb-0 mt-2"><code class="language-plaintext d-block shadow-none">birinci_degisken = </code></pre>
</div>

## Değişken içeriği
<p>
    Değişken içeriğine metin girilmesi gerekiyorsa tırnak işaretleri( <code>"..."</code> ) içerisinde olmak zorundadır.
    Aksi halde değişken içeriği bir metin olarak değil başka bir içeriğin adı olarak yorumlanır.
</p>
<div class="row align-items-center justify-content-center">
    <div class="col-3">
        <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">birinci_degisken = "kerem"</code></pre>
    </div>
    <div class="col fw-semibol pt-2">
        <i class="bi bi-check-circle-fill text-success p-2"></i>Sonuç<br><span class="small">kerem</span>
    </div>
</div>
<div class="row align-items-center justify-content-center">
    <div class="col-3">
        <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">birinci_degisken = kerem</code></pre>
    </div>
    <div class="col fw-semibol pt-2">
        <i class="bi bi-x-circle-fill text-danger p-2"></i>Sonuç<br><span class="small text-muted">Metin olarak değil
            bir değişken adı olarak yorumladı ve <b>kerem</b> diye bir değişken olmadığı için hata verdi.</span>
    </div>
</div>

## Aritmetik Operatörler

Aritmetik işlemlerde 2 farklı sonuç yorumlanır. <code class="fw-semibold">true</code>(doğru) yada <code
    class="fw-semibold">false</code>(yanlış).<br><br>

<div class="row">
    <div class="col-4">
        <center class="fw-semibold pb-1">Genel operatörler</center>
        <table class="table table-bordered mb-0">
            <tr>
                <td>+</td>
                <td>toplama</td>
            </tr>
            <tr>
                <td>-</td>
                <td>çıkarma</td>
            </tr>
            <tr>
                <td>*</td>
                <td>çarpma</td>
            </tr>
            <tr>
                <td>/</td>
                <td>bölme</td>
            </tr>
            <tr>
                <td>**</td>
                <td>kuvvet</td>
            </tr>
            <tr>
                <td>%</td>
                <td>mod alma</td>
            </tr>
        </table>
    </div>
    <div class="col-4">
        <center class="fw-semibold pb-1">Sorgu operatörleri</center>
        <table class="table table-bordered mb-0">
            <tr>
                <td>&gt;</td>
                <td>büyük ise</td>
            </tr>
            <tr>
                <td>&gt;=</td>
                <td>eşit veya büyük ise</td>
            </tr>
            <tr>
                <td>&lt;</td>
                <td>küçük ise</td>
            </tr>
            <tr>
                <td>&lt;=</td>
                <td>eşit veya küçük ise</td>
            </tr>
            <tr>
                <td>==</td>
                <td>eşit ise</td>
            </tr>
            <tr>
                <td><b>!=</b></td>
                <td>eşit <u>değil</u> ise</td>
            </tr>
        </table>
    </div>
    <div class="col-4">
        <div class="row fw-semibold pb-1">
            <div class="col text-center pe-5 me-4">Örnek sorgu</div>
            <div class="col-auto me-5">Sonuç</div>
        </div>
        <table class="table table-borderless">
            <tr>
                <td class="p-0">
                    <pre
                        class="mb-1"><code class="language-ruby d-block shadow-none p-2">if ( a=3 &gt; b=5 )</code></pre>
                </td>
                <td class="ps-5">false  </td>
            </tr>
            <tr>
                <td class="p-0">
                    <pre
                        class="mb-1"><code class="language-ruby d-block shadow-none p-2">if ( a=3 &gt;= b=5 )</code></pre>
                </td>
                <td class="ps-5">false  </td>
            </tr>
            <tr>
                <td class="p-0">
                    <pre
                        class="mb-1"><code class="language-ruby d-block shadow-none p-2">if ( a=3 &lt; b=5 )</code></pre>
                </td>
                <td class="ps-5">true  </td>
            </tr>
            <tr>
                <td class="p-0">
                    <pre
                        class="mb-1"><code class="language-ruby d-block shadow-none p-2">if ( a=3 &lt;= b=5 )</code></pre>
                </td>
                <td class="ps-5">true  </td>
            </tr>
            <tr>
                <td class="p-0">
                    <pre class="mb-1"><code class="language-ruby d-block shadow-none p-2">if ( a=3 == b=5 )</code></pre>
                </td>
                <td class="ps-5">false  </td>
            </tr>
            <tr>
                <td class="p-0">
                    <pre
                        class="mb-1"><code class="language-ruby d-block shadow-none p-2">if ( a=3 <b>!=</b> b=5 )</code></pre>
                </td>
                <td class="ps-5">true  </td>
            </tr>
        </table>
    </div>
</div>

## If-Else-Elsif sorguları

<p>if ifadesi <b>eğer</b> anlamına gelir. <code>if</code>'ten sonra sorgulama başlatılır. Sorgulama sonuna her zaman
    <code>end</code> yazılmalıdır.

    <h6 class="fw-semibold">Kullanım şekli;</h6> Eğer belirttiğim koşul yerine geliyorsa şunları(<code>if</code>),
    gelmiyorsa bunları yap demektir(<code>elsif</code>). Tüm koşullarda yerine gelmiyorsa (<code>else</code>) yapılacak
    işlemi belirtir.</p>

<ol>
    <li>
        Eğer tek şartlı bir sonuç isteniyorsa sadece <code>if</code>(eğer) ile sorgu bitirilebilir.
        <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">if (a > b)
    puts "a değişkeni b değişkeninden büyüktür."
end</code></pre><br>
    </li>
    <li>Eğer 2 şartlı bir sonuç isteniyorsa ilk sorgulama aşamasından sonra <code>else</code>(değil ise) başlatılır.
        <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">if (a > b)
    puts "a değişkeni b değişkeninden büyüktür."
else
    puts "a değişkeni b değişkeninden küçüktür."
end</code></pre><br>
    </li>
    <li>Eğer 2'den fazla şartlı bir sonuç isteniyorsa <code>else</code>'den önce <code>elsif</code>(yada) sorgusu
        başlatılmalıdır.
        <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">if (a > b)
    puts "a değişkeni b değişkeninden büyüktür."
elsif (a == b)
    puts "a değişkeni b değişkeniyle eşittir."
else
    puts "a değişkeni b değişkeninden küçüktür."
end</code></pre>
        <div class="alert alert-info p-2 mt-3">
            <div class="d-flex bd-highlight">
                <div class="flex-grow-1 bd-highlight">
                    <i class="bi bi-info-circle-fill pe-2"></i>Birden fazla koşul varsa <code>else</code> daima en sonda
                    kullanılır.
                </div>
                <div class="bd-highlight">
                    <a class="btn btn-link btn-sm m-0 p-0 ext-decoration-none" data-bs-toggle="collapse" href="#ornek-1"
                        role="button" aria-expanded="false" aria-controls="collapseExample">
                        <i class="bi bi-file-code-fill pe-2"></i>Örneği göster
                    </a>
                </div>
            </div>

            <div class="collapse" id="ornek-1">

                <div class="row w-100 m-0">
                    <div class="col ps-0">
                        <div class="alert alert-success p-2 mt-3 mb-0">
                            <i class="bi bi-x-circle-fill text-success p-2"></i> Doğru kullanım
                            <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">if (a > b)
    ...
elsif (a == b)
    ...
else
    ...
end</code></pre>
                        </div>
                    </div>

                    <div class="col pe-0">
                        <div class="alert alert-danger p-2 mt-3 mb-0">
                            <i class="bi bi-x-circle-fill text-danger p-2"></i> Yanlış kullanım
                            <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">if (a > b)
    ...
else
    ...
elsif (a == b)
    ...
end</code></pre>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <div class="alert alert-info p-2 mt-3">

            <div class="d-flex bd-highlight">
                <div class="flex-grow-1 bd-highlight">
                    <i class="bi bi-info-circle-fill pe-2"></i><code>if</code> ve <code>else</code> <u>bir kez</u>
                    kullanılabilirken <code>elsif</code> istenildiği kadar kullanılabilir.
                </div>
                <div class="bd-highlight">
                    <a class="btn btn-link btn-sm m-0 p-0 ext-decoration-none" data-bs-toggle="collapse" href="#ornek-2"
                        role="button" aria-expanded="false" aria-controls="collapseExample">
                        <i class="bi bi-file-code-fill pe-2"></i>Örneği göster
                    </a>
                </div>
            </div>

            <div class="collapse" id="ornek-2">
                <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">if (a > b)
    ...
elsif (a == b)
    ...
elsif (b == c)
    ...
elsif (c == d)
    ...
elsif (d == e)
    ...
else
    ...
end</code></pre>
            </div>


        </div>

        <div class="alert alert-warning p-2 mt-3">
            <i class="bi bi-exclamation-triangle-fill pe-2"></i><code>elsif</code> <b>yada</b> anlamına geldiği için
            kullanıldığında ne sorgulamak istendiğide <b>belirtilmek zorundadır</b>.
        </div>
    </li>
</ol>



### <code class="fw-bold">if</code>(eğer) Sorgusu

<p>
    <code>if</code> içerisinde bir bölümde aynı anda en fazla 2 şeyin karşılaştırması yapılabilir. Daha fazlası için
    <b><code>&&</code>(ve)</b>, <b><code>||</code>(veya)</b> operatörleri kullanılmalıdır. Sorguların bitişini
    belirtmek için sorgu sonucuna <code>end</code> girilmesi zorunludur.
</p>
<div class="alert alert-danger p-2 my-3">
    <i class="bi bi-x-circle-fill text-danger p-2"></i> Yanlış kullanım
    <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">if (birinci_degisken > ikinci_degisken > ucuncu_degisken)
...
end</code></pre>
    <div class="mt-2 small">1 bölümde(parantez içerisinde) 2'den fazla değişken <u>sorgulanamaz</u>.</div>
</div>

<div class="alert alert-success p-2 my-3">
    <i class="bi bi-check-circle-fill text-success p-2"></i> Doğru kullanım
    <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">if (birinci_degisken > ikinci_degisken)   &&   (ikinci_degisken > ucuncu_degisken)
...
end</code></pre>
    <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">if (birinci_degisken > ikinci_degisken)   ||   (ikinci_degisken > ucuncu_degisken)
...
end</code></pre>
    <div class="mt-2 small">3 farklı değişkende sorgulanmak istendiği için 2 bölüme ayırılarak sorgulama
        yapılabilir.</div>
</div>


### <code class="fw-bold">Else</code>(değil ise) ile iki sonuçlu sorgulama yapma
    <p>
        Birinci koşul sağlanamıyorsa <code>else</code> ile değilse sorgu sonucu yazdırılabilir.
    </p>
    <pre class="mb-0 mt-2"><code class="language-ruby d-block shadow-none">a= 3, b= 5

    if (a >= b )
    puts true
    else
    puts false
    end</code></pre>
    Sonuç:
    <pre><code class="language-ruby d-block shadow-none p-2">false</code></pre>






## Test
### Ic Test 2
### Ic Test 31