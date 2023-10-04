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

.PARAMETER Name
Unique name of this transform
.PARAMETER Type
The type of transform operation
.PARAMETER Attributes
No description available.
.PARAMETER Id
Unique ID of this transform
.PARAMETER Internal
Indicates whether this is an internal SailPoint-created transform or a customer-created transform
.OUTPUTS

TransformRead<PSCustomObject>
#>

function Initialize-TransformRead {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("accountAttribute", "base64Decode", "base64Encode", "concat", "conditional", "dateCompare", "dateFormat", "dateMath", "decomposeDiacriticalMarks", "e164phone", "firstValid", "rule", "identityAttribute", "indexOf", "iso3166", "lastIndexOf", "leftPad", "lookup", "lower", "normalizeNames", "randomAlphaNumeric", "randomNumeric", "reference", "replaceAll", "replace", "rightPad", "split", "static", "substring", "trim", "upper", "usernameGenerator", "uuid")]
        [String]
        ${Type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Internal} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => TransformRead' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 50) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 50."
        }

        if ($Name.length -lt 1) {
            throw "invalid value for 'Name', the character length must be great than or equal to 1."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Internal) {
            throw "invalid value for 'Internal', 'Internal' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "id" = ${Id}
            "internal" = ${Internal}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TransformRead<PSCustomObject>

.DESCRIPTION

Convert from JSON to TransformRead<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TransformRead<PSCustomObject>
#>
function ConvertFrom-JsonToTransformRead {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => TransformRead' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TransformRead
        $AllProperties = ("name", "type", "attributes", "id", "internal")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "internal"))) {
            throw "Error! JSON cannot be serialized due to the required property 'internal' missing."
        } else {
            $Internal = $JsonParameters.PSobject.Properties["internal"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "id" = ${Id}
            "internal" = ${Internal}
        }

        return $PSO
    }

}

