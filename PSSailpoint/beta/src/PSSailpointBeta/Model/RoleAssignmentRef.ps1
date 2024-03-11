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

.PARAMETER Id
Assignment Id
.PARAMETER Role
No description available.
.OUTPUTS

RoleAssignmentRef<PSCustomObject>
#>

function Initialize-BetaRoleAssignmentRef {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Role}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleAssignmentRef' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "role" = ${Role}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleAssignmentRef<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleAssignmentRef<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleAssignmentRef<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleAssignmentRef {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleAssignmentRef' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleAssignmentRef
        $AllProperties = ("id", "role")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "role"))) { #optional property not found
            $Role = $null
        } else {
            $Role = $JsonParameters.PSobject.Properties["role"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "role" = ${Role}
        }

        return $PSO
    }

}

