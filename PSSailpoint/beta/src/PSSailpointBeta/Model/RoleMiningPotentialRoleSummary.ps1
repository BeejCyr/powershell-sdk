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
Id of the potential role
.PARAMETER Name
Name of the potential role
.PARAMETER PotentialRoleRef
No description available.
.PARAMETER IdentityCount
The number of identities in a potential role.
.PARAMETER EntitlementCount
The number of entitlements in a potential role.
.PARAMETER IdentityGroupStatus
The status for this identity group which can be ""REQUESTED"" or ""OBTAINED""
.PARAMETER ProvisionState
No description available.
.PARAMETER RoleId
ID of the provisioned role in IIQ or IDN.  Null if this potential role has not been provisioned.
.PARAMETER Density
The density metric (0-100) of this potential role. Higher density values indicate higher similarity amongst the identities.
.PARAMETER Freshness
The freshness metric (0-100) of this potential role. Higher freshness values indicate this potential role is more distinctive compared to existing roles.
.PARAMETER Quality
The quality metric (0-100) of this potential role. Higher quality values indicate this potential role has high density and freshness.
.PARAMETER Type
No description available.
.PARAMETER Session
No description available.
.OUTPUTS

RoleMiningPotentialRoleSummary<PSCustomObject>
#>

function Initialize-BetaRoleMiningPotentialRoleSummary {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PotentialRoleRef},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentityCount},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EntitlementCount},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityGroupStatus},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("POTENTIAL", "PENDING", "COMPLETE", "FAILED")]
        [PSCustomObject]
        ${ProvisionState},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RoleId},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Density},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Freshness},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Quality},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SPECIALIZED", "COMMON")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Session}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRoleSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "potentialRoleRef" = ${PotentialRoleRef}
            "identityCount" = ${IdentityCount}
            "entitlementCount" = ${EntitlementCount}
            "identityGroupStatus" = ${IdentityGroupStatus}
            "provisionState" = ${ProvisionState}
            "roleId" = ${RoleId}
            "density" = ${Density}
            "freshness" = ${Freshness}
            "quality" = ${Quality}
            "type" = ${Type}
            "session" = ${Session}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningPotentialRoleSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningPotentialRoleSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningPotentialRoleSummary<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningPotentialRoleSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRoleSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningPotentialRoleSummary
        $AllProperties = ("id", "name", "potentialRoleRef", "identityCount", "entitlementCount", "identityGroupStatus", "provisionState", "roleId", "density", "freshness", "quality", "type", "session")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "potentialRoleRef"))) { #optional property not found
            $PotentialRoleRef = $null
        } else {
            $PotentialRoleRef = $JsonParameters.PSobject.Properties["potentialRoleRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementCount"))) { #optional property not found
            $EntitlementCount = $null
        } else {
            $EntitlementCount = $JsonParameters.PSobject.Properties["entitlementCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityGroupStatus"))) { #optional property not found
            $IdentityGroupStatus = $null
        } else {
            $IdentityGroupStatus = $JsonParameters.PSobject.Properties["identityGroupStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisionState"))) { #optional property not found
            $ProvisionState = $null
        } else {
            $ProvisionState = $JsonParameters.PSobject.Properties["provisionState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roleId"))) { #optional property not found
            $RoleId = $null
        } else {
            $RoleId = $JsonParameters.PSobject.Properties["roleId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "density"))) { #optional property not found
            $Density = $null
        } else {
            $Density = $JsonParameters.PSobject.Properties["density"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "freshness"))) { #optional property not found
            $Freshness = $null
        } else {
            $Freshness = $JsonParameters.PSobject.Properties["freshness"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "quality"))) { #optional property not found
            $Quality = $null
        } else {
            $Quality = $JsonParameters.PSobject.Properties["quality"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "session"))) { #optional property not found
            $Session = $null
        } else {
            $Session = $JsonParameters.PSobject.Properties["session"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "potentialRoleRef" = ${PotentialRoleRef}
            "identityCount" = ${IdentityCount}
            "entitlementCount" = ${EntitlementCount}
            "identityGroupStatus" = ${IdentityGroupStatus}
            "provisionState" = ${ProvisionState}
            "roleId" = ${RoleId}
            "density" = ${Density}
            "freshness" = ${Freshness}
            "quality" = ${Quality}
            "type" = ${Type}
            "session" = ${Session}
        }

        return $PSO
    }

}

