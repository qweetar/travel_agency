<#import "parts/common.ftl" as c>
<@c.page>
List of Hotels
<table class="table table-striped">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">Number fo Stars</th>
        <th scope="col">Website</th>
        <th scope="col">Features</th>
        <th scope="col">Latitude</th>
        <th scope="col">Longitude</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>

    <#list hotels as hotel>
        <tr>
            <th scope="row"><a href="/hotel/${hotel.hotelId}">${hotel.hotelId}</a></th>
            <td>${hotel.hotelName}</td>
            <td>${hotel.hotelStars}</td>
            <td>${hotel.hotelWebSite}</td>
            <td>${hotel.hotelFeatures}</td>
            <td>${hotel.hotelLatitude}</td>
            <td>${hotel.hotelLongitude}</td>
            <td><a href="/deleteHotel/${hotel.hotelId}">Delete</a></td>
            <td><a href="/updateHotel/${hotel.hotelId}">Update</a></td>
        </tr>
    </#list>
</table>

<a href="/addHotel">Create Hotel</a>
</@c.page>