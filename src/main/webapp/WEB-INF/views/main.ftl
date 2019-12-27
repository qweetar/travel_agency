<#import "parts/common.ftl" as c>

<@c.page>
    <div>
        <form action="/logout" method="post">
            <input type="submit" value="Sign Out"/>
        </form>
    </div>
<h1>I'm first template</h1>
<a href="/users">go to Users</a>
<br>
<a href="/tours">Find your trip</a>
<br>
<a href="/hotels">Look for Hotels</a>
<br>
<a href="/countries">Find your destination Country</a>

</@c.page>