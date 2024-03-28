---
id: identity-document-all-of-identity-profile
title: IdentityDocumentAllOfIdentityProfile
pagination_label: IdentityDocumentAllOfIdentityProfile
sidebar_label: IdentityDocumentAllOfIdentityProfile
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'IdentityDocumentAllOfIdentityProfile'] 
slug: /tools/sdk/powershell/v3/models/identity-document-all-of-identity-profile
tags: ['SDK', 'Software Development Kit', 'IdentityDocumentAllOfIdentityProfile']
---


# IdentityDocumentAllOfIdentityProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** |  Pointer to **String** | Identity profile&#39;s ID. | [optional] 
**Name** |  Pointer to **String** | Identity profile&#39;s name. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityDocumentAllOfIdentityProfile = Initialize-PSSailpointIdentityDocumentAllOfIdentityProfile  -Id 3bc8ad26b8664945866b31339d1ff7d2 `
 -Name HR Employees
```

- Convert the resource to JSON
```powershell
$IdentityDocumentAllOfIdentityProfile | ConvertTo-JSON
```


[[Back to top]](#) 
