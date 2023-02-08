
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
Create or update a virtual machine image template
.Description
Create or update a virtual machine image template
.Example
# Create a platform image source
$source = New-AzImageBuilderTemplateSourceObject -PlatformImageSource -Publisher 'Canonical' -Offer 'UbuntuServer' -Sku '18.04-LTS' -Version 'latest'
# Create a shell customizer
$customizer = New-AzImageBuilderTemplateCustomizerObject -ShellCustomizer -Name 'CheckSumCompareShellScript' -ScriptUri 'https://raw.githubusercontent.com/danielsollondon/azvmimagebuilder/master/quickquickstarts/customizeScript2.sh' -Sha256Checksum 'ade4c5214c3c675e92c66e2d067a870c5b81b9844b3de3cc72c49ff36425fc93'
# Create a shared image distributor
$distributor = New-AzImageBuilderTemplateDistributorObject -SharedImageDistributor -ArtifactTag @{tag='dis-share'} -GalleryImageId '/subscriptions/0b1f6471-1bf0-4dda-aec3-cb9272f09590/resourceGroups/bez-rg/providers/Microsoft.Compute/galleries/bez_gallery/images/bez-image' -ReplicationRegion 'eastus2' -RunOutputName 'runoutput-01' -ExcludeFromLatest $false
# the userAssignedIdentity should have access permissions to the image above
$userAssignedIdentity = '/subscriptions/0b1f6471-1bf0-4dda-aec3-cb9272f09590/resourcegroups/bez-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/bez-id'
# Create a virtual machine image template
New-AzImageBuilderTemplate -Name bez-test-img-temp -ResourceGroupName bez-rg -Location eastus -UserAssignedIdentityId $userAssignedIdentity -Source $source -Customize $customizer -Distribute $distributor  
.Example
# request_body.json
# {
#   "location": "eastus",
#   "properties": {
#     "source": {
#       "type": "PlatformImage",
#       "publisher": "Canonical",
#       "offer": "UbuntuServer",
#       "sku": "18.04-LTS",
#       "version": "latest"
#     },
#     "customize": [
#       {
#         "type": "Shell",
#         "name": "CheckSumCompareShellScript",
#         "scriptUri": "https://raw.githubusercontent.com/danielsollondon/azvmimagebuilder/master/quickquickstarts/customizeScript2.sh",
#         "sha256Checksum": "ade4c5214c3c675e92c66e2d067a870c5b81b9844b3de3cc72c49ff36425fc93"
#       }
#     ],
#     "distribute": [
#       {
#         "type": "SharedImage",
#         "runOutputName": "runoutput-01",
#         "artifactTags": {
#           "tag": "dis-share"
#         },
#         "galleryImageId": "/subscriptions/0b1f6471-1bf0-4dda-aec3-cb9272f09590/resourceGroups/bez-rg/providers/Microsoft.Compute/galleries/bez_gallery/images/bez-image",
#         "replicationRegions": [
#           "eastus2"
#         ],
#         "excludeFromLatest": false
#       }
#     ]
#   },
#   "identity": {
#     "type": "UserAssigned",
#     "userAssignedIdentities": {
#       "/subscriptions/0b1f6471-1bf0-4dda-aec3-cb9272f09590/resourcegroups/bez-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/bez-id": {}
#     }
#   }
# }
New-AzImageBuilderTemplate -Name bez-test-img-temp12 -ResourceGroupName bez-rg -JsonTemplatePath ./request_body.json
.Example
New-AzImageBuilderTemplate -Name bez-test-img-temp13 -ResourceGroupName bez-rg -JsonString '{
  "location": "eastus",
  "properties": {
    "source": {
      "type": "PlatformImage",
      "publisher": "Canonical",
      "offer": "UbuntuServer",
      "sku": "18.04-LTS",
      "version": "latest"
    },
    "customize": [
      {
        "type": "Shell",
        "name": "CheckSumCompareShellScript",
        "scriptUri": "https://raw.githubusercontent.com/danielsollondon/azvmimagebuilder/master/quickquickstarts/customizeScript2.sh",
        "sha256Checksum": "ade4c5214c3c675e92c66e2d067a870c5b81b9844b3de3cc72c49ff36425fc93"
      }
    ],
    "distribute": [
      {
        "type": "SharedImage",
        "runOutputName": "runoutput-01",
        "artifactTags": {
          "tag": "dis-share"
        },
        "galleryImageId": "/subscriptions/0b1f6471-1bf0-4dda-aec3-cb9272f09590/resourceGroups/bez-rg/providers/Microsoft.Compute/galleries/bez_gallery/images/bez-image",
        "replicationRegions": [
          "eastus2"
        ],
        "excludeFromLatest": false
      }
    ]
  },
  "identity": {
    "type": "UserAssigned",
    "userAssignedIdentities": {
      "/subscriptions/0b1f6471-1bf0-4dda-aec3-cb9272f09590/resourcegroups/bez-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/bez-id": {}
    }
  }
}'

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.IImageTemplate
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

