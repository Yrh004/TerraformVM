<#
.PARAMETER Name


.PARAMETER EmailAddress


.PARAMETER LocalAdmin


.PARAMETER DomainUser


.PARAMETER NoDataDisk


.PARAMETER DataDiskSizeGB

.PARAMETER VMSize


.NOTES
Running this requires:
- Contributor access to the <> subscription.
- A user account on the <domain> domain that is either a memeber of the Developers group, or domain admin
#>

[CmdletBinding()]
param(
	[Parameter(Mandatory = $true)]
	[string] $Name,

	[Parameter(Mandatory = $true)]
	[string] $EmailAddress,

	[Parameter(Mandatory = $true)]
	[PSCredential] $LocalAdmin,

	[Parameter(Mandatory = $true)]
	[PSCredential] $DomainUser,

	[Parameter(Mandatory = $true)]
	[switch] $NoDataDisk,

	[Parameter(Mandatory = $true)]
	[int] $DataDiskSizeGB = 250,

	[Parameter(Mandatory = $true)]
	[string] $VMSize = "Standard_B4ms"

)

$ErrorActionPreference = "Stop"