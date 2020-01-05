<#import "parts/common.ftl" as c>
<@c.page>
User editor
<form name="user" action="/updateUser" method="post" xmlns="http://www.w3.org/1999/html">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputId">Id</label>
            <div class="col-sm-4">
                <input class="form-control" id="inputId" title="Id" type="text" readonly name="id" value="${user.id}">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputLogin">Login</label>
            <div class="col-sm-4">
                <input class="form-control" id="inputLogin" title="Login" type="text" name="login" value="${user.login}">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputName">Name</label>
            <div class="col-sm-4">
                <input class="form-control" id="inputName" title="Name" type="text" name="userName" value="${user.userName}">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputEmail">Email</label>
            <div class="col-sm-4">
                <input class="form-control" id="inputEmail" title="Email" type="text" name="email" value="${user.email}">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="inputPass">Password</label>
            <div class="col-sm-4">
                <input class="form-control" id="inputPass" title="Password" type="text" name="pass" value="${user.pass}">
            </div>
        </div>
            <#list roles as role>
        <div class="form-group form-check">
            <label class="col-sm-2 col-form-label"><input class="form-check-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" name="_csrf" value="${_csrf.token}">

    <button class="btn btn-primary" type="submit" value="OK">Save</button>
</form>
</@c.page>