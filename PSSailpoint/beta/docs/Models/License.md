---
id: license
title: License
pagination_label: License
sidebar_label: License
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'License'] 
slug: /tools/sdk/powershell/beta/models/license
tags: ['SDK', 'Software Development Kit', 'License']
---


# License

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LicenseId** |  Pointer to **String** | Name of the license | [optional] 
**LegacyFeatureName** |  Pointer to **String** | Legacy name of the license | [optional] 

## Examples

- Prepare the resource
```powershell
$License = Initialize-PSSailpointBetaLicense  -LicenseId idn:access-request `
 -LegacyFeatureName ACCESS_REQUEST
```

- Convert the resource to JSON
```powershell
$License | ConvertTo-JSON
```


[[Back to top]](#) 
