#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Lifecycle State

.DESCRIPTION

No description available.

.PARAMETER IdentityProfileId
Identity Profile ID

.PARAMETER LifecycleStateId
Lifecycle State ID

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

LifecycleState
#>
function Get-BetaLifecycleStates {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IdentityProfileId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${LifecycleStateId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-BetaLifecycleStates' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-BetaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id}'
        if (!$IdentityProfileId) {
            throw "Error! The required parameter `IdentityProfileId` missing when calling listLifecycleStates."
        }
        $LocalVarUri = $LocalVarUri.replace('{identity-profile-id}', [System.Web.HTTPUtility]::UrlEncode($IdentityProfileId))
        if (!$LifecycleStateId) {
            throw "Error! The required parameter `LifecycleStateId` missing when calling listLifecycleStates."
        }
        $LocalVarUri = $LocalVarUri.replace('{lifecycle-state-id}', [System.Web.HTTPUtility]::UrlEncode($LifecycleStateId))



        $LocalVarResult = Invoke-BetaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "LifecycleState" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update Lifecycle State

.DESCRIPTION

No description available.

.PARAMETER IdentityProfileId
Identity Profile ID

.PARAMETER LifecycleStateId
Lifecycle State ID

.PARAMETER JsonPatchOperation
A list of lifecycle state update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields can be updated: * enabled * description * accountActions * accessProfileIds * emailNotificationOption 

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

LifecycleState
#>
function Update-BetaLifecycleStates {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IdentityProfileId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${LifecycleStateId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${JsonPatchOperation},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-BetaLifecycleStates' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-BetaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json-patch+json')

        $LocalVarUri = '/identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id}'
        if (!$IdentityProfileId) {
            throw "Error! The required parameter `IdentityProfileId` missing when calling updateLifecycleStates."
        }
        $LocalVarUri = $LocalVarUri.replace('{identity-profile-id}', [System.Web.HTTPUtility]::UrlEncode($IdentityProfileId))
        if (!$LifecycleStateId) {
            throw "Error! The required parameter `LifecycleStateId` missing when calling updateLifecycleStates."
        }
        $LocalVarUri = $LocalVarUri.replace('{lifecycle-state-id}', [System.Web.HTTPUtility]::UrlEncode($LifecycleStateId))

        if (!$JsonPatchOperation) {
            throw "Error! The required parameter `JsonPatchOperation` missing when calling updateLifecycleStates."
        }

        $LocalVarBodyParameter = $JsonPatchOperation | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'PATCH' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "LifecycleState" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}
