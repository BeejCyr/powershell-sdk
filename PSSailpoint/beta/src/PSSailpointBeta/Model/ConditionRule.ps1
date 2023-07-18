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

.PARAMETER Operator
Operator is a ConditionRuleComparisonOperatorType value EQ ConditionRuleComparisonOperatorTypeEquals  ConditionRuleComparisonOperatorTypeEquals is a comparison operator, the source and target are compared for equality NE ConditionRuleComparisonOperatorTypeNotEquals  ConditionRuleComparisonOperatorTypeNotEquals is a comparison operator, the source and target are compared for the opposite of equality CO ConditionRuleComparisonOperatorTypeContains  ConditionRuleComparisonOperatorTypeContains is a comparison operator, the source is searched to see if it contains the value NOT_CO ConditionRuleComparisonOperatorTypeNotContains IN ConditionRuleComparisonOperatorTypeIncludes  ConditionRuleComparisonOperatorTypeIncludes is a comparison operator, the source will be searched if it equals any of the values NOT_IN ConditionRuleComparisonOperatorTypeNotIncludes EM ConditionRuleComparisonOperatorTypeEmpty NOT_EM ConditionRuleComparisonOperatorTypeNotEmpty SW ConditionRuleComparisonOperatorTypeStartsWith  ConditionRuleComparisonOperatorTypeStartsWith checks if a string starts with another substring of the same string, this operator is case-sensitive NOT_SW ConditionRuleComparisonOperatorTypeNotStartsWith EW ConditionRuleComparisonOperatorTypeEndsWith  ConditionRuleComparisonOperatorTypeEndsWith checks if a string ends with another substring of the same string, this operator is case-sensitive NOT_EW ConditionRuleComparisonOperatorTypeNotEndsWith
.PARAMETER Source
Source, if the sourceType is ConditionRuleSourceTypeInput then the source type is the name of the form input to accept. While if the sourceType is ConditionRuleSourceTypeElement then source is the name of a technical key of an element to retrieve its value
.PARAMETER SourceType
SourceType defines what type of object is being selected. Either a reference to a form input (by input name), or a form element (by technical key) INPUT ConditionRuleSourceTypeInput ELEMENT ConditionRuleSourceTypeElement
.PARAMETER Value
Value is the value based on the ValueType
.PARAMETER ValueType
ValueType is a ConditionRuleValueType type STRING ConditionRuleValueTypeString  ConditionRuleValueTypeString the value field is a static string STRING_LIST ConditionRuleValueTypeStringList  ConditionRuleValueTypeStringList the value field is an array of string values INPUT ConditionRuleValueTypeInput  ConditionRuleValueTypeInput the value field is a reference to a form input by ELEMENT ConditionRuleValueTypeElement  ConditionRuleValueTypeElement the value field is a reference to form element (by technical key) LIST ConditionRuleValueTypeList BOOLEAN ConditionRuleValueTypeBoolean
.OUTPUTS

ConditionRule<PSCustomObject>
#>

function Initialize-BetaConditionRule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EQ", "NE", "CO", "NOT_CO", "IN", "NOT_IN", "EM", "NOT_EM", "SW", "NOT_SW", "EW", "NOT_EW")]
        [String]
        ${Operator},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Source},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INPUT", "ELEMENT")]
        [String]
        ${SourceType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Value},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STRING", "STRING_LIST", "INPUT", "ELEMENT", "LIST", "BOOLEAN")]
        [String]
        ${ValueType}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaConditionRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "operator" = ${Operator}
            "source" = ${Source}
            "sourceType" = ${SourceType}
            "value" = ${Value}
            "valueType" = ${ValueType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConditionRule<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConditionRule<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConditionRule<PSCustomObject>
#>
function ConvertFrom-BetaJsonToConditionRule {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaConditionRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaConditionRule
        $AllProperties = ("operator", "source", "sourceType", "value", "valueType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operator"))) { #optional property not found
            $Operator = $null
        } else {
            $Operator = $JsonParameters.PSobject.Properties["operator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceType"))) { #optional property not found
            $SourceType = $null
        } else {
            $SourceType = $JsonParameters.PSobject.Properties["sourceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueType"))) { #optional property not found
            $ValueType = $null
        } else {
            $ValueType = $JsonParameters.PSobject.Properties["valueType"].value
        }

        $PSO = [PSCustomObject]@{
            "operator" = ${Operator}
            "source" = ${Source}
            "sourceType" = ${SourceType}
            "value" = ${Value}
            "valueType" = ${ValueType}
        }

        return $PSO
    }

}

