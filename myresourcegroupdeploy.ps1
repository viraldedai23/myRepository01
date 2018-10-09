<#
.SYNOPSIS

#>

[CmdletBinding()]
param(     
     [Parameter(Mandatory=$true)]     
     [string]$ResourceGroup,
	 [Parameter(Mandatory=$true)]     
     [string]$TemplateURI,
	 [Parameter(Mandatory=$true)]     
     [string]$TemplateParameterUri,
	 [Parameter(Mandatory=$true)]     
     [string]$resourceGroupLocation,
	 [Parameter(Mandatory=$true)]     
     [string]$ARMDeploymentname
	 )
echo "Creating New Resource Group"
New-AzureRmResourceGroup -Name $ResourceGroup -Location $resourceGroupLocation 
echo  " beginning the AWB installation "
New-AzureRmResourceGroupDeployment -Name $ARMDeploymentname -ResourceGroupName $ResourceGroup -TemplateUri  $TemplateURI -TemplateParameterUri $TemplateParameterUri 

 
