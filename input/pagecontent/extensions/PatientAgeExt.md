---
title: Patient Age (integer) Extension
layout: default
navSection: extension
---

# PatientAge (Extension)

**URL:** http://testSK.org/StructureDefinition/patient-age-ext  
**Id:** patient-age-ext · **Type:** `value[x] only integer` (1..1)  
**Context:** `Patient`  
**Title:** Patient Age (integer)  
**Description:** Patient age in years represented as an **integer**.

## Element Constraints
- `valueInteger` (1..1) — *Age in years (integer)*

**Example (excerpt):**
```json
{
  "resourceType": "Patient",
  "extension": [{
    "url": "http://testSK.org/StructureDefinition/patient-age-ext",
    "valueInteger": 45
  }]
}
