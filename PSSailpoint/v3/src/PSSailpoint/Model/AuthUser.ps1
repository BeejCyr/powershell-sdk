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

.PARAMETER Tenant
Tenant name.
.PARAMETER Id
Identity ID.
.PARAMETER Uid
Identity unique identitifier.
.PARAMETER VarProfile
ID of the auth profile associated with this auth user.
.PARAMETER IdentificationNumber
Auth user employee number.
.PARAMETER Email
Auth user's email.
.PARAMETER Phone
Auth user's phone number.
.PARAMETER WorkPhone
Auth user's work phone number.
.PARAMETER PersonalEmail
Auth user's personal email.
.PARAMETER Firstname
Auth user's first name.
.PARAMETER Lastname
Auth user's last name.
.PARAMETER DisplayName
Auth user's name in displayed format.
.PARAMETER Alias
Auth user's alias.
.PARAMETER LastPasswordChangeDate
the date of last password change
.PARAMETER LastLoginTimestamp
Timestamp of the last login (long type value).
.PARAMETER CurrentLoginTimestamp
Timestamp of the current login (long type value).
.PARAMETER Capabilities
Array of capabilities for this auth user.
.OUTPUTS

AuthUser<PSCustomObject>
#>

function Initialize-AuthUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Tenant},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uid},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarProfile},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentificationNumber},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkPhone},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PersonalEmail},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Firstname},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Lastname},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Alias},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastPasswordChangeDate},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${LastLoginTimestamp},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${CurrentLoginTimestamp},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Capabilities}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => AuthUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "tenant" = ${Tenant}
            "id" = ${Id}
            "uid" = ${Uid}
            "profile" = ${VarProfile}
            "identificationNumber" = ${IdentificationNumber}
            "email" = ${Email}
            "phone" = ${Phone}
            "workPhone" = ${WorkPhone}
            "personalEmail" = ${PersonalEmail}
            "firstname" = ${Firstname}
            "lastname" = ${Lastname}
            "displayName" = ${DisplayName}
            "alias" = ${Alias}
            "lastPasswordChangeDate" = ${LastPasswordChangeDate}
            "lastLoginTimestamp" = ${LastLoginTimestamp}
            "currentLoginTimestamp" = ${CurrentLoginTimestamp}
            "capabilities" = ${Capabilities}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AuthUser<PSCustomObject>

.DESCRIPTION

Convert from JSON to AuthUser<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AuthUser<PSCustomObject>
#>
function ConvertFrom-JsonToAuthUser {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => AuthUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AuthUser
        $AllProperties = ("tenant", "id", "uid", "profile", "identificationNumber", "email", "phone", "workPhone", "personalEmail", "firstname", "lastname", "displayName", "alias", "lastPasswordChangeDate", "lastLoginTimestamp", "currentLoginTimestamp", "capabilities")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tenant"))) { #optional property not found
            $Tenant = $null
        } else {
            $Tenant = $JsonParameters.PSobject.Properties["tenant"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uid"))) { #optional property not found
            $Uid = $null
        } else {
            $Uid = $JsonParameters.PSobject.Properties["uid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "profile"))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties["profile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identificationNumber"))) { #optional property not found
            $IdentificationNumber = $null
        } else {
            $IdentificationNumber = $JsonParameters.PSobject.Properties["identificationNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phone"))) { #optional property not found
            $Phone = $null
        } else {
            $Phone = $JsonParameters.PSobject.Properties["phone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workPhone"))) { #optional property not found
            $WorkPhone = $null
        } else {
            $WorkPhone = $JsonParameters.PSobject.Properties["workPhone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "personalEmail"))) { #optional property not found
            $PersonalEmail = $null
        } else {
            $PersonalEmail = $JsonParameters.PSobject.Properties["personalEmail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstname"))) { #optional property not found
            $Firstname = $null
        } else {
            $Firstname = $JsonParameters.PSobject.Properties["firstname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastname"))) { #optional property not found
            $Lastname = $null
        } else {
            $Lastname = $JsonParameters.PSobject.Properties["lastname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alias"))) { #optional property not found
            $Alias = $null
        } else {
            $Alias = $JsonParameters.PSobject.Properties["alias"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastPasswordChangeDate"))) { #optional property not found
            $LastPasswordChangeDate = $null
        } else {
            $LastPasswordChangeDate = $JsonParameters.PSobject.Properties["lastPasswordChangeDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastLoginTimestamp"))) { #optional property not found
            $LastLoginTimestamp = $null
        } else {
            $LastLoginTimestamp = $JsonParameters.PSobject.Properties["lastLoginTimestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "currentLoginTimestamp"))) { #optional property not found
            $CurrentLoginTimestamp = $null
        } else {
            $CurrentLoginTimestamp = $JsonParameters.PSobject.Properties["currentLoginTimestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "capabilities"))) { #optional property not found
            $Capabilities = $null
        } else {
            $Capabilities = $JsonParameters.PSobject.Properties["capabilities"].value
        }

        $PSO = [PSCustomObject]@{
            "tenant" = ${Tenant}
            "id" = ${Id}
            "uid" = ${Uid}
            "profile" = ${VarProfile}
            "identificationNumber" = ${IdentificationNumber}
            "email" = ${Email}
            "phone" = ${Phone}
            "workPhone" = ${WorkPhone}
            "personalEmail" = ${PersonalEmail}
            "firstname" = ${Firstname}
            "lastname" = ${Lastname}
            "displayName" = ${DisplayName}
            "alias" = ${Alias}
            "lastPasswordChangeDate" = ${LastPasswordChangeDate}
            "lastLoginTimestamp" = ${LastLoginTimestamp}
            "currentLoginTimestamp" = ${CurrentLoginTimestamp}
            "capabilities" = ${Capabilities}
        }

        return $PSO
    }

}
