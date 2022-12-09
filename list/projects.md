---
title: Documentation
narrow: true
permalink: dokumanlar
show_profile: true
---
xxxxxxxxx
{% for project in site.projects %}
- [{{ project.title }}]({{ site.baseurl }}{{ project.url }}) {% if project.baslik %}<small class="text-muted">({{project.baslik}})</small>{% endif %}

{% endfor %}
