<#import "parts/common.ftl" as c>
<@c.page>
<div xmlns="http://www.w3.org/1999/html">List of Tours page</div>
<form method="get" action="/searchTour">
    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputCountry">Select a country</label>
            <input type="text" name="country" class="form-control" id="inputCountry">
        </div>
        <div class="form-group col-md-4">
            <label for="inputTourDate">Select a tour date</label>
            <input type="date" name="tour_date" class="form-control" id="inputTourDate">
        </div>
        <div class="form-group col-md-4">
            <label for="inputTourDuration">Select trip duration</label>
            <input type="number" min="1" max="30" name="tourDuration" class="form-control" id="inputTourDuration">
        </div>
        <div class="form-group col-md-4">
            <label for="inputTourPrice">Select tour price</label>
            <input type="number" min="1" max="5000" name="tourPrice" class="form-control" id="inputTourPrice">
        </div>
        <div class="form-group col-md-4">
            <label for="inputHotelStars">Select a number of hotel stars</label>
            <input type="number" min="1" max="5" name="numStars" class="form-control" id="inputHotelStars">
        </div>
        <div class="form-group col-md-4">
            <label for="inputState">Select tour type</label>
                <select name="tourType" id="inputState" class="form-control">
                    <option value=""></option>
                    <option value="BUS_TOUR">Bus Tour</option>
                    <option value="SPORT_TOUR">Sport Tour</option>
                    <option value="SEA_VACATION">Sea Vacation</option>
                    <option value="EVENT_TOUR">Event Tour</option>
                    <option value="RECRIATION">Recreation</option>
                    <option value="FESTIVAL">Festival</option>
                    <option value="HEALTH">Health</option>
                </select>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Search</button>
</form>
    <br>
<div>
<table class="table table-hover">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Tour date</th>
        <th scope="col">Duration</th>
        <th scope="col">Cost</th>
        <th scope="col">Type</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>

    <#list tours as tour>
        <tr>
            <th scope="row"><a href="/tour/${tour.tourId}">${tour.tourId}</a></th>
            <td>${tour.tourDate}</td>
            <td>${tour.tourDuration}</td>
            <td>${tour.tourCost}</td>
            <td>${tour.tourType}</td>
            <td><a href="/deleteTour/${tour.tourId}">Delete</a></td>
            <td><a href="/updateTour/${tour.tourId}">Update</a></td>
        </tr>
    </#list>
</table>
</div>
</@c.page>