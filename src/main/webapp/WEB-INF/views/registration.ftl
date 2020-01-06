<#import "parts/common.ftl" as c>
<#import "login.ftl" as l>
<@c.page>
    Register
    <form name="user" action="/registration" method="post">
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Login : </label>
            <div class="col-sm-5">
                <input value="<#if user??>${user.login}</#if>" title="Login" type="text" name="login" placeholder="Login" class="form-control ${(loginError??)?string('is-invalid', '')}">
                <#if loginError??>
                    <div class="invalid-feedback">
                        ${loginError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">User Name : </label>
            <div class="col-sm-5">
                <input title="Name" type="text" name="userName" placeholder="User name" class="form-control ${(userNameError??)?string('is-invalid', '')}"">
                <#if userNameError??>
                    <div class="invalid-feedback">
                        ${userNameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Email : </label>
            <div class="col-sm-5">
                <input value="<#if user??>${user.email}</#if>" title="Email" type="text" name="email" placeholder="Email" class="form-control ${(emailError??)?string('is-invalid', '')}">
                <#if emailError??>
                    <div class="invalid-feedback">
                        ${emailError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Password : </label>
            <div class="col-sm-5">
                <input title="Password" type="text" name="pass" placeholder="Password" class="form-control ${(passError??)?string('is-invalid', '')}">
                <#if passError??>
                    <div class="invalid-feedback">
                        ${passError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Confirm Password : </label>
            <div class="col-sm-5">
                <input title="Password2" type="text" name="pass2" placeholder="Password2" class="form-control ${(pass2Error??)?string('is-invalid', '')}">
                <#if pass2Error??>
                    <div class="invalid-feedback">
                        ${pass2Error}
                    </div>
                </#if>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</@c.page>