---
title: Profiles
layout: default
permalink: /profiles/
---

# Profiles

This section lists all **profile narrative pages** included in the guide.

> For the auto-generated summary tables of all artifacts (including StructureDefinitions), see **[Artifacts](artifacts.html)**.

{% include list-folder.html dir='profiles' %}

<p><small>DEBUG (profiles visibles):</small></p>
<ul>
{% for p in site.pages %}
  {% if p.output_ext == '.html' and p.path contains 'profiles/' %}
    <li>{{ p.path }} → {{ p.url }}</li>
  {% endif %}
{% endfor %}
</ul>

