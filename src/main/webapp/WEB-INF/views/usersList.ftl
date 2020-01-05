<#import "parts/common.ftl" as c>
<@c.page>
List of Users page
<table class="table" xmlns="http://www.w3.org/1999/html">
    <thead class="thead-dark"
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Login</th>
            <th scope="col">Role</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
    </thead>
    <tbody>
        <#list users as user>
            <tr>
                <th scope="row"><a href="/user/${user.id}">${user.id}</a></th>
                <td>${user.userName}</td>
                <td>${user.email}</td>
                <td>${user.login}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/update/${user.id}">Edit</a></td>
                <td><a href="/delete/${user.id}">Delete</a></td>
            </tr>
        </#list>
    </tbody>
</table>

<a href="/addUser">Create user</a>
</@c.page>