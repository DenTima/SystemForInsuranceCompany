<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#-- @ftlvariable name="error" type="java.util.Optional<String>" -->
<#import "spring.ftl" as spring />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Log in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='//fonts.googleapis.com/css?family=Text+Me+One' rel='stylesheet' type='text/css'/>
</head>
<body>

<!--<nav role="navigation">
    <ul>
        <li><a href="/">Home</a></li>
    </ul>
</nav>-->
<div class="main-w3layouts wrapper">
<h1>Login</h1>
    <div class="main-agileinfo">
        <div class="agileits-top">
        <form role="form" action="/login" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input type="text" name="email" id="email" placeholder="Email" required autofocus/>
        <input type="text" name="password" id="password" placeholder="Password" required/>
            <div class="wthree-text">
                <ul>
                    <li>
                        <label class="anim" for="remember-me">
                            <input class="checkbox" type="checkbox" name="remember-me" id="remember-me"/>
                        <span> Remember me ?</span>
                        </label>
                    </li>
                </ul>
                <div class="clear"> </div>
            </div>
            <input type="submit" value="LOGIN">
</form>
              <#if error.isPresent()>
<p>The email or password you have entered is invalid, try again.</p>
              </#if>
    </div>
</div>
    <ul class="w3lsg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div>
</body>
</html>