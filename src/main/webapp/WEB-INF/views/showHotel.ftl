<#import "parts/common.ftl" as c>
<@c.page>
Hotel page
<table class="table table-borderless">
    <tr>
        <th scope="row">Id</th>
        <td>${hotel.hotelId}</td>
    </tr>
    <tr>
        <th scope="row">Name</td>
        <td>${hotel.hotelName}</td>
    </tr>
    <tr>
        <th scope="row">Number of stars</td>
        <td>${hotel.hotelStars}</td>
    </tr>
    <tr>
        <th scope="row">Website</td>
        <td>${hotel.hotelWebSite}</td>
    </tr>
    <tr>
        <th scope="row">Latitude</td>
        <td>${hotel.hotelLatitude}</td>
    </tr>
    <tr>
        <th scope="row">Longitude</td>
        <td>${hotel.hotelLongitude}</td>
    </tr>
    <tr>
        <th scope="row">Hotel features</td>
        <td>${hotel.hotelFeatures}</td>
    </tr>
</table>
    <br>
    <a class="nav-link" href="/tours">Back to Tours</a>

<br>
<a class="nav-link" href="/hotels">Back to Hotels</a>
</@c.page>