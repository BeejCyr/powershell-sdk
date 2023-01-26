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

Managed Client

.PARAMETER Id
ManagedClient ID
.PARAMETER AlertKey
ManagedClient alert key
.PARAMETER ApiGatewayBaseUrl
ManagedClient gateway base url
.PARAMETER CcId
Previous CC ID to be used in data migration. (This field will be deleted after CC migration!)
.PARAMETER ClientId
The client ID used in API management
.PARAMETER ClusterId
Cluster ID that the ManagedClient is linked to
.PARAMETER Cookbook
VA cookbook
.PARAMETER Description
ManagedClient description
.PARAMETER IpAddress
The public IP address of the ManagedClient
.PARAMETER LastSeen
When the ManagedClient was last seen by the server
.PARAMETER Name
ManagedClient name
.PARAMETER SinceLastSeen
Milliseconds since the ManagedClient has polled the server
.PARAMETER Status
Status of the ManagedClient
.PARAMETER Type
Type of the ManagedClient (VA, CCG)
.PARAMETER VaDownloadUrl
ManagedClient VA download URL
.PARAMETER VaVersion
Version that the ManagedClient's VA is running
.PARAMETER Secret
Client's apiKey
.OUTPUTS

ManagedClient<PSCustomObject>
#>

function Initialize-BetaManagedClient {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AlertKey},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApiGatewayBaseUrl},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${CcId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClientId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClusterId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Cookbook},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IpAddress},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastSeen},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SinceLastSeen},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VaDownloadUrl},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VaVersion},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Secret}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaManagedClient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ClientId) {
            throw "invalid value for 'ClientId', 'ClientId' cannot be null."
        }

        if ($null -eq $ClusterId) {
            throw "invalid value for 'ClusterId', 'ClusterId' cannot be null."
        }

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "alertKey" = ${AlertKey}
            "apiGatewayBaseUrl" = ${ApiGatewayBaseUrl}
            "ccId" = ${CcId}
            "clientId" = ${ClientId}
            "clusterId" = ${ClusterId}
            "cookbook" = ${Cookbook}
            "description" = ${Description}
            "ipAddress" = ${IpAddress}
            "lastSeen" = ${LastSeen}
            "name" = ${Name}
            "sinceLastSeen" = ${SinceLastSeen}
            "status" = ${Status}
            "type" = ${Type}
            "vaDownloadUrl" = ${VaDownloadUrl}
            "vaVersion" = ${VaVersion}
            "secret" = ${Secret}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ManagedClient<PSCustomObject>

.DESCRIPTION

Convert from JSON to ManagedClient<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ManagedClient<PSCustomObject>
#>
function ConvertFrom-BetaJsonToManagedClient {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaManagedClient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaManagedClient
        $AllProperties = ("id", "alertKey", "apiGatewayBaseUrl", "ccId", "clientId", "clusterId", "cookbook", "description", "ipAddress", "lastSeen", "name", "sinceLastSeen", "status", "type", "vaDownloadUrl", "vaVersion", "secret")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'clientId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'clientId' missing."
        } else {
            $ClientId = $JsonParameters.PSobject.Properties["clientId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clusterId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'clusterId' missing."
        } else {
            $ClusterId = $JsonParameters.PSobject.Properties["clusterId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alertKey"))) { #optional property not found
            $AlertKey = $null
        } else {
            $AlertKey = $JsonParameters.PSobject.Properties["alertKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "apiGatewayBaseUrl"))) { #optional property not found
            $ApiGatewayBaseUrl = $null
        } else {
            $ApiGatewayBaseUrl = $JsonParameters.PSobject.Properties["apiGatewayBaseUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ccId"))) { #optional property not found
            $CcId = $null
        } else {
            $CcId = $JsonParameters.PSobject.Properties["ccId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cookbook"))) { #optional property not found
            $Cookbook = $null
        } else {
            $Cookbook = $JsonParameters.PSobject.Properties["cookbook"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ipAddress"))) { #optional property not found
            $IpAddress = $null
        } else {
            $IpAddress = $JsonParameters.PSobject.Properties["ipAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastSeen"))) { #optional property not found
            $LastSeen = $null
        } else {
            $LastSeen = $JsonParameters.PSobject.Properties["lastSeen"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sinceLastSeen"))) { #optional property not found
            $SinceLastSeen = $null
        } else {
            $SinceLastSeen = $JsonParameters.PSobject.Properties["sinceLastSeen"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "vaDownloadUrl"))) { #optional property not found
            $VaDownloadUrl = $null
        } else {
            $VaDownloadUrl = $JsonParameters.PSobject.Properties["vaDownloadUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "vaVersion"))) { #optional property not found
            $VaVersion = $null
        } else {
            $VaVersion = $JsonParameters.PSobject.Properties["vaVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secret"))) { #optional property not found
            $Secret = $null
        } else {
            $Secret = $JsonParameters.PSobject.Properties["secret"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "alertKey" = ${AlertKey}
            "apiGatewayBaseUrl" = ${ApiGatewayBaseUrl}
            "ccId" = ${CcId}
            "clientId" = ${ClientId}
            "clusterId" = ${ClusterId}
            "cookbook" = ${Cookbook}
            "description" = ${Description}
            "ipAddress" = ${IpAddress}
            "lastSeen" = ${LastSeen}
            "name" = ${Name}
            "sinceLastSeen" = ${SinceLastSeen}
            "status" = ${Status}
            "type" = ${Type}
            "vaDownloadUrl" = ${VaDownloadUrl}
            "vaVersion" = ${VaVersion}
            "secret" = ${Secret}
        }

        return $PSO
    }

}
