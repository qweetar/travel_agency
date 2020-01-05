<#import "parts/common.ftl" as c>
<@c.page>
List of Countries
<table class="table table-striped">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>

    <#list countries as country>
        <tr>
            <th scope="row"><a href="/country/${country.countryId}">${country.countryId}</a></th>
            <td>${country.countryName}</td>
            <td><a href="/deleteCountry/${country.countryId}">Delete</a></td>
            <td><a href="/updateCountry/${country.countryId}">Update</a></td>
        </tr>
    </#list>
</table>

<a href="/hello">Back to the main page</a>
</@c.page>