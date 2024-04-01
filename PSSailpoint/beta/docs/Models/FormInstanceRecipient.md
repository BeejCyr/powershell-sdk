---
id: form-instance-recipient
title: FormInstanceRecipient
pagination_label: FormInstanceRecipient
sidebar_label: FormInstanceRecipient
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'FormInstanceRecipient'] 
slug: /tools/sdk/powershell/beta/models/form-instance-recipient
tags: ['SDK', 'Software Development Kit', 'FormInstanceRecipient']
---


# FormInstanceRecipient

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** |  Pointer to **String** | ID is a unique identifier | [optional] 
**Type** |  Pointer to  **Enum** [  "IDENTITY" ] | Type is a FormInstanceRecipientType value IDENTITY FormInstanceRecipientIdentity | [optional] 

## Examples

- Prepare the resource
```powershell
$FormInstanceRecipient = Initialize-PSSailpointBetaFormInstanceRecipient  -Id 00000000-0000-0000-0000-000000000000 `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$FormInstanceRecipient | ConvertTo-JSON
```


[[Back to top]](#) 
