<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        PrintTrail | Register
    <#elseif section = "header">
        <img src="${url.resourcesPath}/img/pt-logo.svg" width="180px" style="margin-bottom: 2rem">
        <br><br>
        <small>Create your user account</small>
    <#elseif section = "form">
        <span style="color: 6e6e6e !important">
          <p class="mb-1">Your password must follow these rules:</p>
          <ul style="color: 6e6e6e !important">
            <li style="color: 6e6e6e !important">Minimum length of 8 characters</li>
            <li style="color: 6e6e6e !important">Contain at least one uppercase letter</li>
            <li style="color: 6e6e6e !important">Contain at least one number</li>
            <li style="color: 6e6e6e !important">Contain at least one special character</li>
            <li style="color: 6e6e6e !important">It must not be your username</li>
          </ul>
        </span>
        <form id="kc-register-form" class="register form ${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
          <input type="text" readonly value="this is not a login form" style="display: none;">
          <input type="password" readonly value="this is not a login form" style="display: none;">

          <#if !realm.registrationEmailAsUsername>

            <div class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!}">
                <i class="material-icons mdc-text-field__icon" tabindex="-1" role="button">person</i>
                <input id="username" class="mdc-text-field__input ${properties.kcInputClass!}" name="username" type="text" autofocus value="${(register.formData.username!'')}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="username" class="mdc-floating-label ${properties.kcLabelClass!}">${msg("username")?no_esc}</label>
                </div>
                <div class="mdc-notched-outline">
                    <svg>
                        <path class="mdc-notched-outline__path"/>
                    </svg>
                </div>
                <div class="mdc-notched-outline__idle"></div>
            </div>

          </#if>

            <div class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!}">
                <i class="material-icons mdc-text-field__icon" tabindex="-1" role="button">person</i>
                <input required id="firstName" class="mdc-text-field__input ${properties.kcInputClass!}" name="firstName" type="text" autofocus value="${(register.formData.firstName!'')}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="firstName" class="mdc-floating-label ${properties.kcLabelClass!}">${msg("firstName")?no_esc}</label>
                </div>
                <div class="mdc-notched-outline">
                    <svg>
                        <path class="mdc-notched-outline__path"/>
                    </svg>
                </div>
                <div class="mdc-notched-outline__idle"></div>
            </div>

            <div class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!}">
                <i class="material-icons mdc-text-field__icon" tabindex="-1" role="button">person</i>
                <input required id="lastName" class="mdc-text-field__input ${properties.kcInputClass!}" name="lastName" type="text" value="${(register.formData.lastName!'')}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="lastName" class="mdc-floating-label ${properties.kcLabelClass!}">${msg("lastName")?no_esc}</label>
                </div>
                <div class="mdc-notched-outline">
                    <svg>
                        <path class="mdc-notched-outline__path"/>
                    </svg>
                </div>
                <div class="mdc-notched-outline__idle"></div>
            </div>

            <div class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!}">
                <i class="material-icons mdc-text-field__icon" tabindex="-1" role="button">email</i>
                <input required id="email" class="mdc-text-field__input ${properties.kcInputClass!}" name="email" type="text" value="${(register.formData.email!'')}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="email" class="mdc-floating-label ${properties.kcLabelClass!}">${msg("email")?no_esc}</label>
                </div>
                <div class="mdc-notched-outline">
                    <svg>
                        <path class="mdc-notched-outline__path"/>
                    </svg>
                </div>
                <div class="mdc-notched-outline__idle"></div>
            </div>

            <#if passwordRequired>

            <div id="password-input-parent" class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!}">
                <i class="material-icons mdc-text-field__icon" tabindex="-1" role="button">lock</i>
                <input useNativeValidation="false" required id="password" class="mdc-text-field__input ${properties.kcInputClass!}" name="password" type="password">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password" class="mdc-floating-label ${properties.kcLabelClass!}">${msg("password")?no_esc}</label>
                </div>
                <div class="mdc-notched-outline">
                    <svg>
                        <path class="mdc-notched-outline__path"/>
                    </svg>
                </div>
                <div class="mdc-notched-outline__idle"></div>
            </div>

            <div id="password-confirm-input-parent" class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!}">
                <i class="material-icons mdc-text-field__icon" tabindex="-1" role="button">lock</i>
                <input useNativeValidation="false" required id="password-confirm" class="mdc-text-field__input ${properties.kcInputClass!}" name="password-confirm" type="password">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password-confirm" class="mdc-floating-label ${properties.kcLabelClass!}">${msg("passwordConfirm")?no_esc}</label>
                </div>
                <div class="mdc-notched-outline">
                    <svg>
                        <path class="mdc-notched-outline__path"/>
                    </svg>
                </div>
                <div class="mdc-notched-outline__idle"></div>
            </div>

            </#if>

            <div id="validation-error-message" style="display: none; color: #f74f4f;">
                <span><small id="validation-error-message-text"></small></span>
            </div>

            <#if recaptchaRequired??>
            <div class="form-group">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                </div>
            </div>
            </#if>

            <div class="${properties.kcFormGroupClass!} register-button-container">

                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span>
                            <button class="mdc-button" onclick="window.location.href = ${url.loginUrl}" formnovalidate>
                                <i class="material-icons mdc-button__icon" aria-hidden="true">arrow_back</i>
                                ${msg("backToLogin")?no_esc}
                            </button>
                        </span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <button disabled id="submit-register-btn" class="mdc-button mdc-button--raised ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit">
                        ${msg("doRegister")?no_esc}
                    </button>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>