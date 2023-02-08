// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.Api20221101
{
    using static Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Runtime.Extensions;

    /// <summary>The SIMs to upload.</summary>
    public partial class SimUploadList :
        Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.Api20221101.ISimUploadList,
        Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.Api20221101.ISimUploadListInternal
    {

        /// <summary>Backing field for <see cref="Sim" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.Api20221101.ISimNameAndProperties[] _sim;

        /// <summary>A list of SIMs to upload.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Origin(Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.Api20221101.ISimNameAndProperties[] Sim { get => this._sim; set => this._sim = value; }

        /// <summary>Creates an new <see cref="SimUploadList" /> instance.</summary>
        public SimUploadList()
        {

        }
    }
    /// The SIMs to upload.
    public partial interface ISimUploadList :
        Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Runtime.IJsonSerializable
    {
        /// <summary>A list of SIMs to upload.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Runtime.Info(
        Required = true,
        ReadOnly = false,
        Description = @"A list of SIMs to upload.",
        SerializedName = @"sims",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.Api20221101.ISimNameAndProperties) })]
        Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.Api20221101.ISimNameAndProperties[] Sim { get; set; }

    }
    /// The SIMs to upload.
    internal partial interface ISimUploadListInternal

    {
        /// <summary>A list of SIMs to upload.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.Api20221101.ISimNameAndProperties[] Sim { get; set; }

    }
}