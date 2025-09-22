---
title: StrokeEncounterProfile
layout: profile
author: Clinical-FHIR Team
---


# StrokeEncounterProfile (Encounter)


**Propósito:** Representar el episodio hospitalario de atención al ictus.


## Resumen del perfil
- **Base:** `Encounter` (R5)
- **URL del perfil:** `http://testSK.org/ig/stroke-ig/StructureDefinition/StrokeEncounterProfile`
- **Tipo:** Constraint sobre `Encounter`
- **Must Support:** `class`, `status`, `subject`, `period`, `serviceProvider`, `diagnosis.condition` (principal), `location`, `participant` (equipo), `reason`


## Elementos y restricciones
| Elemento | Card. | Must Support | Binding/Notes |
|---|---:|:---:|---|
| `Encounter.status` | 1..1 | ✓ | `finished` al alta |
| `Encounter.class` | 1..1 | ✓ | Inpatient – usar coding estándar |
| `Encounter.type` | 0..* | | VS: tipos de episodio ictus |
| `Encounter.reason` | 0..* | ✓ | `Condition` principal: diagnóstico ictus |
| `Encounter.diagnosis` | 0..* | ✓ | Vincular a `Condition` de ictus/factores de riesgo |
| `Encounter.period` | 0..1 | ✓ | Ingreso/alta |
| `Encounter.location` | 0..* | ✓ | UCI, Urgencias, planta… |
| `Encounter.extension(first-hospital)` | 0..1 | ✓ | `ext-first-hospital` |
| `Encounter.extension(initial-care-intensity)` | 0..1 | ✓ | `ext-initial-care-intensity` |


**Invariantes (FHIRPath):**
- `status = 'finished' implies period.end.exists()`


## Terminologías
- **Class:** *inpatient* (estándar)
- **Type:** `StrokeEncounterTypeVS`
- **Care intensity:** `InitialCareIntensityVS`


## Ejemplos
- [`Encounter/stroke-enc-001`](../examples/Encounter-stroke-enc-001.json)
