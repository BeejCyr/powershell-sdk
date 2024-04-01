---
id: translation-message
title: TranslationMessage
pagination_label: TranslationMessage
sidebar_label: TranslationMessage
sidebar_class_name: powershellsdk
keywords: ['go', 'golang', 'sdk', 'TranslationMessage'] 
slug: /tools/sdk/powershell/beta/models/translation-message
tags: ['SDK', 'Software Development Kit', 'TranslationMessage']
---


# TranslationMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** |  Pointer to **String** | The key of the translation message | [optional] 
**Values** |  Pointer to **[]String** | The values corresponding to the translation messages | [optional] 

## Examples

- Prepare the resource
```powershell
$TranslationMessage = Initialize-PSSailpointBetaTranslationMessage  -Key recommender-api.V2_WEIGHT_FEATURE_PRODUCT_INTERPRETATION_HIGH `
 -Values [75, department]
```

- Convert the resource to JSON
```powershell
$TranslationMessage | ConvertTo-JSON
```


[[Back to top]](#) 
