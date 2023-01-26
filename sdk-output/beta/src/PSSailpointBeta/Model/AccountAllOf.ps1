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

.PARAMETER SourceId
No description available.
.PARAMETER IdentityId
No description available.
.PARAMETER Attributes
No description available.
.PARAMETER Authoritative
No description available.
.PARAMETER Description
No description available.
.PARAMETER Disabled
No description available.
.PARAMETER Locked
No description available.
.PARAMETER NativeIdentity
No description available.
.PARAMETER SystemAccount
No description available.
.PARAMETER Uncorrelated
No description available.
.PARAMETER Uuid
No description available.
.PARAMETER ManuallyCorrelated
No description available.
.PARAMETER HasEntitlements
No description available.
.OUTPUTS

AccountAllOf<PSCustomObject>
#>

function Initialize-BetaAccountAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Authoritative},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Disabled},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Locked},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NativeIdentity},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SystemAccount},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Uncorrelated},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ManuallyCorrelated},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasEntitlements}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccountAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "sourceId" = ${SourceId}
            "identityId" = ${IdentityId}
            "attributes" = ${Attributes}
            "authoritative" = ${Authoritative}
            "description" = ${Description}
            "disabled" = ${Disabled}
            "locked" = ${Locked}
            "nativeIdentity" = ${NativeIdentity}
            "systemAccount" = ${SystemAccount}
            "uncorrelated" = ${Uncorrelated}
            "uuid" = ${Uuid}
            "manuallyCorrelated" = ${ManuallyCorrelated}
            "hasEntitlements" = ${HasEntitlements}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountAllOf<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccountAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccountAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccountAllOf
        $AllProperties = ("sourceId", "identityId", "attributes", "authoritative", "description", "disabled", "locked", "nativeIdentity", "systemAccount", "uncorrelated", "uuid", "manuallyCorrelated", "hasEntitlements")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authoritative"))) { #optional property not found
            $Authoritative = $null
        } else {
            $Authoritative = $JsonParameters.PSobject.Properties["authoritative"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disabled"))) { #optional property not found
            $Disabled = $null
        } else {
            $Disabled = $JsonParameters.PSobject.Properties["disabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locked"))) { #optional property not found
            $Locked = $null
        } else {
            $Locked = $JsonParameters.PSobject.Properties["locked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentity"))) { #optional property not found
            $NativeIdentity = $null
        } else {
            $NativeIdentity = $JsonParameters.PSobject.Properties["nativeIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "systemAccount"))) { #optional property not found
            $SystemAccount = $null
        } else {
            $SystemAccount = $JsonParameters.PSobject.Properties["systemAccount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uncorrelated"))) { #optional property not found
            $Uncorrelated = $null
        } else {
            $Uncorrelated = $JsonParameters.PSobject.Properties["uncorrelated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manuallyCorrelated"))) { #optional property not found
            $ManuallyCorrelated = $null
        } else {
            $ManuallyCorrelated = $JsonParameters.PSobject.Properties["manuallyCorrelated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasEntitlements"))) { #optional property not found
            $HasEntitlements = $null
        } else {
            $HasEntitlements = $JsonParameters.PSobject.Properties["hasEntitlements"].value
        }

        $PSO = [PSCustomObject]@{
            "sourceId" = ${SourceId}
            "identityId" = ${IdentityId}
            "attributes" = ${Attributes}
            "authoritative" = ${Authoritative}
            "description" = ${Description}
            "disabled" = ${Disabled}
            "locked" = ${Locked}
            "nativeIdentity" = ${NativeIdentity}
            "systemAccount" = ${SystemAccount}
            "uncorrelated" = ${Uncorrelated}
            "uuid" = ${Uuid}
            "manuallyCorrelated" = ${ManuallyCorrelated}
            "hasEntitlements" = ${HasEntitlements}
        }

        return $PSO
    }

}
