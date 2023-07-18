#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER DetailCode
No description available.
.PARAMETER Messages
No description available.
.PARAMETER StatusCode
No description available.
.PARAMETER TrackingId
No description available.
.OUTPUTS

SearchFormDefinitionsByTenant400Response<PSCustomObject>
#>

function Initialize-BetaSearchFormDefinitionsByTenant400Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DetailCode},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Messages},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${StatusCode},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TrackingId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSearchFormDefinitionsByTenant400Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "detailCode" = ${DetailCode}
            "messages" = ${Messages}
            "statusCode" = ${StatusCode}
            "trackingId" = ${TrackingId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SearchFormDefinitionsByTenant400Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to SearchFormDefinitionsByTenant400Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SearchFormDefinitionsByTenant400Response<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSearchFormDefinitionsByTenant400Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSearchFormDefinitionsByTenant400Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSearchFormDefinitionsByTenant400Response
        $AllProperties = ("detailCode", "messages", "statusCode", "trackingId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "detailCode"))) { #optional property not found
            $DetailCode = $null
        } else {
            $DetailCode = $JsonParameters.PSobject.Properties["detailCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messages"))) { #optional property not found
            $Messages = $null
        } else {
            $Messages = $JsonParameters.PSobject.Properties["messages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusCode"))) { #optional property not found
            $StatusCode = $null
        } else {
            $StatusCode = $JsonParameters.PSobject.Properties["statusCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trackingId"))) { #optional property not found
            $TrackingId = $null
        } else {
            $TrackingId = $JsonParameters.PSobject.Properties["trackingId"].value
        }

        $PSO = [PSCustomObject]@{
            "detailCode" = ${DetailCode}
            "messages" = ${Messages}
            "statusCode" = ${StatusCode}
            "trackingId" = ${TrackingId}
        }

        return $PSO
    }

}

