

# IGTest — Index

Bienvenido. Aquí tienes una visión completa de los contenidos del IG, agrupados por **narrativas** (páginas Markdown) y **artefactos generados** (páginas que crea el Publisher).

> 📦 Resumen automático de artefactos: ver [Artifacts](artifacts.html).

---

## 🔖 Narrativas por carpeta


### Profiles
{% include list-folder.html srcpath='profiles' %}

### Extensions
{% include list-folder.html srcpath='extensions' %}

### CodeSystems
{% include list-folder.html srcpath='codesystems' %}

### ValueSets
{% include list-folder.html srcpath='valuesets' %}

### Examples
{% include list-folder.html srcpath='examples' %}

---

## 🧬 Artefactos generados por el Publisher

Se detectan por patrón de nombre (sin barra inicial).

### StructureDefinitions
<ul class="list">
{%- assign sdefs = site.pages | where_exp:'p','p.url and p.url contains "StructureDefinition-" and p.output_ext == ".html"' | sort: 'title' -%}
{%- for p in sdefs -%}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name | default: p.url }}</a></li>
{%- endfor -%}
{%- if sdefs == empty -%}
  <li><em>No StructureDefinitions found.</em></li>
{%- endif -%}
</ul>

### ValueSets
<ul class="list">
{%- assign vsets = site.pages | where_exp:'p','p.url and p.url contains "ValueSet-" and p.output_ext == ".html"' | sort: 'title' -%}
{%- for p in vsets -%}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name | default: p.url }}</a></li>
{%- endfor -%}
{%- if vsets == empty -%}
  <li><em>No ValueSets found.</em></li>
{%- endif -%}
</ul>

### CodeSystems
<ul class="list">
{%- assign csys = site.pages | where_exp:'p','p.url and p.url contains "CodeSystem-" and p.output_ext == ".html"' | sort: 'title' -%}
{%- for p in csys -%}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name | default: p.url }}</a></li>
{%- endfor -%}
{%- if csys == empty -%}
  <li><em>No CodeSystems found.</em></li>
{%- endif -%}
</ul>

### Examples (instancias)
<ul class="list">
{%- assign ex = site.pages | where_exp:'p','p.url and p.url contains "Example-" and p.output_ext == ".html"' | sort: 'title' -%}
{%- for p in ex -%}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name | default: p.url }}</a></li>
{%- endfor -%}
{%- if ex == empty -%}
  <li><em>No Examples found.</em></li>
{%- endif -%}
</ul>

<p><small>DEBUG: baseurl = <code>{{ site.baseurl }}</code> · url = <code>{{ site.url }}</code></small></p>
