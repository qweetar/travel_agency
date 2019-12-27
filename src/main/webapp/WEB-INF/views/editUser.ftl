<#import "parts/common.ftl" as c>
<@c.page>
User editor
<form name="user" action="/updateUser" method="post" xmlns="http://www.w3.org/1999/html">
    <p>Id</p>
    <input title="Id" type="text" name="id" value="${user.id}">
    <p>Login</p>
    <input title="Login" type="text" name="login" value="${user.login}">
    <p>Name</p>
    <input title="Name" type="text" name="userName" value="${user.userName}">
    <p>Email</p>
    <input title="Email" type="text" name="email" value="${user.email}">
    <p>Password</p>
    <input title="Password" type="text" name="pass" value="${user.pass}">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" value="OK">Save</button>
</form>
</@c.page>