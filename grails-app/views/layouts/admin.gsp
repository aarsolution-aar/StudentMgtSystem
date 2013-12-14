<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <g:set var="appName" value="SMS" scope="page"/>
    <title>${appName} | Admin<g:layoutTitle/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <p:css name="bootstrap"/>
    <style type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
    }
    </style>
    <p:css name="adminCss"/>
    <p:javascript src="jquery/jquery-1.8.3"/>
    <p:javascript src="adminJs"/>
    <g:layoutHead/>
</head>

<body>
<header class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <img src="${resource(dir: 'images', file: 'aarsolution_logo1.png')}" alt="SMS" height="30">
            </a>
        </div>

        <nav class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        Sales
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">Order</li>
                        <li><g:link controller="order" action="list">Manage Orders</g:link></li>
                        <li><g:link controller="order" action="orderLimits">Set order limits</g:link></li>
                        <li class="divider"></li>

                        <li class="dropdown-header">Promotions</li>
                        <li><g:link controller="samplingActivity" action="list">Sampling Activity</g:link></li>
                        <li><g:link controller="featuredProduct" action="list">Featured product</g:link></li>


                        <li class="divider"></li>
                        <li class="dropdown-header">Coupon</li>
                        <li><g:link controller="coupon" action="create">Create coupon</g:link></li>
                        <li><g:link controller="coupon" action="list">Manage coupons</g:link></li>
                        <li><g:link controller="coupon" action="promotions">Promotions</g:link></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Shop</li>
                        <li><g:link controller="shop"
                                    action="list">Manage Shops</g:link></li>
                        <li><g:link controller="shop"
                                    action="create">Create Shop</g:link></li>

                        <li class="divider"></li>
                        <li class="dropdown-header">Reports</li>
                        <li><g:link controller="adminReports"
                                    action="productSales">Product order frequency</g:link></li>
                        <li><g:link controller="adminReports"
                                    action="pageSource">Cart source contribution</g:link></li>
                        <li><g:link controller="searchSuggestion" action="list">Search Terms</g:link></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        Delivery
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="delivery" action="deliveryLimits">Delivery Limits</g:link></li>
                        <li><g:link controller="delivery"
                                    action="addressValidation">Address Validation</g:link></li>
                        <li><g:link controller="delivery"
                                    action="defaultTimeIntervals">Set default time intervals</g:link></li>
                        <li><g:link controller="delivery" action="deliveryArea">Delivery Area</g:link></li>
                        <li><g:link controller="delivery" action="deliveryFee">Delivery Fees</g:link></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">DropOff Points</li>
                        <li><g:link controller="dropOffPoint" action="create">Create Dropoff Point</g:link></li>
                        <li><g:link controller="dropOffPoint" action="list">Manage Dropoff Point</g:link></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        User
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="manageUsers">Manage</g:link></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Reports</li>
                        <li><g:link controller="manageUsers">Registrations per day</g:link></li>
                        <li><g:link controller="manageUsers">Customers per day</g:link></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        Recipe
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><g:link controller="recipe" action="create">Create new recipe</g:link></li>
                        <li><g:link controller="ingredient" action="mapping">Map ingredients</g:link></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        Miscellaneous
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><g:link controller="admin" action="broadcast">Broadcast Message</g:link></li>
                        <li><g:link controller="quartz" action="list">Scheduler</g:link></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        Payment
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><g:link controller="paymentSetting"
                                    action="paymentSettings">Payment Settings</g:link></li>
                        <li><g:link controller="klarnaPaymentFailAttempt" action="list">Invoice Fraud</g:link></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        Content
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><g:link controller="homePageBanner" action="list">Start Page</g:link></li>
                    </ul>
                </li>
            </ul>
        </nav></div>
</header>

<div class="container">
    <g:layoutBody/>
</div>
</body>
</html>