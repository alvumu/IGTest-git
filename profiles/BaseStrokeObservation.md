

# BaseStrokeObservation (Observation)

**URL:** http://testSK.org/StructureDefinition/base-stroke-observation  
**Version:** 1.0.0 · **Status:** active  
**Base:** Observation (R5)

**Purpose:** Common constraints for **stroke-related observations**.

## Must Support
`status`, `subject`, `encounter`, `effective[x]`, `partOf`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Observation.status` | 1..1 | ✓ | Fixed to `final` |
| `Observation.subject` | 1..1 | ✓ | `Reference(Patient)` |
| `Observation.encounter` | 1..1 | ✓ | `Reference(Encounter)` |
| `Observation.effective[x]` | 0..1 | ✓ | Effective time of observation |
| `Observation.partOf` | 0..1 | ✓ | `Reference(Procedure)` (e.g., related procedure) |
