

# IGTest — Index

Bienvenido. Aquí tienes una visión completa de los contenidos del IG, agrupados por **narrativas** (páginas Markdown) y **artefactos generados** (páginas que crea el Publisher).

> 📦 Resumen automático de artefactos: ver [Artifacts](artifacts.html).

---

## 🔖 Narrativas por carpeta

Las siguientes listas muestran **todas las páginas Markdown** incluidas en el sitio dentro de cada carpeta.  
(Se generan con `{% raw %}{% include list-folder.html %}{% endraw %}` y se actualizan automáticamente.)

### Profiles
{% include list-folder.html dir='profiles' %}

### Extensions
{% include list-folder.html dir='extensions' %}

### CodeSystems
{% include list-folder.html dir='codesystems' %}

### ValueSets
{% include list-folder.html dir='valuesets' %}

### Examples
{% include list-folder.html dir='examples' %}

---

## 🧬 Artefactos generados por el Publisher

A continuación se listan las páginas **auto-generadas** por el Publisher.  
Se detectan por su patrón de URL (por ejemplo, `StructureDefinition-*.html`).

### StructureDefinitions
<ul class="list">
{%- assign sdefs = site.pages | where_exp:'p','p.url and p.url contains "/StructureDefinition-" and p.output_ext == ".html"' | sort: 'title' -%}
{%- for p in sdefs -%}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name | default: p.url }}</a></li>
{%- endfor -%}
{%- if sdefs == empty -%}
  <li><em>No StructureDefinitions found.</em></li>
{%- endif -%}
</ul>

### ValueSets
<ul class="list">
{%- assign vsets = site.pages | where_exp:'p','p.url and p.url contains "/ValueSet-" and p.output_ext == ".html"' | sort: 'title' -%}
{%- for p in vsets -%}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name | default: p.url }}</a></li>
{%- endfor -%}
{%- if vsets == empty -%}
  <li><em>No ValueSets found.</em></li>
{%- endif -%}
</ul>

### CodeSystems
<ul class="list">
{%- assign csys = site.pages | where_exp:'p','p.url and p.url contains "/CodeSystem-" and p.output_ext == ".html"' | sort: 'title' -%}
{%- for p in csys -%}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name | default: p.url }}</a></li>
{%- endfor -%}
{%- if csys == empty -%}
  <li><em>No CodeSystems found.</em></li>
{%- endif -%}
</ul>

### Examples (instancias)
<ul class="list">
{%- assign ex = site.pages | where_exp:'p','p.url and p.url contains "/Example-" and p.output_ext == ".html"' | sort: 'title' -%}
{%- for p in ex -%}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name | default: p.url }}</a></li>
{%- endfor -%}
{%- if ex == empty -%}
  <li><em>No Examples found.</em></li>
{%- endif -%}
</ul>

---

<p><small>
DEBUG: baseurl = <code>{{ site.baseurl }}</code> · url = <code>{{ site.url }}</code>
</small></p>
