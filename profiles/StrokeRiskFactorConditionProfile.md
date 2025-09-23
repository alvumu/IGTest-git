
## StrokeRiskFactorConditionProfile (Condition)

**Purpose:** Represent a **known condition or risk factor** relevant to stroke (e.g., AF, diabetes, hypertension) on the problem list; optionally includes “unknown/absent” patterns via IPS ValueSet.

**Profile URL:** `http://testSK.org/ig/stroke-ig/StructureDefinition/stroke-risk-factor-condition-profile`  
**Base:** `Condition` (R5)  
**Type:** Constraint on `Condition`

### Must Support
`clinicalStatus`, `verificationStatus`, `category`, `code`, `subject`, `onset[x]`, `recordedDate`, `encounter`

### Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Condition.category` | 1..* | ✓ | Fixed to `CondCat#problem-list-item` (*Problem List Item*) |
| `Condition.code` | 1..1 | ✓ | **Required** binding to `StrokeRiskFactorVS` (includes SNOMED and unknown/absent IPS VS) |
| `Condition.subject` | 1..1 | ✓ | `Reference(Patient)` |
| `Condition.encounter` | 0..1 | ✓ | `Reference(Encounter)` – optional link to episode |
| `Condition.onset[x]` | 0..1 | ✓ | Use when known |
| `Condition.recordedDate` | 0..1 | ✓ | Capture when it was recorded |
| `Condition.clinicalStatus` | 0..1 | ✓ | Values from `ClinicalStatusCondCS` |
| `Condition.verificationStatus` | 0..1 | ✓ | Values from `CondVerStatus` |

**Terminology:**
- **Risk Factor:** `StrokeRiskFactorVS` (required)

**Examples:**
- [`Condition/StrokeDiagnosisConditionAFlutter`](../examples/Condition-StrokeDiagnosisConditionAFlutter.json)  
- [`Condition/StrokeDiagnosisConditionAFib`](../examples/Condition-StrokeDiagnosisConditionAFib.json)  
- [`Condition/StrokeRiskFactorConditionExample`](../examples/Condition-StrokeRiskFactorConditionExample.json)

