---
id: role-assignment-ref
title: RoleAssignmentRef
pagination_label: RoleAssignmentRef
sidebar_label: RoleAssignmentRef
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'RoleAssignmentRef'] 
slug: /tools/sdk/powershell/beta/models/role-assignment-ref
tags: ['SDK', 'Software Development Kit', 'RoleAssignmentRef']
---


# RoleAssignmentRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** |  Pointer to **String** | Assignment Id | [optional] 
**Role** |  Pointer to [**BaseReferenceDto**](base-reference-dto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleAssignmentRef = Initialize-PSSailpointBetaRoleAssignmentRef  -Id 1cbb0705b38c4226b1334eadd8874086 `
 -Role null
```

- Convert the resource to JSON
```powershell
$RoleAssignmentRef | ConvertTo-JSON
```


[[Back to top]](#) 
