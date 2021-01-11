<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=false; section>
    <#if section = "header">
	<div class="title">
        <img src="${url.resourcesPath}/img/pt-logo.svg" width="180px" style="margin-bottom: 2rem">
        <br><br>
        Verify your email
    </div>
    <#elseif section = "form">
    <div class="alert alert-success">
        We've sent you an email. Check your inbox and click the link to activate your account.
    </div>
    <#elseif section = "info">
        <p class="instruction">
            Didn't receive the email? Check your spam folder. You can also <a href="${url.loginAction}">re-send the email</a>.
        </p>
    </#if>
</@layout.registrationLayout>