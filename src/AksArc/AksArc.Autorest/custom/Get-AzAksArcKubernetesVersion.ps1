
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Lists the supported kubernetes versions for the specified custom location
.Description
Lists the supported kubernetes versions for the specified custom location
.Example
Get-AzAksArcKubernetesVersion -CustomLocationName sample_cl

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.AksArc.Models.IKubernetesVersionProfile
.Link
https://learn.microsoft.com/powershell/module/az.aksarc/get-azaksarckubernetesversion
#>
function Get-AzAksArcKubernetesVersion {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.AksArc.Models.IKubernetesVersionProfile])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Path')]
    [System.String]
    # The name or id of the custom location.
    ${CustomLocationName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.AksArc.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

process {
    # Format custom location
    $CustomLocationID = ConvertCustomLocationNameToID -CustomLocationName $CustomLocationName -SubscriptionId $SubscriptionId -ResourceGroupName $ResourceGroupName
    if ($CustomLocationName -ne $CustomLocationID) {
        if (!$ResourceGroupName) {
            throw "ResourceGroupName parameter is required."
        }
    }

    $null = $PSBoundParameters.Add("CustomLocationResourceUri", $CustomLocationID)
    $null = $PSBoundParameters.Remove("CustomLocationName")
    $null = $PSBoundParameters.Remove("ResourceGroupName")
    $null = $PSBoundParameters.Remove("SubscriptionId")

    # Perform Get/Put if does not exist
    try {
        $config = Az.AksArc.internal\Get-AzAksArcKubernetesVersion @PSBoundParameters
        if ($config.ProvisioningState -ne "Succeeded") {
            $DoCreateDefaultObject = $true
        }
    }
    catch {
        $DoCreateDefaultObject = $true
    }
    
    if ($DoCreateDefaultObject) {
        $null = Az.AksArc.internal\New-AzAksArcKubernetesVersion -CustomLocationResourceUri $CustomLocationID -ExtendedLocationName $CustomLocationID -ExtendedLocationType "CustomLocation"
    }

    # Call get command
    Az.AksArc.internal\Get-AzAksArcKubernetesVersion @PSBoundParameters
}
}
