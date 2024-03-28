---
id: account-attributes
title: AccountAttributes
pagination_label: AccountAttributes
sidebar_label: AccountAttributes
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'AccountAttributes'] 
slug: /tools/sdk/powershell/beta/models/account-attributes
tags: ['SDK', 'Software Development Kit', 'AccountAttributes']
---


# AccountAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** |  [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-8.0 | The schema attribute values for the account | 

## Examples

- Prepare the resource
```powershell
$AccountAttributes = Initialize-PSSailpointBetaAccountAttributes  -Attributes {city&#x3D;Austin, displayName&#x3D;John Doe, userName&#x3D;jdoe, sAMAccountName&#x3D;jDoe, mail&#x3D;john.doe@sailpoint.com}
```

- Convert the resource to JSON
```powershell
$AccountAttributes | ConvertTo-JSON
```


[[Back to top]](#) 
