#
# IdentityNow cc (private) APIs
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSSailpointCC' -name 'CCGetApplication200Response' {
    Context 'CCGetApplication200Response' {
        It 'Initialize-CCGetApplication200Response' {
            # a simple test to create an object
            #$NewObject = Initialize-CCGetApplication200Response -Id "TEST_VALUE" -AppId "TEST_VALUE" -ServiceId "TEST_VALUE" -ServiceAppId "TEST_VALUE" -Name "TEST_VALUE" -Description "TEST_VALUE" -AppCenterEnabled "TEST_VALUE" -ProvisionRequestEnabled "TEST_VALUE" -ControlType "TEST_VALUE" -Mobile "TEST_VALUE" -PrivateApp "TEST_VALUE" -ScriptName "TEST_VALUE" -Status "TEST_VALUE" -Icon "TEST_VALUE" -Health "TEST_VALUE" -EnableSso "TEST_VALUE" -SsoMethod "TEST_VALUE" -HasLinks "TEST_VALUE" -HasAutomations "TEST_VALUE" -StepUpAuthData "TEST_VALUE" -StepUpAuthType "TEST_VALUE" -UsageAnalytics "TEST_VALUE" -UsageCertRequired "TEST_VALUE" -UsageCertText "TEST_VALUE" -LaunchpadEnabled "TEST_VALUE" -PasswordManaged "TEST_VALUE" -Owner "TEST_VALUE" -DateCreated "TEST_VALUE" -LastUpdated "TEST_VALUE" -DefaultAccessProfile "TEST_VALUE" -Service "TEST_VALUE" -SelectedSsoMethod "TEST_VALUE" -SupportedSsoMethods "TEST_VALUE" -OffNetworkBlockedRoles "TEST_VALUE" -SupportedOffNetwork "TEST_VALUE" -AccountServiceId "TEST_VALUE" -LauncherCount "TEST_VALUE" -AccountServiceName "TEST_VALUE" -AccountServiceExternalId "TEST_VALUE" -AccountServiceMatchAllAccounts "TEST_VALUE" -ExternalId "TEST_VALUE" -AccountServiceUseForPasswordManagement "TEST_VALUE" -AccountServicePolicyId "TEST_VALUE" -AccountServicePolicyName "TEST_VALUE" -RequireStrongAuthn "TEST_VALUE" -AccountServicePolicies "TEST_VALUE" -XsdVersion "TEST_VALUE" -AppProfiles "TEST_VALUE" -PasswordServiceId "TEST_VALUE" -AccessProfileIds "TEST_VALUE"
            #$NewObject | Should -BeOfType GetApplication200Response
            #$NewObject.property | Should -Be 0
        }
    }
}
