---
title: Documentation
narrow: true
permalink: dokumanlar.html
show_profile: true
---

{% for docs in site.docs %}
- [{{ docs.title }}]({{ site.baseurl }}{{ docs.url }}) {% if docs.baslik %}<small class="text-muted">({{docs.baslik}})</small>{% endif %}<span class="d-none d-md-block float-end text-muted small">Son düzenleme: <span class="fw-semibold">{{ docs.last_modified_at | localize: '%d %b, %Y', 'tr' }}</span></span>


{% endfor %}
