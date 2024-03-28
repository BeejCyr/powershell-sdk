---
id: reassignment
title: Reassignment
pagination_label: Reassignment
sidebar_label: Reassignment
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'Reassignment'] 
slug: /tools/sdk/powershell/v3/models/reassignment
tags: ['SDK', 'Software Development Kit', 'Reassignment']
---


# Reassignment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFrom** |  Pointer to [**CertificationReference**](certification-reference) |  | [optional] 
**Comment** |  Pointer to **String** | The comment entered when the Certification was reassigned | [optional] 

## Examples

- Prepare the resource
```powershell
$Reassignment = Initialize-PSSailpointReassignment  -VarFrom null `
 -Comment Reassigned for a reason
```

- Convert the resource to JSON
```powershell
$Reassignment | ConvertTo-JSON
```


[[Back to top]](#) 
