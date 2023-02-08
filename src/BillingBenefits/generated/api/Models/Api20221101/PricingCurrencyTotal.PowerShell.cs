// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101
{
    using Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Runtime.PowerShell;

    [System.ComponentModel.TypeConverter(typeof(PricingCurrencyTotalTypeConverter))]
    public partial class PricingCurrencyTotal
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
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.PricingCurrencyTotal"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPricingCurrencyTotal"
        /// />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPricingCurrencyTotal DeserializeFromDictionary(global::System.Collections.IDictionary content)
        {
            return new PricingCurrencyTotal(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.PricingCurrencyTotal"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPricingCurrencyTotal"
        /// />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPricingCurrencyTotal DeserializeFromPSObject(global::System.Management.Automation.PSObject content)
        {
            return new PricingCurrencyTotal(content);
        }

        /// <summary>
        /// Creates a new instance of <see cref="PricingCurrencyTotal" />, deserializing the content from a json string.
        /// </summary>
        /// <param name="jsonText">a string containing a JSON serialized instance of this model.</param>
        /// <returns>an instance of the <see cref="PricingCurrencyTotal" /> model class.</returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPricingCurrencyTotal FromJsonString(string jsonText) => FromJson(Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Runtime.Json.JsonNode.Parse(jsonText));

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.PricingCurrencyTotal"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        internal PricingCurrencyTotal(global::System.Collections.IDictionary content)
        {
            bool returnNow = false;
            BeforeDeserializeDictionary(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            if (content.Contains("Duration"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPricingCurrencyTotalInternal)this).Duration = (Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Support.PricingCurrencyDuration?) content.GetValueForProperty("Duration",((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPricingCurrencyTotalInternal)this).Duration, Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Support.PricingCurrencyDuration.CreateFrom);
            }
            if (content.Contains("CurrencyCode"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPriceInternal)this).CurrencyCode = (string) content.GetValueForProperty("CurrencyCode",((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPriceInternal)this).CurrencyCode, global::System.Convert.ToString);
            }
            if (content.Contains("Amount"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPriceInternal)this).Amount = (double?) content.GetValueForProperty("Amount",((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPriceInternal)this).Amount, (__y)=> (double) global::System.Convert.ChangeType(__y, typeof(double)));
            }
            AfterDeserializeDictionary(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.PricingCurrencyTotal"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        internal PricingCurrencyTotal(global::System.Management.Automation.PSObject content)
        {
            bool returnNow = false;
            BeforeDeserializePSObject(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            if (content.Contains("Duration"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPricingCurrencyTotalInternal)this).Duration = (Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Support.PricingCurrencyDuration?) content.GetValueForProperty("Duration",((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPricingCurrencyTotalInternal)this).Duration, Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Support.PricingCurrencyDuration.CreateFrom);
            }
            if (content.Contains("CurrencyCode"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPriceInternal)this).CurrencyCode = (string) content.GetValueForProperty("CurrencyCode",((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPriceInternal)this).CurrencyCode, global::System.Convert.ToString);
            }
            if (content.Contains("Amount"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPriceInternal)this).Amount = (double?) content.GetValueForProperty("Amount",((Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Models.Api20221101.IPriceInternal)this).Amount, (__y)=> (double) global::System.Convert.ChangeType(__y, typeof(double)));
            }
            AfterDeserializePSObject(content);
        }

        /// <summary>Serializes this instance to a json string.</summary>

        /// <returns>a <see cref="System.String" /> containing this model serialized to JSON text.</returns>
        public string ToJsonString() => ToJson(null, Microsoft.Azure.PowerShell.Cmdlets.BillingBenefits.Runtime.SerializationMode.IncludeAll)?.ToString();

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
    }
    [System.ComponentModel.TypeConverter(typeof(PricingCurrencyTotalTypeConverter))]
    public partial interface IPricingCurrencyTotal

    {

    }
}