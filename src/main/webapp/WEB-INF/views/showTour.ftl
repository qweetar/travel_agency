<#import "parts/common.ftl" as c>
<@c.page>
Tour page
<table class="table table-borderless">
    <tr>
        <th scope="row">Id</td>
        <td>${tour.tourId}</td>
    </tr>
    <tr>
        <th scope="row">Photo</td>
        <td><img src="${tour.tourPhoto}"/></td>
    </tr>
    <tr>
        <th scope="row">Tour date</td>
        <td>${tour.tourDate}</td>
    </tr>
    <tr>
        <th scope="row">Duration</td>
        <td>${tour.tourDuration}</td>
    </tr>
    <tr>
        <th scope="row">Description</td>
        <td>${tour.tourDescription}</td>
    </tr>
    <tr>
        <th scope="row">Price</td>
        <td>${tour.tourCost}</td>
    </tr>
    <tr>
        <th scope="row">Type</td>
        <td>${tour.tourType}</td>
    </tr>
    <tr>
        <th scope="row">Hotel</td>
        <td><a href="/hotel/${tour.hotel.hotelId}">${tour.hotel.hotelName}</a></td>
    </tr>
    <tr>
        <th scope="row">Country</td>
        <td><a href="/country/${tour.country.countryId}">${tour.country.countryName}</a></td>
    </tr>
</table>
<br>
    <div>
        <table class="table table-striped">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Date</th>
                <th scope="col">Review</th>
                <th scope="col">User</th>
                <th scope="col"></th>
                <th scope="col"></th>
            </tr>

            <#list reviews as review>
                <tr>
                    <td>${review.reviewId}</td>
                    <td>${review.reviewDate}</td>
                    <td>${review.reviewText}</td>
                    <td>${review.user.userName}</td>
                    <td><a href="/deleteReview/${review.reviewId}">Delete</a></td>
                    <td><a href="/updateReview/${review.reviewId}">Update</a></td>
                </tr>
                <#else>
                No reviews
            </#list>
        </table>
    </div>
<br>
<a class="nav-link" href="/tours">Back</a>
</@c.page>