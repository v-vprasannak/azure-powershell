// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models
{
    using Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Runtime.PowerShell;

    [System.ComponentModel.TypeConverter(typeof(VoiceServicesIdentityTypeConverter))]
    public partial class VoiceServicesIdentity
    {

        /// <summary>
        /// <c>AfterDeserializeDictionary</c> will be called after the deserialization has finished, allowing customization of the
        /// object before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>

        partial void AfterDeserializeDictionary(global::System.Collections.IDictionary content);

        /// <summary>
        /// <c>AfterDeserializePSObject</c> will be called after the deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>

        partial void AfterDeserializePSObject(global::System.Management.Automation.PSObject content);

        /// <summary>
        /// <c>BeforeDeserializeDictionary</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <paramref name="returnNow" /> output
        /// parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializeDictionary(global::System.Collections.IDictionary content, ref bool returnNow);

        /// <summary>
        /// <c>BeforeDeserializePSObject</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <paramref name="returnNow" /> output
        /// parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializePSObject(global::System.Management.Automation.PSObject content, ref bool returnNow);

        /// <summary>
        /// <c>OverrideToString</c> will be called if it is implemented. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="stringResult">/// instance serialized to a string, normally it is a Json</param>
        /// <param name="returnNow">/// set returnNow to true if you provide a customized OverrideToString function</param>

        partial void OverrideToString(ref string stringResult, ref bool returnNow);

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.VoiceServicesIdentity"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentity" />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentity DeserializeFromDictionary(global::System.Collections.IDictionary content)
        {
            return new VoiceServicesIdentity(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.VoiceServicesIdentity"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentity" />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentity DeserializeFromPSObject(global::System.Management.Automation.PSObject content)
        {
            return new VoiceServicesIdentity(content);
        }

        /// <summary>
        /// Creates a new instance of <see cref="VoiceServicesIdentity" />, deserializing the content from a json string.
        /// </summary>
        /// <param name="jsonText">a string containing a JSON serialized instance of this model.</param>
        /// <returns>an instance of the <see cref="VoiceServicesIdentity" /> model class.</returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentity FromJsonString(string jsonText) => FromJson(Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Runtime.Json.JsonNode.Parse(jsonText));

        /// <summary>Serializes this instance to a json string.</summary>

        /// <returns>a <see cref="System.String" /> containing this model serialized to JSON text.</returns>
        public string ToJsonString() => ToJson(null, Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Runtime.SerializationMode.IncludeAll)?.ToString();

        public override string ToString()
        {
            var returnNow = false;
            var result = global::System.String.Empty;
            OverrideToString(ref result, ref returnNow);
            if (returnNow)
            {
                return result;
            }
            return ToJsonString();
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.VoiceServicesIdentity"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        internal VoiceServicesIdentity(global::System.Collections.IDictionary content)
        {
            bool returnNow = false;
            BeforeDeserializeDictionary(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            if (content.Contains("SubscriptionId"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).SubscriptionId = (string) content.GetValueForProperty("SubscriptionId",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).SubscriptionId, global::System.Convert.ToString);
            }
            if (content.Contains("ResourceGroupName"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).ResourceGroupName = (string) content.GetValueForProperty("ResourceGroupName",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).ResourceGroupName, global::System.Convert.ToString);
            }
            if (content.Contains("CommunicationsGatewayName"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).CommunicationsGatewayName = (string) content.GetValueForProperty("CommunicationsGatewayName",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).CommunicationsGatewayName, global::System.Convert.ToString);
            }
            if (content.Contains("Location"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).Location = (string) content.GetValueForProperty("Location",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).Location, global::System.Convert.ToString);
            }
            if (content.Contains("TestLineName"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).TestLineName = (string) content.GetValueForProperty("TestLineName",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).TestLineName, global::System.Convert.ToString);
            }
            if (content.Contains("Id"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).Id = (string) content.GetValueForProperty("Id",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).Id, global::System.Convert.ToString);
            }
            AfterDeserializeDictionary(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.VoiceServicesIdentity"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        internal VoiceServicesIdentity(global::System.Management.Automation.PSObject content)
        {
            bool returnNow = false;
            BeforeDeserializePSObject(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            if (content.Contains("SubscriptionId"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).SubscriptionId = (string) content.GetValueForProperty("SubscriptionId",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).SubscriptionId, global::System.Convert.ToString);
            }
            if (content.Contains("ResourceGroupName"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).ResourceGroupName = (string) content.GetValueForProperty("ResourceGroupName",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).ResourceGroupName, global::System.Convert.ToString);
            }
            if (content.Contains("CommunicationsGatewayName"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).CommunicationsGatewayName = (string) content.GetValueForProperty("CommunicationsGatewayName",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).CommunicationsGatewayName, global::System.Convert.ToString);
            }
            if (content.Contains("Location"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).Location = (string) content.GetValueForProperty("Location",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).Location, global::System.Convert.ToString);
            }
            if (content.Contains("TestLineName"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).TestLineName = (string) content.GetValueForProperty("TestLineName",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).TestLineName, global::System.Convert.ToString);
            }
            if (content.Contains("Id"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).Id = (string) content.GetValueForProperty("Id",((Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Models.IVoiceServicesIdentityInternal)this).Id, global::System.Convert.ToString);
            }
            AfterDeserializePSObject(content);
        }
    }
    [System.ComponentModel.TypeConverter(typeof(VoiceServicesIdentityTypeConverter))]
    public partial interface IVoiceServicesIdentity

    {

    }
}