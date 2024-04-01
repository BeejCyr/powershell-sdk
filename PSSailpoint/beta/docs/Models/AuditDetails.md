---
id: audit-details
title: AuditDetails
pagination_label: AuditDetails
sidebar_label: AuditDetails
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'AuditDetails'] 
slug: /tools/sdk/powershell/beta/models/audit-details
tags: ['SDK', 'Software Development Kit', 'AuditDetails']
---


# AuditDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** |  Pointer to **System.DateTime** | Initial date and time when the record was created | [optional] 
**CreatedBy** |  Pointer to [**Identity1**](identity1) |  | [optional] 
**Modified** |  Pointer to **System.DateTime** | Last modified date and time for the record | [optional] 
**ModifiedBy** |  Pointer to [**Identity1**](identity1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditDetails = Initialize-PSSailpointBetaAuditDetails  -Created 2022-07-21T11:13:12.345Z `
 -CreatedBy null `
 -Modified 2022-07-21T11:13:12.345Z `
 -ModifiedBy null
```

- Convert the resource to JSON
```powershell
$AuditDetails | ConvertTo-JSON
```


[[Back to top]](#) 
