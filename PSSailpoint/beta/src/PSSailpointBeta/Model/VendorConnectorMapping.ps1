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
The unique identifier for the vendor-connector mapping.
.PARAMETER Vendor
The name of the vendor.
.PARAMETER Connector
The name of the connector.
.PARAMETER CreatedAt
The creation timestamp of the mapping.
.PARAMETER CreatedBy
The identifier of the user who created the mapping.
.PARAMETER UpdatedAt
No description available.
.PARAMETER UpdatedBy
No description available.
.PARAMETER DeletedAt
No description available.
.PARAMETER DeletedBy
No description available.
.OUTPUTS

VendorConnectorMapping<PSCustomObject>
#>

function Initialize-BetaVendorConnectorMapping {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Vendor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Connector},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UpdatedAt},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UpdatedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DeletedAt},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DeletedBy}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaVendorConnectorMapping' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "vendor" = ${Vendor}
            "connector" = ${Connector}
            "createdAt" = ${CreatedAt}
            "createdBy" = ${CreatedBy}
            "updatedAt" = ${UpdatedAt}
            "updatedBy" = ${UpdatedBy}
            "deletedAt" = ${DeletedAt}
            "deletedBy" = ${DeletedBy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VendorConnectorMapping<PSCustomObject>

.DESCRIPTION

Convert from JSON to VendorConnectorMapping<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VendorConnectorMapping<PSCustomObject>
#>
function ConvertFrom-BetaJsonToVendorConnectorMapping {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaVendorConnectorMapping' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaVendorConnectorMapping
        $AllProperties = ("id", "vendor", "connector", "createdAt", "createdBy", "updatedAt", "updatedBy", "deletedAt", "deletedBy")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "vendor"))) { #optional property not found
            $Vendor = $null
        } else {
            $Vendor = $JsonParameters.PSobject.Properties["vendor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connector"))) { #optional property not found
            $Connector = $null
        } else {
            $Connector = $JsonParameters.PSobject.Properties["connector"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdBy"))) { #optional property not found
            $CreatedBy = $null
        } else {
            $CreatedBy = $JsonParameters.PSobject.Properties["createdBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) { #optional property not found
            $UpdatedAt = $null
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedBy"))) { #optional property not found
            $UpdatedBy = $null
        } else {
            $UpdatedBy = $JsonParameters.PSobject.Properties["updatedBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deletedAt"))) { #optional property not found
            $DeletedAt = $null
        } else {
            $DeletedAt = $JsonParameters.PSobject.Properties["deletedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deletedBy"))) { #optional property not found
            $DeletedBy = $null
        } else {
            $DeletedBy = $JsonParameters.PSobject.Properties["deletedBy"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "vendor" = ${Vendor}
            "connector" = ${Connector}
            "createdAt" = ${CreatedAt}
            "createdBy" = ${CreatedBy}
            "updatedAt" = ${UpdatedAt}
            "updatedBy" = ${UpdatedBy}
            "deletedAt" = ${DeletedAt}
            "deletedBy" = ${DeletedBy}
        }

        return $PSO
    }

}

