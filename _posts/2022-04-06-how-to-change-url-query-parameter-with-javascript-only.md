---
title: How to change URL query parameter with Javascript
tags:
  - JavaScript
---

URL query parameters can be easily modified using <a href="https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams">URLSearchParams</a> and <a href="https://developer.mozilla.org/en-US/docs/Web/API/History_API">History</a> interfaces:

<pre><code class="language-javascript">// Construct URLSearchParams object instance from current URL querystring.
var queryParams = new URLSearchParams(window.location.search);
Set new or modify existing parameter value. queryParams.set("myParam", "myValue");
// Replace current querystring with the new one.
history.replaceState(null, null, "?"+queryParams.toString());</code></pre>
<br>
Alternatively instead of modifying current history entry using <a href="https://developer.mozilla.org/en-US/docs/Web/API/History_API#The_replaceState()_method">replaceState()</a> we can use <a href="https://developer.mozilla.org/en-US/docs/Web/API/History_API#The_pushState()_method">pushState()</a> method to create a new one:
<pre><code class="language-javascript">history.pushState(null, null, "?"+queryParams.toString());</code></pre>
&nbsp;