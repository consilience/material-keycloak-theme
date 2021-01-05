<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
	<div class="title">
        Verify your email
    </div>
    <#elseif section = "form">
    <div class="alert alert-success">
        <p>We've sent you an email. Check your inbox and click the link to activate your account.</p>
    </div>
    <#elseif section = "info">
        <p class="instruction">
            Didn't receive the email? Check your spam folder. You can also <a href="${url.loginAction}">re-send the email</a>.
        </p>
    </#if>
</@layout.registrationLayout>