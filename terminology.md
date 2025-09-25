

# Terminology

Terminology artifacts used in this IG.

- **ValueSets** (bindings for profiles):  
  See the list below and **[Artifacts](artifacts.html)** for generated binding tables.

{% include list-folder.html srcpath="pagecontent/valuesets"   navSection="valuesets"   %}

---

- **CodeSystems** (custom code systems defined by this IG):  

{% include list-folder.html srcpath="pagecontent/codesystems" navSection="codesystems" %}


## Binding Strength Quick Guide

- **Required:** only codes from the bound ValueSet are allowed.  
- **Extensible:** prefer the ValueSet; use external codes only if no suitable match exists.  
- **Preferred / Example:** advisory.

