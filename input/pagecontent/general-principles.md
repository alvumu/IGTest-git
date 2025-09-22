---
title: General Principles
layout: default
---


# General Modeling Principles


## Implementation-centered design
- **Minimal but sufficient** profiles to cover key clinical indicators and reporting.
- **Compatibility** with R5 base resources.


## Terminology reuse
- **SNOMED CT** for clinical concepts.
- **LOINC** for observations/measurements.
- **UCUM** for units.
- **ICD-10** for secondary coding if required.


## Critical stroke timings
- Model *Door*, *Imaging*, *Needle*, *Groin puncture*, *Recanalization* times as `Observation` with timing profiles, and **reference event** + **offset** attributes when applicable.


## Data quality
- Cardinalities and `mustSupport` aligned with quality indicators.
- Invariants (FHIRPath) for consistency, e.g., if `Procedure.code = Thrombolysis` ⇒ *Needle* time must exist.


## Interoperability
- Avoid local concepts if standard equivalents exist; when local ones are used, map via `ConceptMap`.
