<#import "parts/common.ftl" as c>
<@c.page>
    Please, login!
    <form action="/login" method="post">
        <p>Name</p>
        <input title="Name" type="text" name="username">
        <p>Password</p>
        <input title="Password" type="text" name="password">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Sing In">
    </form>
    <a href="/registration">Add new user</a>
</@c.page>