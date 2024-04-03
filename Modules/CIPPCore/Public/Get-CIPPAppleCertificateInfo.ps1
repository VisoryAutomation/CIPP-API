Function Get-CIPPAppleCertificateInfo {
[CmdletBinding()]
param (
$tenantFilter,
$APIName = "Get Apple Cert Info",
$ExecutingUser
)

$appleCert = New-GraphGetRequest -Uri 'https://graph.microsoft.com/beta/deviceManagement/applePushNotificationCertificate' -tenantid $TenantFilter
$graphRequest = [PSCustomObject]@{
        Tenant = $tenantFilter
        AppleIdentifier = $appleCert.appleIdentifier
        Expiration = $appleCert.expirationDateTime
    }

    return $graphRequest
}
