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

.PARAMETER Name
SOD Policy schedule name
.PARAMETER Created
The time when this SOD policy schedule is created.
.PARAMETER Modified
The time when this SOD policy schedule is modified.
.PARAMETER Description
SOD Policy schedule description
.PARAMETER Schedule
No description available.
.PARAMETER Recipients
No description available.
.PARAMETER EmailEmptyResults
Indicates if empty results need to be emailed
.PARAMETER CreatorId
Policy's creator ID
.PARAMETER ModifierId
Policy's modifier ID
.OUTPUTS

SodPolicySchedule<PSCustomObject>
#>

function Initialize-BetaSodPolicySchedule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Schedule},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Recipients},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EmailEmptyResults},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatorId},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ModifierId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSodPolicySchedule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "schedule" = ${Schedule}
            "recipients" = ${Recipients}
            "emailEmptyResults" = ${EmailEmptyResults}
            "creatorId" = ${CreatorId}
            "modifierId" = ${ModifierId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SodPolicySchedule<PSCustomObject>

.DESCRIPTION

Convert from JSON to SodPolicySchedule<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SodPolicySchedule<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSodPolicySchedule {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSodPolicySchedule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSodPolicySchedule
        $AllProperties = ("name", "created", "modified", "description", "schedule", "recipients", "emailEmptyResults", "creatorId", "modifierId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "schedule"))) { #optional property not found
            $Schedule = $null
        } else {
            $Schedule = $JsonParameters.PSobject.Properties["schedule"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipients"))) { #optional property not found
            $Recipients = $null
        } else {
            $Recipients = $JsonParameters.PSobject.Properties["recipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailEmptyResults"))) { #optional property not found
            $EmailEmptyResults = $null
        } else {
            $EmailEmptyResults = $JsonParameters.PSobject.Properties["emailEmptyResults"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "creatorId"))) { #optional property not found
            $CreatorId = $null
        } else {
            $CreatorId = $JsonParameters.PSobject.Properties["creatorId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modifierId"))) { #optional property not found
            $ModifierId = $null
        } else {
            $ModifierId = $JsonParameters.PSobject.Properties["modifierId"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "schedule" = ${Schedule}
            "recipients" = ${Recipients}
            "emailEmptyResults" = ${EmailEmptyResults}
            "creatorId" = ${CreatorId}
            "modifierId" = ${ModifierId}
        }

        return $PSO
    }

}
