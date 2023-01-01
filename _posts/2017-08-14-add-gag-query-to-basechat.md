---
title: Add gag query to BaseChat
tags:
    - PHP
---

<p dir="auto">By default, sending a message to the authorities via chat, which is set to the "@" tag, sends it without checking if the sender has found an active gag penalty. This issue can cause the player to still annoy the authorities from the authorized chat, even though the player has received a gag penalty.</p>

<h3 dir="auto"><a id="user-content-first-step" href="https://github.com/kKerem/Add-Gag-Query-to-BaseChat#first-step" aria-hidden="true"></a>First step</h3>
<p dir="auto">Put it on top line</p>

<pre><code class="language-cpp">#include &lt;basecomm&gt;</code></pre>

<hr />

<h3 dir="auto"><a id="user-content-second-step" href="https://github.com/kKerem/Add-Gag-Query-to-BaseChat#second-step" aria-hidden="true"></a>Second step</h3>
<p dir="auto">Add this instead of "if (IsClientInGame(i) &amp;&amp; (from == i || Ch..." in void "SendChatToAdmins" (Line: 363 in version 1.8.0.6015)</p>

<div>
<pre><code class="language-cpp">if (!BaseComm_IsClientGagged(i))
  {
    CPrintToChat(i, "[SM] %s%N: %s", fromAdmin ? "(Admin) " : "(Player) ", from, message);
  }
</code></pre>
</div>

<hr />

<h3 dir="auto"><a id="user-content-last-step" href="https://github.com/kKerem/Add-Gag-Query-to-BaseChat#last-step" aria-hidden="true"></a>Last step</h3>
<p dir="auto">Compile the file.</p>