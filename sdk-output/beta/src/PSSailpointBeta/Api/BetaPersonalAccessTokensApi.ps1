#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create Personal Access Token

.DESCRIPTION

No description available.

.PARAMETER CreatePersonalAccessTokenRequest
Name and scope of personal access token.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

CreatePersonalAccessTokenResponse
#>
function New-BetaPersonalAccessToken {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CreatePersonalAccessTokenRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-BetaPersonalAccessToken' | Write-Debug
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
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/personal-access-tokens'

        if (!$CreatePersonalAccessTokenRequest) {
            throw "Error! The required parameter `CreatePersonalAccessTokenRequest` missing when calling createPersonalAccessToken."
        }

        $LocalVarBodyParameter = $CreatePersonalAccessTokenRequest | ConvertTo-Json -Depth 100



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "CreatePersonalAccessTokenResponse" `
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

Delete Personal Access Token

.DESCRIPTION

No description available.

.PARAMETER Id
The personal access token id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-BetaDeletePersonalAccessToken {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-BetaDeletePersonalAccessToken' | Write-Debug
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

        $LocalVarUri = '/personal-access-tokens/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling deletePersonalAccessToken."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))



        $LocalVarResult = Invoke-BetaApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
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

List Personal Access Tokens

.DESCRIPTION

No description available.

.PARAMETER OwnerId
The identity ID of the owner whose personal access tokens should be listed.  If ""me"", the caller should have the following right: 'idn:my-personal-access-tokens:read' If an actual owner ID or if the `owner-id` parameter is omitted in the request,  the caller should have the following right: 'idn:all-personal-access-tokens:read'.  If the caller has the following right, then managed personal access tokens associated with `owner-id` will be retrieved: 'idn:managed-personal-access-tokens:read'

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetPersonalAccessTokenResponse[]
#>
function Invoke-BetaListPersonalAccessTokens {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${OwnerId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-BetaListPersonalAccessTokens' | Write-Debug
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

        $LocalVarUri = '/personal-access-tokens'

        if ($OwnerId) {
            $LocalVarQueryParameters['owner-id'] = $OwnerId
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "GetPersonalAccessTokenResponse[]" `
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

Patch Personal Access Token

.DESCRIPTION

No description available.

.PARAMETER Id
The Personal Access Token id

.PARAMETER JsonPatchOperation
A list of OAuth client update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * scope 

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetPersonalAccessTokenResponse
#>
function Invoke-BetaPatchPersonalAccessToken {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${JsonPatchOperation},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-BetaPatchPersonalAccessToken' | Write-Debug
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

        $LocalVarUri = '/personal-access-tokens/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling patchPersonalAccessToken."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if (!$JsonPatchOperation) {
            throw "Error! The required parameter `JsonPatchOperation` missing when calling patchPersonalAccessToken."
        }

        $LocalVarBodyParameter = $JsonPatchOperation | ConvertTo-Json -Depth 100



        $LocalVarResult = Invoke-BetaApiClient -Method 'PATCH' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "GetPersonalAccessTokenResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}
