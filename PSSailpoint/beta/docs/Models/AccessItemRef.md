---
id: access-item-ref
title: AccessItemRef
pagination_label: AccessItemRef
sidebar_label: AccessItemRef
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'AccessItemRef'] 
slug: /tools/sdk/powershell/beta/models/access-item-ref
tags: ['SDK', 'Software Development Kit', 'AccessItemRef']
---


# AccessItemRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** |  Pointer to **String** | ID of the access item to retrieve the recommendation for. | [optional] 
**Type** |  Pointer to  **Enum** [  "ENTITLEMENT",    "ACCESS_PROFILE",    "ROLE" ] | Access item&#39;s type. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemRef = Initialize-PSSailpointBetaAccessItemRef  -Id 2c938083633d259901633d2623ec0375 `
 -Type ENTITLEMENT
```

- Convert the resource to JSON
```powershell
$AccessItemRef | ConvertTo-JSON
```


[[Back to top]](#) 
