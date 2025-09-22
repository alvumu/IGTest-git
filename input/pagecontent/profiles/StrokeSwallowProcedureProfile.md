---
title: Stroke Swallow Procedure Profile
layout: default
navSection: profiles
---

# StrokeSwallowProcedureProfile (Procedure)

**URL:** http://testSK.org/StructureDefinition/stroke-swallow-procedure-profile  
**Version:** 1.2.0 · **Status:** active · **Base:** Procedure

**Purpose:** Record **swallow screening/assessments** (e.g., GUSS, V-VST) with timing category and procedure context.

## Must Support
`code`, `status`, `used.concept`, `occurrence[x]`, `extension[screeningTimingCategory]`, `extension[timingContext]`, `statusReason` (when not-done)

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Procedure.code` | 1..1 | ✓ | **Required** binding to `SwallowProceduresVS` |
| `Procedure.status` | 1..1 | ✓ | From `event-status` |
| `Procedure.statusReason` | 0..1 | ✓ | **Required** binding to `StrokeProcNotDoneReasonVS` when used |
| `Procedure.used.concept` | 0..1 | ✓ | Tool used; when completed, **should** memberOf screening tool VS (see invariant) |
| `Procedure.occurrence[x]` | 0..1 | ✓ | Date/DateTime |
| `Procedure.extension(screeningTimingCategory)` | 0..1 | ✓ | `SwallowingScreeningTimingCategoryExt` |
| `Procedure.extension(timingContext)` | 0..1 | ✓ | `ProcedureTimingContextExtension` |

**Invariants:**  
- **screening-tool-required** *(warning)*: If code memberOf screening tool VS and `status = 'completed'`, then `used.concept` **must** exist and memberOf that VS.  
- **screening-timing-required** *(error)*: If code memberOf screening tool VS and `status = 'completed'`, then the **timing category extension** **must** exist.

> Note: Replace “screening tool VS” with your actual canonical ValueSet URL when available.

**Example (excerpt):**  
- `code = SCT#1290000005` (*Gugging Swallowing Screen*), `status = completed`  
- `extension[screeningTimingCategory] = SwallowScreenTimeCS#T4H`  
- `extension[timingContext] = ProcedureTimingContextCS#acute`  
- `used.concept = SCT#1290000005`  
- `occurrenceDateTime = 2025-03-01T10:00:00Z`
