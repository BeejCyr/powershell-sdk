---
id: identity-snapshot-summary-response
title: IdentitySnapshotSummaryResponse
pagination_label: IdentitySnapshotSummaryResponse
sidebar_label: IdentitySnapshotSummaryResponse
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'IdentitySnapshotSummaryResponse'] 
slug: /tools/sdk/powershell/beta/models/identity-snapshot-summary-response
tags: ['SDK', 'Software Development Kit', 'IdentitySnapshotSummaryResponse']
---


# IdentitySnapshotSummaryResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Snapshot** |  Pointer to **String** | the date when the identity record was created | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentitySnapshotSummaryResponse = Initialize-PSSailpointBetaIdentitySnapshotSummaryResponse  -Snapshot 2007-03-01T13:00:00.000Z
```

- Convert the resource to JSON
```powershell
$IdentitySnapshotSummaryResponse | ConvertTo-JSON
```


[[Back to top]](#) 
