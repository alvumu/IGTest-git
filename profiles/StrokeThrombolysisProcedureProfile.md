

# StrokeThrombolysisProcedureProfile (Procedure)

**URL:** http://testSK.org/StructureDefinition/stroke-mechanical-procedure-profile  
**Version:** 1.2.0 · **Status:** active · **Base:** Procedure

**Purpose:** Record **IV thrombolysis / arterial thrombectomy** with timing, reasons-not-done, complications, and context.

## Must Support
`code`, `status`, `statusReason`, `occurrence[x]`, `complication`, `extension[timingContext]`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Procedure.code` | 1..1 | ✓ | **Required** binding to `PerforationProceduresVS` (thrombolysis/thrombectomy) |
| `Procedure.status` | 1..1 | ✓ | From `event-status` |
| `Procedure.statusReason` | 0..1 | ✓ | **Required** binding to `StrokeProcNotDoneReasonVS` when used |
| `Procedure.occurrence[x]` | 0..1 | ✓ | **Only `Period`** (start/end supported) |
| `Procedure.complication` | 0..* | ✓ | `CodeableReference(Condition)` |
| `Procedure.extension(timingContext)` | 0..1 | ✓ | `ProcedureTimingContextExtension` |

**Invariants:**  
- **mt-not-done-reason-binding:** If code = `SCT#397046001` (thrombectomy) and `status = 'not-done'`, then `statusReason` **must** memberOf `StrokeProcNotDoneReasonVS`.  
- **ivt-not-done-reason-binding:** If code = `SCT#472191000119101` (IV thrombolysis) and `status = 'not-done'`, then `statusReason` **must** memberOf `StrokeProcNotDoneReasonVS`.  
- **mt-complication-only-if-completed:** If `complication` exists, then code must be thrombectomy and `status = 'completed'`.

**Example (excerpt):**  
- `code = SCT#472191000119101` (*IV thrombolysis*), `status = completed`  
- `occurrencePeriod.start/end = 2025-03-01T10:00:00Z / 10:30:00Z`  
- `extension[timingContext] = ProcedureTimingContextCS#unknown`
