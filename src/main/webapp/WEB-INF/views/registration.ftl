<#import "parts/common.ftl" as c>
<#import "login.ftl" as l>
<@c.page>
    Register
    <form name="user" action="/registration" method="post">
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Login : </label>
            <div class="col-sm-5">
                <input title="Login" type="text" name="login" placeholder="Login">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">User Name : </label>
            <div class="col-sm-5">
                <input title="Name" type="text" name="userName" placeholder="User name">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Email : </label>
            <div class="col-sm-5">
                <input title="Email" type="text" name="email" placeholder="Email">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Password : </label>
            <div class="col-sm-5">
                <input title="Password" type="text" name="pass" placeholder="Password">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Confirm password : </label>
            <div class="col-sm-5">
                <input title="Password" type="text" name="pass2" placeholder="Password">
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</@c.page>