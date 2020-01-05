<#import "parts/common.ftl" as c>
<@c.page>
Country page
<table class="table table-borderless">
    <tr>
        <th scope="row">Id</th>
        <td>${country.countryId}</td>
    </tr>
    <tr>
        <th scope="row">Name</th>
        <td>${country.countryName}</td>
    </tr>
</table>
    <br>
    <a class="nav-link" href="/tours">Back to Tours</a>

<br>
<a class="nav-link" href="/countries">Back to Countries</a>
</@c.page>