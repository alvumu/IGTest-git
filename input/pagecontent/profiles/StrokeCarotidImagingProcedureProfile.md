---
title: Stroke Carotid Imaging Procedure Profile
layout: profile
---

# StrokeCarotidImagingProcedureProfile (Procedure)

**URL:** http://testSK.org/StructureDefinition/stroke-carotid-imaging-procedure-profile  
**Version:** 1.2.0 · **Status:** active · **Base:** Procedure

**Purpose:** Record **carotid imaging** procedures with status and timing context.

## Must Support
`code`, `status`, `statusReason`, `occurrence[x]`, `extension[timingContext]`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Procedure.code` | 1..1 | ✓ | Fixed to `SCT#58920005` (*Carotid angiography*) |
| `Procedure.status` | 1..1 | ✓ | From `event-status` |
| `Procedure.statusReason` | 0..1 | ✓ | **Required** binding to `StrokeProcNotDoneReasonVS` when used |
| `Procedure.occurrence[x]` | 0..1 | ✓ | Period/DateTime |
| `Procedure.extension(timingContext)` | 0..1 | ✓ | `ProcedureTimingContextExtension` |

**Example (excerpt):**  
- `status = not-done`, `statusReason = StrokeProcNotDoneReasonCS#unknown`  
- `extension[timingContext] = ProcedureTimingContextCS#post-acute`
