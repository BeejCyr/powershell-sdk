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

Allows the query results to be filtered by specifying a list of fields to include and/or exclude from the result documents.

.PARAMETER Includes
The list of field names to include in the result documents.
.PARAMETER Excludes
The list of field names to exclude from the result documents.
.OUTPUTS

QueryResultFilter<PSCustomObject>
#>

function Initialize-QueryResultFilter {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Includes},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Excludes}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => QueryResultFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "includes" = ${Includes}
            "excludes" = ${Excludes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to QueryResultFilter<PSCustomObject>

.DESCRIPTION

Convert from JSON to QueryResultFilter<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

QueryResultFilter<PSCustomObject>
#>
function ConvertFrom-JsonToQueryResultFilter {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => QueryResultFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in QueryResultFilter
        $AllProperties = ("includes", "excludes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includes"))) { #optional property not found
            $Includes = $null
        } else {
            $Includes = $JsonParameters.PSobject.Properties["includes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "excludes"))) { #optional property not found
            $Excludes = $null
        } else {
            $Excludes = $JsonParameters.PSobject.Properties["excludes"].value
        }

        $PSO = [PSCustomObject]@{
            "includes" = ${Includes}
            "excludes" = ${Excludes}
        }

        return $PSO
    }

}
