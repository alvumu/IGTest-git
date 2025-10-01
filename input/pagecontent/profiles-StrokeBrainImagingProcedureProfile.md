---
title: Stroke Brain Imaging Procedure Profile (R5)
layout: default
navSection: profiles
---

# StrokeBrainImagingProcedureProfile (Procedure)

**URL:** http://testSK.org/StructureDefinition/stroke-brain-imaging-procedure-profile  
**Version:** 1.2.0 · **Status:** active · **Base:** Procedure (R5)

**Purpose:** Record **brain imaging** procedures with status, timing, reasons-not-done, and timing **context**.

## Must Support
`code`, `status`, `statusReason`, `occurrence[x]`, `extension[timingContext]`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Procedure.code` | 1..1 | ✓ | **Required** binding to `BrainImagingModalityVS` |
| `Procedure.status` | 1..1 | ✓ | From `event-status` |
| `Procedure.statusReason` | 0..1 | ✓ | **Required** binding to `StrokeProcNotDoneReasonVS` when used |
| `Procedure.occurrence[x]` | 0..1 | ✓ | Date/DateTime/Period of the procedure |
| `Procedure.extension(timingContext)` | 0..1 | ✓ | `ProcedureTimingContextExtension` |

**Invariant:**  
- **reason-required-if-not-done:** If `status = 'not-done'`, then `statusReason` **must** be present.

**Example (excerpt):**  
- `status = completed`  
- `code = SCT#419949007` (*CTA intracranial artery with contrast*)  
- `occurrenceDateTime = 2025-03-01T10:00:00Z`  
- `extension[timingContext] = ProcedureTimingContextCS#acute`
