---
title: Gender (SNOMED CT) Extension
layout: default
navSection: extension
---

# GenderSNOMED (Extension)

**URL:** http://testSK.org/StructureDefinition/gender-snomed-ext  
**Id:** gender-snomed-ext · **Type:** `value[x] only CodeableConcept` (1..1)  
**Context:** `Patient`  
**Title:** Gender (SNOMED CT)  
**Description:** Patient gender represented with **SNOMED CT** codes.

## Binding
- `valueCodeableConcept` — **Required** to `GenderSNOMEDVS` (`http://testSK.org/ValueSet/vs-gender-snomed`)

**Example (excerpt):**
```json
{
  "resourceType": "Patient",
  "extension": [{
    "url": "http://testSK.org/StructureDefinition/gender-snomed-ext",
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "248153007",
        "display": "Male (finding)"
      }]
    }
  }]
}