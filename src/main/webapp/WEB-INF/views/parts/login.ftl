<#macro login path isRegisterForm>
    <form action="${path}" method="post" xmlns="http://www.w3.org/1999/html">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">User Name : </label>
            <div class="col-sm-5">
                <input title="name" type="text" name="username" placeholder="User name">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Password : </label>
            <div class="col-sm-5">
                <input title="Password" type="text" name="password" placeholder="Password">
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Sign In</button>
        <br>
        <br>
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Sign Out</button>
    </form>
</#macro>