CUSTOMIZE <IImageTemplateCustomizer[]>: Specifies the properties used to describe the customization steps of the image, like Image source etc
  Type <String>: The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  [Name <String>]: Friendly Name to provide context on what this customization step does

DISTRIBUTE <IImageTemplateDistributor[]>: The distribution targets where the image output needs to go to.
  RunOutputName <String>: The name to be used for the associated RunOutput.
  Type <String>: Type of distribution.
  [ArtifactTag <IImageTemplateDistributorArtifactTags>]: Tags that will be applied to the artifact once it has been created/updated by the distributor.
    [(Any) <String>]: This indicates any property can be added to this object.

SOURCE <IImageTemplateSource>: Specifies the properties used to describe the source image.
  Type <String>: Specifies the type of source image you want to start with.

VALIDATOR <IImageTemplateInVMValidator[]>: List of validations to be performed.
  Type <String>: The type of validation you want to use on the Image. For example, "Shell" can be shell validation
  [Name <String>]: Friendly Name to provide context on what this validation step does
.Link
https://learn.microsoft.com/powershell/module/az.imagebuilder/new-azimagebuildertemplate
#>
function New-AzImageBuilderTemplate {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.IImageTemplate])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('ImageTemplateName')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Path')]
    [System.String]
    # The name of the image Template
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Path')]
    [System.String]
    # The name of the resource group.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # Subscription credentials which uniquely identify Microsoft Azure subscription.
    # The subscription Id forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String]
    # The geo-location where the resource lives
    ${Location},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.Int32]
    # Maximum duration to wait while building the image template (includes all customizations, validations, and distributions).
    # Omit or specify 0 to use the default (4 hours).
    ${BuildTimeoutInMinute},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.IImageTemplateCustomizer[]]
    # Specifies the properties used to describe the customization steps of the image, like Image source etc
    # To construct, see NOTES section for CUSTOMIZE properties and create a hash table.
    ${Customize},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.IImageTemplateDistributor[]]
    # The distribution targets where the image output needs to go to.
    # To construct, see NOTES section for DISTRIBUTE properties and create a hash table.
    ${Distribute},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.ResourceIdentityType])]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.ResourceIdentityType]
    # The type of identity used for the image template.
    # The type 'None' will remove any identities from the image template.
    ${IdentityType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.IImageTemplateSource]
    # Specifies the properties used to describe the source image.
    # To construct, see NOTES section for SOURCE properties and create a hash table.
    ${Source},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String]
    # The staging resource group id in the same subscription as the image template that will be used to build the image.
    # If this field is empty, a resource group with a random name will be created.
    # If the resource group specified in this field doesn't exist, it will be created with the same name.
    # If the resource group specified exists, it must be empty and in the same region as the image template.
    # The resource group created will be deleted during template deletion if this field is empty or the resource group specified doesn't exist, but if the resource group specified exists the resources created in the resource group will be deleted during template deletion and the resource group itself will remain.
    ${StagingResourceGroup},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api30.ITrackedResourceTags]))]
    [System.Collections.Hashtable]
    # Resource tags.
    ${Tag},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.IImageTemplateIdentityUserAssignedIdentities]))]
    [System.Collections.Hashtable]
    # The list of user identities associated with the image template.
    # The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
    ${UserAssignedIdentity},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.Int32]
    # Size of the OS disk in GB.
    # Omit or specify 0 to use Azure's default OS disk size.
    ${VMProfileOsdiskSizeGb},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String[]]
    # Optional array of resource IDs of user assigned managed identities to be configured on the build VM and validation VM.
    # This may include the identity of the image template.
    ${VMProfileUserAssignedIdentity},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String]
    # Size of the virtual machine used to build, customize and capture images.
    # Omit or specify empty string to use the default (Standard_D1_v2 for Gen1 images and Standard_D2ds_v4 for Gen2 images).
    ${VMProfileVmsize},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # If validation fails and this field is set to false, output image(s) will not be distributed.
    # This is the default behavior.
    # If validation fails and this field is set to true, output image(s) will still be distributed.
    # Please use this option with caution as it may result in bad images being distributed for use.
    # In either case (true or false), the end to end image run will be reported as having failed in case of a validation failure.
    # [Note: This field has no effect if validation succeeds.]
    ${ValidateContinueDistributeOnFailure},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # If this field is set to true, the image specified in the 'source' section will directly be validated.
    # No separate build will be run to generate and then validate a customized image.
    ${ValidateSourceValidationOnly},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.IImageTemplateInVMValidator[]]
    # List of validations to be performed.
    # To construct, see NOTES section for VALIDATOR properties and create a hash table.
    ${Validator},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String]
    # Size of the proxy virtual machine used to pass traffic to the build VM and validation VM.
    # Omit or specify empty string to use the default (Standard_A1_v2).
    ${VnetConfigProxyVMSize},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String]
    # Resource id of a pre-existing subnet.
    ${VnetConfigSubnetId},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            CreateExpanded = 'Az.ImageBuilder.private\New-AzImageBuilderTemplate_CreateExpanded';
        }
        if (('CreateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}
