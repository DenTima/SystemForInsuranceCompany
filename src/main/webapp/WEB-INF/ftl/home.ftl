<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#-- @ftlvariable name="currentUser" type="com.insurance.domain.CurrentUser" -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Home page</title>
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="/static/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/component.css" />
    <script src="/static/js/modernizr.custom.js"></script>
</head>
<body>
<div class="container">
    <ul id="gn-menu" class="gn-menu-main">
        <li class="gn-trigger">
            <a class="gn-icon gn-icon-menu"><span>Menu</span></a>
<nav role="navigation" class="gn-menu-wrapper">
    <div class="gn-scroller">
    <ul class="gn-menu">
    <#if !currentUser??>
        <li><a href="/login">Log in</a></li>
    </#if>
    <#if currentUser??>
        <li>
            <form action="/logout" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button type="submit">Log out</button>
            </form>
        </li>
        <li><a href="/user/${currentUser.id}">View myself</a></li>
    </#if>
    <#if currentUser?? && currentUser.role == "ADMIN">
        <li><a href="/user/create">Create a new user</a></li>
        <li><a href="/users">View all users</a></li>
    </#if>
    </ul>
    </div>
</nav>
        </li>
        <li><a href="" >Codrops</a></li>
        <li><a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Development/HeaderEffects/"><span>Previous Demo</span></a></li>
         <#if currentUser??>
        <li>
            <form class="form_logout" action="/logout" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button class="btn_logout" type="submit">Log out</button>
            </form>
        </li>
        </#if>
    </ul>
    <header>
        <h1>Google Nexus Website Menu <span>A sidebar menu as seen on the <a href="http://www.google.com/nexus/index.html">Google Nexus 7</a> page</span></h1>
    </header>
</div><!-- /container -->
<script src="/static/js/classie.js"></script>
<script src="/static/js/gnmenu.js"></script>
<script>
    new gnMenu( document.getElementById( 'gn-menu' ) );
</script>
</body>
</html>