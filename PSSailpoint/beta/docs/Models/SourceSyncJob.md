---
id: source-sync-job
title: SourceSyncJob
pagination_label: SourceSyncJob
sidebar_label: SourceSyncJob
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'SourceSyncJob'] 
slug: /tools/sdk/powershell/beta/models/source-sync-job
tags: ['SDK', 'Software Development Kit', 'SourceSyncJob']
---


# SourceSyncJob

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** |  **String** | Job ID. | 
**Status** |   **Enum** [  "QUEUED",    "IN_PROGRESS",    "SUCCESS",    "ERROR" ] | The job status. | 
**Payload** |  [**SourceSyncPayload**](source-sync-payload) |  | 

## Examples

- Prepare the resource
```powershell
$SourceSyncJob = Initialize-PSSailpointBetaSourceSyncJob  -Id 0f11f2a4-7c94-4bf3-a2bd-742580fe3bde `
 -Status IN_PROGRESS `
 -Payload null
```

- Convert the resource to JSON
```powershell
$SourceSyncJob | ConvertTo-JSON
```


[[Back to top]](#) 
