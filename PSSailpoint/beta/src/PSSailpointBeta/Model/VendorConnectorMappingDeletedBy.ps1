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

An object representing the nullable identifier of the user who deleted the mapping.

.PARAMETER String
The identifier of the user who deleted the mapping, if applicable.
.PARAMETER Valid
A flag indicating if the 'String' field is set and valid, i.e., if the mapping has been deleted.
.OUTPUTS

VendorConnectorMappingDeletedBy<PSCustomObject>
#>

function Initialize-BetaVendorConnectorMappingDeletedBy {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${String},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Valid} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaVendorConnectorMappingDeletedBy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "String" = ${String}
            "Valid" = ${Valid}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VendorConnectorMappingDeletedBy<PSCustomObject>

.DESCRIPTION

Convert from JSON to VendorConnectorMappingDeletedBy<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VendorConnectorMappingDeletedBy<PSCustomObject>
#>
function ConvertFrom-BetaJsonToVendorConnectorMappingDeletedBy {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaVendorConnectorMappingDeletedBy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaVendorConnectorMappingDeletedBy
        $AllProperties = ("String", "Valid")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "String"))) { #optional property not found
            $String = $null
        } else {
            $String = $JsonParameters.PSobject.Properties["String"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Valid"))) { #optional property not found
            $Valid = $null
        } else {
            $Valid = $JsonParameters.PSobject.Properties["Valid"].value
        }

        $PSO = [PSCustomObject]@{
            "String" = ${String}
            "Valid" = ${Valid}
        }

        return $PSO
    }

}

