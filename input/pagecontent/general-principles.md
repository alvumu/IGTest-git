---
title: General Principles
layout: default
---

# General Modeling Principles

## Implementation-centered design
- **Minimal but sufficient** profiles to cover key clinical indicators and reporting needs.
- **Compatibility** with R5 base resources.

## Terminology reuse
- **SNOMED CT** for clinical concepts.
- **LOINC** for observations/measurements.
- **UCUM** for units.
- **ICD-10** for secondary coding when required.

## Critical stroke timings
- Model *Door*, *Imaging*, *Needle*, *Groin puncture*, and *Recanalization* times as `Observation` with timing-focused profiles, including **reference event** + **offset** attributes where applicable.

## Data quality
- Cardinalities and `mustSupport` aligned with quality indicators.
- Invariants (FHIRPath) to ensure consistency; e.g., if `Procedure.code = Thrombolysis` ⇒ a *Needle* time must exist.

## Interoperability
- Avoid local concepts when standard equivalents exist; when local codes are necessary, map them via `ConceptMap`.
