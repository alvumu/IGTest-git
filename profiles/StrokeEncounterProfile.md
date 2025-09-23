

# StrokeEncounterProfile (Encounter)

**Purpose:** Represent the hospital episode of care for an acute stroke.

## Profile Summary
- **Base:** `Encounter` (R5)
- **Profile URL:** `http://testSK.org/ig/stroke-ig/StructureDefinition/StrokeEncounterProfile`
- **Type:** Constraint on `Encounter`
- **Must Support:** `class`, `status`, `subject`, `period`, `serviceProvider`, `diagnosis.condition` (primary), `location`, `participant` (team), `reason`

## Elements and Constraints
| Element | Card. | Must Support | Binding/Notes |
|---|---:|:---:|---|
| `Encounter.status` | 1..1 | ✓ | `finished` at discharge |
| `Encounter.class` | 1..1 | ✓ | Inpatient – use standard coding |
| `Encounter.type` | 0..* |  | VS: stroke encounter types |
| `Encounter.reason` | 0..* | ✓ | Primary `Condition`: stroke diagnosis |
| `Encounter.diagnosis` | 0..* | ✓ | Link to stroke/risk-factor `Condition` |
| `Encounter.period` | 0..1 | ✓ | Admission/discharge |
| `Encounter.location` | 0..* | ✓ | ICU, ED, ward… |
| `Encounter.extension(first-hospital)` | 0..1 | ✓ | `ext-first-hospital` |
| `Encounter.extension(initial-care-intensity)` | 0..1 | ✓ | `ext-initial-care-intensity` |

**Invariants (FHIRPath):**
- `status = 'finished' implies period.end.exists()`

## Terminologies
- **Class:** *inpatient* (standard)
- **Type:** `StrokeEncounterTypeVS`
- **Care intensity:** `InitialCareIntensityVS`

## Examples
- [`Encounter/stroke-enc-001`](../examples/Encounter-stroke-enc-001.json)
