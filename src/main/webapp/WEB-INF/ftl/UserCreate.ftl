<#import "/spring.ftl" as spring>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create a new user</title>
    <link href="/static/css/reg.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

<nav role="navigation">
    <ul>
        <li><a href="/">Home</a></li>
    </ul>
</nav>
<h1>Create a new user</h1>
<div class="container">
<form role="form" name="form" action="" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    <div class="row">
        <h4>Account</h4>

        <div class="input-group input-group-icon">
            <input type="text" placeholder="Full Name"/>
            <div class="input-icon"><i class="fa fa-user"></i></div>
        </div>

        <div class="input-group input-group-icon">
        <input type="email" placeholder="Email Adress" name="email" id="email" value="${form.email}" required autofocus/>
            <div class="input-icon"><i class="fa fa-envelope"></i></div>
        </div>

        <div class="input-group input-group-icon">
        <input type="password" placeholder="Password" name="password" id="password" required/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
    </div>
        <div class="input-group input-group-icon">
        <input type="password" name="passwordRepeated" placeholder="Repeated Password" id="passwordRepeated" required/>
            <div class="input-icon"><i class="fa fa-key"></i></div>
    </div>
    </div>
    <div class="row">
        <div class="col-half">
            <h4>Date of Birth</h4>
            <div class="input-group">
                <div class="col-third">
                    <input type="text" placeholder="DD"/>
                </div>
                <div class="col-third">
                    <input type="text" placeholder="MM"/>
                </div>
                <div class="col-third">
                    <input type="text" placeholder="YYYY"/>
                </div>
            </div>
        </div>
        <#--<div class="col-half">
            <h4>Gender</h4>
            <div class="input-group">
                <input type="radio" name="gender" value="male" id="gender-male"/>
                <label for="gender-male">Male</label>
                <input type="radio" name="gender" value="female" id="gender-female"/>
                <label for="gender-female">Female</label>
            </div>
        </div>
    </div>-->

        <div class="col-half">
            <div class="input-group">
                <select name="gender" id="gender" required>
                    <option <#if form.gender == 'MALE'>selected</#if>>MALE</option>
                    <option <#if form.gender == 'FEMALE'>selected</#if>>FEMALE</option>
                </select>
            </div>
        </div>
    <div class="col-half">
        <div class="input-group">
        <select name="role" id="role" required>
            <option <#if form.role == 'USER'>selected</#if>>USER</option>
            <option <#if form.role == 'ADMIN'>selected</#if>>ADMIN</option>
        </select>
        </div>
    </div>
    <input type="submit" value="CREATE USER">
</form>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>



<script  src="js/index.js"></script>
<@spring.bind "form" />
<#if spring.status.error>
<ul>
    <#list spring.status.errorMessages as error>
        <li>${error}</li>
    </#list>
</ul>
</#if>

</body>
</html>