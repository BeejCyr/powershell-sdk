# Name
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the saved search.  | [optional] 
**Description** | **String** | The description of the saved search.  | [optional] 

## Examples

- Prepare the resource
```powershell
$Name = Initialize-PSSailpointName  -Name Disabled accounts `
 -Description Disabled accounts
```

- Convert the resource to JSON
```powershell
$Name | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
