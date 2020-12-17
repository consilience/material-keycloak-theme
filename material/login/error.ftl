<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        PrintTrail | Error
    <#elseif section = "header">
        Print<strong>Trail</strong>
        <br><br>
        <small>Error</small>
    <#elseif section = "form">
        <div id="kc-error-message">
            <p class="instruction">${message.summary}</p>
            <#if client?? && client.baseUrl?has_content>
                <p><a id="backToApplication" href="${client.baseUrl}">${msg("backToApplication")}</a></p>
            </#if>
        </div>
    </#if>
</@layout.registrationLayout>