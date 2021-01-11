<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        PrintTrail | Error
    <#elseif section = "header">
        <img src="${url.resourcesPath}/img/pt-logo.svg" width="180px" style="margin-bottom: 2rem">
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