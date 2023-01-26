#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get the configuration object 'Configuration'.

.DESCRIPTION

Get the configuration object 'Configuration'.

.OUTPUTS

System.Collections.Hashtable
#>
function Get-DefaultConfiguration {

    $Configuration = $Script:Configuration

    $Configuration["BaseUrl"] = "https://devrel.api.identitynow.com/";
    $Configuration["TokenUrl"] = "https://devrel.api.identitynow.com/oauth/token"
    $Configuration["ClientId"] = ""
    $Configuration["ClientSecret"] = ""

    if (!$Configuration.containsKey("Token")) {
        $Configuration["Token"] = ""
    }

    if (!$Configuration.containsKey("SkipCertificateCheck")) {
        $Configuration["SkipCertificateCheck"] = $false
    }

    if (!$Configuration.containsKey("Proxy")) {
        $Configuration["Proxy"] = $null
    }

    Return $Configuration

}

<#
.SYNOPSIS

Set the configuration.

.DESCRIPTION

Set the configuration.

.PARAMETER BaseUrl
Base URL of the HTTP endpoints

.PARAMETER Username
Username in HTTP basic authentication

.PARAMETER Password
Password in HTTP basic authentication

.PARAMETER ApiKey
API Keys for authentication/authorization

.PARAMETER ApiKeyPrefix
Prefix in the API Keys

.PARAMETER Cookie
Cookie for authentication/authorization

.PARAMETER AccessToken
Access token for authentication/authorization

.PARAMETER SkipCertificateCheck
Skip certificate verification

.PARAMETER DefaultHeaders
Default HTTP headers to be included in the HTTP request

.PARAMETER Proxy
Proxy setting in the HTTP request, e.g.

$proxy = [System.Net.WebRequest]::GetSystemWebProxy()
$proxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials

.PARAMETER PassThru
Return an object of the Configuration

.OUTPUTS

System.Collections.Hashtable
#>
function Set-DefaultConfiguration {

    [CmdletBinding()]
    Param(
        [string]$BaseUrl,
        [string]$Token,
        [string]$TokenUrl,
        [string]$ClientId,
        [string]$CleintSecret,
        [System.Object]$Proxy,
        [switch]$PassThru
    )

    Process {

        If ($BaseUrl) {
            # validate URL
            $URL = $BaseUrl -as [System.URI]
            if (!($null -ne $URL.AbsoluteURI -and $URL.Scheme -match '[http|https]')) {
                throw "Invalid URL '$($BaseUrl)' cannot be used in the base URL."
            }
            $Script:Configuration["BaseUrl"] = $BaseUrl
        }

        If ($Token) {
            $Script:Configuration['Token'] = $Token
        }

        If ($TokenUrl) {
            $Script:Configuration['TokenUrl'] = $TokenUrl
        }

        If ($ClientId) {
            $Script:Configuration['ClientId'] = $ClientId
        }

        If ($ClientSecret) {
            $Script:Configuration['ClientSecret'] = $ClientSecret
        }

        If ($null -ne $Proxy) {
            If ($Proxy.GetType().FullName -ne "System.Net.SystemWebProxy" -and $Proxy.GetType().FullName -ne "System.Net.WebRequest+WebProxyWrapperOpaque") {
                throw "Incorrect Proxy type '$($Proxy.GetType().FullName)'. Must be System.Net.SystemWebProxy or System.Net.WebRequest+WebProxyWrapperOpaque."
            }
            $Script:Configuration['Proxy'] = $Proxy
        } else {
            $Script:Configuration['Proxy'] = $null
        }

        If ($PassThru.IsPresent) {
            $Script:Configuration
        }
    }
}
