---
id: account-info-dto
title: AccountInfoDto
pagination_label: AccountInfoDto
sidebar_label: AccountInfoDto
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'AccountInfoDto'] 
slug: /tools/sdk/powershell/beta/models/account-info-dto
tags: ['SDK', 'Software Development Kit', 'AccountInfoDto']
---


# AccountInfoDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NativeIdentity** |  Pointer to **String** | The unique ID of the account generated by the source system | [optional] 
**DisplayName** |  Pointer to **String** | Display name for this account | [optional] 
**Uuid** |  Pointer to **String** | UUID associated with this account | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountInfoDto = Initialize-PSSailpointBetaAccountInfoDto  -NativeIdentity CN&#x3D;Abby Smith,OU&#x3D;Austin,OU&#x3D;Americas,OU&#x3D;Demo,DC&#x3D;seri,DC&#x3D;acme,DC&#x3D;com `
 -DisplayName Abby.Smith `
 -Uuid {ad9fc391-246d-40af-b248-b6556a2b7c01}
```

- Convert the resource to JSON
```powershell
$AccountInfoDto | ConvertTo-JSON
```


[[Back to top]](#) 
