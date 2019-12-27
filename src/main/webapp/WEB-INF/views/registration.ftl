<#import "parts/common.ftl" as c>
<#import "login.ftl" as l>
<@c.page>
    Add new user
    <form name="user" action="/registration" method="post">
        <p>Login</p>
        <input title="Login" type="text" name="login">
        <p>Name</p>
        <input title="Name" type="text" name="userName">
        <p>Email</p>
        <input title="Email" type="text" name="email">
        <p>Password</p>
        <input title="Password" type="text" name="pass">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="OK">
    </form>
</@c.page>