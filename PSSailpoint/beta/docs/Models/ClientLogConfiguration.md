---
id: client-log-configuration
title: ClientLogConfiguration
pagination_label: ClientLogConfiguration
sidebar_label: ClientLogConfiguration
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'ClientLogConfiguration'] 
slug: /tools/sdk/powershell/beta/models/client-log-configuration
tags: ['SDK', 'Software Development Kit', 'ClientLogConfiguration']
---


# ClientLogConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** |  Pointer to **String** | Log configuration&#39;s client ID | [optional] 
**DurationMinutes** |  **Int32** | Duration in minutes for log configuration to remain in effect before resetting to defaults | 
**Expiration** |  Pointer to **System.DateTime** | Expiration date-time of the log configuration request | [optional] 
**RootLevel** |  [**StandardLevel**](standard-level) |  | 
**LogLevels** |  Pointer to [**map[string]StandardLevel**](standard-level) | Mapping of identifiers to Standard Log Level values | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientLogConfiguration = Initialize-PSSailpointBetaClientLogConfiguration  -ClientId aClientId `
 -DurationMinutes 120 `
 -Expiration 2020-12-15T19:13:36.079Z `
 -RootLevel null `
 -LogLevels INFO
```

- Convert the resource to JSON
```powershell
$ClientLogConfiguration | ConvertTo-JSON
```


[[Back to top]](#) 
