#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
System-generated unique ID of the Object
.PARAMETER Name
Name of the Object
.PARAMETER Created
Creation date of the Object
.PARAMETER Modified
Last modification date of the Object
.PARAMETER SourceId
The unique ID of the source this account belongs to
.PARAMETER SourceName
The display name of the source this account belongs to
.PARAMETER IdentityId
The unique ID of the identity this account is correlated to
.PARAMETER Attributes
The account attributes that are aggregated
.PARAMETER Authoritative
Indicates if this account is from an authoritative source
.PARAMETER Description
A description of the account
.PARAMETER Disabled
Indicates if the account is currently disabled
.PARAMETER Locked
Indicates if the account is currently locked
.PARAMETER NativeIdentity
The unique ID of the account generated by the source system
.PARAMETER SystemAccount
If true, this is a user account within IdentityNow.  If false, this is an account from a source system.
.PARAMETER Uncorrelated
Indicates if this account is not correlated to an identity
.PARAMETER Uuid
The unique ID of the account as determined by the account schema
.PARAMETER ManuallyCorrelated
Indicates if the account has been manually correlated to an identity
.PARAMETER HasEntitlements
Indicates if the account has entitlements
.PARAMETER Identity
No description available.
.PARAMETER SourceOwner
No description available.
.OUTPUTS

Account<PSCustomObject>
#>

function Initialize-Account {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Authoritative},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Disabled},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Locked},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NativeIdentity},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${SystemAccount},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Uncorrelated},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${ManuallyCorrelated},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${HasEntitlements},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Identity},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SourceOwner}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => Account' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $SourceId) {
            throw "invalid value for 'SourceId', 'SourceId' cannot be null."
        }

        if ($null -eq $SourceName) {
            throw "invalid value for 'SourceName', 'SourceName' cannot be null."
        }

        if ($null -eq $Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }

        if ($null -eq $Authoritative) {
            throw "invalid value for 'Authoritative', 'Authoritative' cannot be null."
        }

        if ($null -eq $Disabled) {
            throw "invalid value for 'Disabled', 'Disabled' cannot be null."
        }

        if ($null -eq $Locked) {
            throw "invalid value for 'Locked', 'Locked' cannot be null."
        }

        if ($null -eq $NativeIdentity) {
            throw "invalid value for 'NativeIdentity', 'NativeIdentity' cannot be null."
        }

        if ($null -eq $SystemAccount) {
            throw "invalid value for 'SystemAccount', 'SystemAccount' cannot be null."
        }

        if ($null -eq $Uncorrelated) {
            throw "invalid value for 'Uncorrelated', 'Uncorrelated' cannot be null."
        }

        if ($null -eq $ManuallyCorrelated) {
            throw "invalid value for 'ManuallyCorrelated', 'ManuallyCorrelated' cannot be null."
        }

        if ($null -eq $HasEntitlements) {
            throw "invalid value for 'HasEntitlements', 'HasEntitlements' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
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
            "identity" = ${Identity}
            "sourceOwner" = ${SourceOwner}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Account<PSCustomObject>

.DESCRIPTION

Convert from JSON to Account<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Account<PSCustomObject>
#>
function ConvertFrom-JsonToAccount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => Account' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Account
        $AllProperties = ("id", "name", "created", "modified", "sourceId", "sourceName", "identityId", "attributes", "authoritative", "description", "disabled", "locked", "nativeIdentity", "systemAccount", "uncorrelated", "uuid", "manuallyCorrelated", "hasEntitlements", "identity", "sourceOwner")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceId' missing."
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceName' missing."
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authoritative"))) {
            throw "Error! JSON cannot be serialized due to the required property 'authoritative' missing."
        } else {
            $Authoritative = $JsonParameters.PSobject.Properties["authoritative"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'disabled' missing."
        } else {
            $Disabled = $JsonParameters.PSobject.Properties["disabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locked"))) {
            throw "Error! JSON cannot be serialized due to the required property 'locked' missing."
        } else {
            $Locked = $JsonParameters.PSobject.Properties["locked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentity"))) {
            throw "Error! JSON cannot be serialized due to the required property 'nativeIdentity' missing."
        } else {
            $NativeIdentity = $JsonParameters.PSobject.Properties["nativeIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "systemAccount"))) {
            throw "Error! JSON cannot be serialized due to the required property 'systemAccount' missing."
        } else {
            $SystemAccount = $JsonParameters.PSobject.Properties["systemAccount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uncorrelated"))) {
            throw "Error! JSON cannot be serialized due to the required property 'uncorrelated' missing."
        } else {
            $Uncorrelated = $JsonParameters.PSobject.Properties["uncorrelated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manuallyCorrelated"))) {
            throw "Error! JSON cannot be serialized due to the required property 'manuallyCorrelated' missing."
        } else {
            $ManuallyCorrelated = $JsonParameters.PSobject.Properties["manuallyCorrelated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasEntitlements"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hasEntitlements' missing."
        } else {
            $HasEntitlements = $JsonParameters.PSobject.Properties["hasEntitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identity"))) { #optional property not found
            $Identity = $null
        } else {
            $Identity = $JsonParameters.PSobject.Properties["identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceOwner"))) { #optional property not found
            $SourceOwner = $null
        } else {
            $SourceOwner = $JsonParameters.PSobject.Properties["sourceOwner"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
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
            "identity" = ${Identity}
            "sourceOwner" = ${SourceOwner}
        }

        return $PSO
    }

}

