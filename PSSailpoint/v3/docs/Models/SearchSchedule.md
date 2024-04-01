---
id: search-schedule
title: SearchSchedule
pagination_label: SearchSchedule
sidebar_label: SearchSchedule
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'SearchSchedule'] 
slug: /tools/sdk/powershell/v3/models/search-schedule
tags: ['SDK', 'Software Development Kit', 'SearchSchedule']
---


# SearchSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SavedSearchId** |  **String** | The ID of the saved search that will be executed. | 
**Created** |  Pointer to **System.DateTime** | The date the scheduled search was initially created. | [optional] [readonly] 
**Modified** |  Pointer to **System.DateTime** | The last date the scheduled search was modified. | [optional] [readonly] 
**Schedule** |  [**Schedule1**](schedule1) |  | 
**Recipients** |  [**[]SearchScheduleRecipientsInner**](search-schedule-recipients-inner) | A list of identities that should receive the scheduled search report via email. | 
**Enabled** |  Pointer to **Boolean** | Indicates if the scheduled search is enabled.  | [optional] [default to $false]
**EmailEmptyResults** |  Pointer to **Boolean** | Indicates if email generation should occur when search returns no results.  | [optional] [default to $false]
**DisplayQueryDetails** |  Pointer to **Boolean** | Indicates if the generated email should include the query and search results preview (which could include PII).  | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SearchSchedule = Initialize-PSSailpointSearchSchedule  -SavedSearchId 554f1511-f0a1-4744-ab14-599514d3e57c `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Schedule null `
 -Recipients null `
 -Enabled false `
 -EmailEmptyResults false `
 -DisplayQueryDetails false
```

- Convert the resource to JSON
```powershell
$SearchSchedule | ConvertTo-JSON
```


[[Back to top]](#) 
