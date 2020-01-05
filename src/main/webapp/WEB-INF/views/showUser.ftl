<#import "parts/common.ftl" as c>
<@c.page>
User page
<table class="table table-borderless">
    <tr>
        <th scope="row">Id</th>
        <td>${user.id}</td>
    </tr>
    <tr>
        <th scope="row">Login</th>
        <td>${user.login}</td>
    </tr>
    <tr>
        <th scope="row">Name</th>
        <td>${user.userName}</td>
    </tr>
    <tr>
        <th scope="row">Email</td>
        <td>${user.email}</td>
    </tr>
</table>
    <br>
    <a class="nav-link" href="/tourByUser/${user.id}">User reserved Tours</a>
    <br>
    <div>
        <table class="table table-striped">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Date</th>
                <th scope="col">Review</th>
                <th scope="col">Hotel</th>
                <th scope="col"></th>
                <th scope="col"></th>
            </tr>

            <#list reviews as review>
                <tr>
                    <td>${review.reviewId}</td>
                    <td>${review.reviewDate}</td>
                    <td>${review.reviewText}</td>
                    <td>${review.tour.hotel.hotelName}</td>
                    <td><a href="/deleteReview/${review.reviewId}">Delete</a></td>
                    <td><a href="/updateReview/${review.reviewId}">Update</a></td>
                </tr>
            <#else>
                No reviews
            </#list>
        </table>
    </div>
<br>
<a href="/users">Back</a>
</@c.page>