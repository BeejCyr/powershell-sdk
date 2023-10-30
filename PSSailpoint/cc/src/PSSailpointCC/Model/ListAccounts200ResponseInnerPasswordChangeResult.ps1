#
# IdentityNow cc (private) APIs
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER CompletionStatus
No description available.
.OUTPUTS

ListAccounts200ResponseInnerPasswordChangeResult<PSCustomObject>
#>

function Initialize-CCListAccounts200ResponseInnerPasswordChangeResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CompletionStatus}
    )

    Process {
        'Creating PSCustomObject: PSSailpointCC => CCListAccounts200ResponseInnerPasswordChangeResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "completionStatus" = ${CompletionStatus}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListAccounts200ResponseInnerPasswordChangeResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListAccounts200ResponseInnerPasswordChangeResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListAccounts200ResponseInnerPasswordChangeResult<PSCustomObject>
#>
function ConvertFrom-CCJsonToListAccounts200ResponseInnerPasswordChangeResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointCC => CCListAccounts200ResponseInnerPasswordChangeResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CCListAccounts200ResponseInnerPasswordChangeResult
        $AllProperties = ("completionStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completionStatus"))) { #optional property not found
            $CompletionStatus = $null
        } else {
            $CompletionStatus = $JsonParameters.PSobject.Properties["completionStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "completionStatus" = ${CompletionStatus}
        }

        return $PSO
    }

}

