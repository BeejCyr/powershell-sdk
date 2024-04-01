---
id: template-bulk-delete-dto
title: TemplateBulkDeleteDto
pagination_label: TemplateBulkDeleteDto
sidebar_label: TemplateBulkDeleteDto
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'TemplateBulkDeleteDto'] 
slug: /tools/sdk/powershell/beta/models/template-bulk-delete-dto
tags: ['SDK', 'Software Development Kit', 'TemplateBulkDeleteDto']
---


# TemplateBulkDeleteDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** |  **String** |  | 
**Medium** |  Pointer to  **Enum** [  "EMAIL",    "PHONE",    "SMS" ] |  | [optional] 
**Locale** |  Pointer to **String** | The locale for the message text, a BCP 47 language tag. | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateBulkDeleteDto = Initialize-PSSailpointBetaTemplateBulkDeleteDto  -Key cloud_manual_work_item_summary `
 -Medium EMAIL `
 -Locale en
```

- Convert the resource to JSON
```powershell
$TemplateBulkDeleteDto | ConvertTo-JSON
```


[[Back to top]](#) 
