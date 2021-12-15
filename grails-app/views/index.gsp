<!--<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grailsboli</title>
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li><a href="#">App version:
                    <g:meta name="info.app.version"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Grails</h1>

       

            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>

</body>
</html>

-->

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css"
        href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="bankdashboard.css">
</head>
<style  type="text/css" media="screen">
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200&display=swap');
* {
    padding: 0;
    margin: 0;
    font-family: sans-serif;
    font-size: 14px;
    text-decoration: none;
    list-style: none;
    user-select: none;
}

body
{
    background:  linear-gradient(-30deg, #33ccff,#81d5ff ,#ffccff,#81d5ff);  
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

body::before
{
    content: '';
    position: absolute; 
    left: 8%;
    bottom: 2%;
    width: 80px;
    height: 80px;
    background: rgba(255,255,255,.5); 
    animation: zigzag2 3s linear infinite;
}

@keyframes zigzag2
{
    0%,100%
    {
        transform: translateX(50px);
       
    }

    50%
    {
        transform: translateX(100px) scale(.8); 
        
    }
}

body::after
{
    content: '';
    position: absolute; 
    left: 92%;
    top: 12%;
    z-index: -1;
    width: 80px;
    height: 80px;
    background: rgba(255,255,255,.5); 
    animation: zigzag 3s linear infinite;
}

@keyframes zigzag
{
    0%,100%
    {
        transform: translateY(50px);
       
    }

    50%
    {
        transform: translateY(100px) scale(.8); 
        
    }
}

.container
{
    width: 90%; 
    height: 85vh;
    background: rgba(255,255,255,.4);
    backdrop-filter: blur(5px);
}

.container .navbar
{
    display: flex;
    justify-content: space-between;
    align-items: center;  
    padding: 8px 25px;
    margin-top: 1em;
}

.container .navbar .logo
{
    display: flex;  
    align-items: center;
}

.container .navbar .logo img
{
    animation: rotate 8s linear infinite;
}

@keyframes rotate
{
    from
    {
        transform: rotate(-360deg);
    }
}

.container .navbar .logo .logoname
{
    font-size: 18px;
    text-transform: uppercase;
    margin-left: .5em;
    color: #000;
    text-shadow: 1px 1px 1px rgba(16,16,16,.1),
                     1px 2px 1px rgba(16,16,16,.2),
                     1px 3px 1px rgba(16,16,16,.1),
                     1px 4px 1px rgba(16,16,16,.2),
                     1px 5px 1px rgba(16,16,16,.1),
                     1px 6px 1px rgba(16,16,16,.2);
}

.searchbox
{
    position: relative; 
}

.searchbox input
{
    padding: 8px 120px 8px 20px ;
    border: none;
    outline: none;
    border-radius: 30px; 
    transition: .3s;
}

.searchbox input:focus
{ 
    padding: 8px 250px 8px 20px ;
}

.searchbox .fa
{
    position: absolute;
    top: 10px;
    right: 10px;
}
 

.container .navbar .navitem
{
    display: flex;
    justify-content: center;
    align-items: center;
}   

.navitem .lang select
{
    padding: 6px 30px;
    border: none;
    outline: none;
    border-radius: 6px; 
    position: relative;
    right: 4em;
}
    

.navitem .icons
{
    position: relative;
    right: 1em;
}

.navitem .icons ul li
{
    position: relative;
    display: inline-block;
    font-size: 16px;
    margin: 0 12px;
}

.navitem .icons ul li .fa
{
    padding: 5px;
    color: #fff;
    background: #000; 
    border-radius: 50%; 
    transition: .3s;
}
 

.navitem .icons ul li .fa:hover
{
    transform: scale(1.2) rotate(360deg);
    color: #33cc33;
    background: transparent
}

.navitem .account
{
    position: relative;
    display: flex;
    align-items: center;
}

.navitem .account img
{
    border-radius: 50%;
}

.navitem .account .name
{
    text-transform: capitalize;
    margin: 0 8px;
    font-weight: 700;
}

.navitem .account .username
{
    position: absolute;
    top: 18px;
    left: 32px;
    font-size: 12px; 
    color: #000;    
}
    

.container-body
{
    display: grid;
    grid-template-columns: 18% auto; 
}

.container-body .sidebar
{  
    margin: 20px 0 20px 20px;
    background: rgba(255,255,255,.6);
    border-radius: 14px;
    padding: 10px;
}

.container-body .sidebar ul li
{
    padding: 10px 10px;
    margin: 10px 0;   
}

.container-body .sidebar ul li:hover
{
    background: #00004d;
    color: #fff;
    border-radius: 8px;  
}

.container-body .sidebar ul li a
{
    color: #000;
    text-transform: capitalize;
    font-weight: bolder;
}

.container-body .sidebar ul li:hover a
{
    color: #fff;
}

.container-body .sidebar ul .dashboard
{
    background: #00004d;
    color: #fff;
    border-radius: 8px;
    padding: 10px; 
}

.container-body .sidebar ul .dashboard a
{
    color: #fff;
}

.container-body .sidebar ul li .fa
{
    font-size: 18px; 
    padding: 0 5px;
}

.container-body .main-body .headtittle
{   
    padding: 15px;
    margin: 20px;
    margin-bottom: 0; 
}

.container-body .main-body .headtittle span
{
    text-transform: capitalize;
    font-weight: 700;
    font-size: 16px;
}

.container-body .main-body .headtittle  h2
{
    font-size: 25px; 
    font-weight: normal; 
}

.container-body .main-body .cards
{
    display: grid;
    grid-template-rows:  180px 140px;
    grid-gap: 20px;
    padding: 20px;
}

.container-body .main-body .cards .row-1
{
    display: grid;
    grid-template-columns:  30% 40% auto;
    grid-gap: 20px;
}

.container-body .main-body .cards .row-2
{
    display: grid;
    grid-template-columns: repeat(4,auto);
    grid-gap: 20px;
}

.container-body .main-body .cards .row .col
{
    background: rgba(255,255,255,.5);
    border-radius: 15px; 
}

.container-body .main-body .cards .row .col .cardtittle
{
    font-size: 16px;
    padding: 20px;
    text-transform: capitalize;
}

.balance-card
{
    position: relative;
}

.balance-card h2
{
    font-size: 28px;
    padding: 10px 20px;
}
 

.balance-card span
{
    font-size: 16px;
    font-weight: bold;
    padding: 20px;
    color: #33cc33;
}

.balance-card img
{
    position: absolute;
    top: 5em;
    left: 14em;
}

.debit-card
{
     width: 100%;
     height: 100%;
    position: relative;
    border-radius: 18px;
    background: #33ccff;
    color: #fff; 
}

.debit-card .cardnumber
{
    font-size: 18px;
    padding:  10px 20px;
    padding-right: 0;
    background: rgba(255,255,255,.6);
    color: #000; 
    font-weight: normal;
    text-shadow: 1px 1px 1px rgba(16,16,16,.1),
                     1px 2px 1px rgba(16,16,16,.1),
                     1px 3px 1px rgba(16,16,16,.1),
                     1px 4px 1px rgba(16,16,16,.1),
                     1px 5px 1px rgba(16,16,16,.1) ;
     
}

.debit-card .cardholder
{
    font-size: 18px;
    padding: 20px;
    font-weight: normal;    
}

.col .t-i, .p-i, .u-i, .i-s
{
    font-size: 25px;
    font-weight: 700;
    padding: 20px 5px 20px 20px;
}
  
.col .status
{
    font-size: 18px;
    padding: 6px 20px;
    border-radius: 6px;
    color: #fff;
    position: relative;
    bottom: 3px;
}

.total-invoice  .status
{
    font-weight: 700;
    color: #339933;
    font-size: 16px;
    padding-left: 5px;
}
 

.paid-invoice .status
{
    background: #0066cc;
}
 
.unpaid-invoice .status
{
    background: #ff0066; 
}
 
.invoice-sent .status
{
    background: #ffcc00; 
}
</style>
<body>
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <img style="width: 40px;" src="recycling.png" alt="">
                <span class="logoname">Web Logo</span>
            </div>

            <div class="searchbox">
                <form action="">
                    <input type="text" placeholder="Search">
                    <i class="fa fa-search"></i>
                </form>
            </div>

            <div class="navitem">
                <div class="lang">
                    <select name="language" id="">
                        <option value="">English</option>
                        <option value="">Hindi</option>
                    </select>
                </div>

                <div class="icons">
                    <ul>
                        <li><i class="fa fa-envelope"></i></li>
                        <li><i class="fa fa-bell"></i></li>
                    </ul>
                </div>

                <div class="account">
                    <img width="25px" height="25px" src="pic.jpg" alt="">
                    <span class="name">robert downey</span>
                    <span class="username">@robert564</span>
                </div>
            </div>
        </div>

        <div class="container-body">
            <div class="sidebar">
                <ul>
                    <li class="dashboard">
                        <i class="fa fa-dashcube"></i>
                        <a href="#">Dashboard</a>
                    </li>
                    <li>
                        <i class="fa fa-money"></i>
                        <a href="#">balance</a>
                    </li>
                    <li>
                        <i class="fa fa-envelope-o"></i>
                        <a href="#">invoice</a>
                    </li>
                    <li>
                        <i class="fa fa-credit-card-alt"></i>
                        <a href="#">card</a>
                    </li>
                    <li>
                        <i class="fa fa-history"></i>
                        <a href="#">history</a>
                    </li>
                    <li>
                        <i class="fa fa-info-circle"></i>
                        <a href="#">details</a>
                    </li>
                </ul>
            </div>

            <div class="main-body">
                <div class="headtittle">
                    <span class="greeeting">Hii Robert,</span>
                    <h2>Overview</h2>
                </div>

                <div class="cards">
                    <div class="row row-1">
                        <div class="col">
                            <div class="balance-card">
                                <h3 class="cardtittle">Balance</h3>
                                <h2 class="balance">$ 54321.65</h2>
                                <span class="balancestatus">+15%</span>
                                <img width="60px" height="60px" src="bar1.png" alt="">
                            </div>
                        </div>

                        <div class="col">
                            <div class="latest-activity">
                                <h3 class="cardtittle">Latest activity</h3>
                                <img width="100%" height="100px" src="graph4.png" alt="">
                            </div>
                        </div>

                        <div class="col">
                            <div class="debit-card">
                                <h3 class="cardtittle">My card</h3>
                                <h3 class="cardnumber">1234 5678 9101 1123</h3>
                                <h3 class="cardholder">Robert Downey</h3>
                            </div>
                        </div>
                    </div>

                    <div class="row row-2">
                        <div class="col">
                            <div class="total-invoice">
                                <h3 class="cardtittle">Total invoice</h3>
                                <span class="t-i">520</span>
                                <span class="status">+12%</san>
                            </div>
                        </div>
                        <div class="col">
                            <div class="paid-invoice">
                                <h3 class="cardtittle">Paid invoice</h3>
                                <span class="p-i">210</span>
                                <span class="status">
                                    85%
                                    <i class="fa fa-line-chart"></i>
                                </span>
                            </div>
                        </div>
                        <div class="col">
                            <div class="unpaid-invoice">
                                <h3 class="cardtittle">Unpaid invoice</h3>
                                <span class="u-i">65</span>
                                <span class="status">
                                    15%
                                    <i class="fa fa-line-chart"></i>
                                </span>
                            </div>
                        </div>
                        <div class="col">
                            <div class="invoice-sent">
                                <h3 class="cardtittle">Invoice sent</h3>
                                <span class="i-s">120</span>
                                <span class="status">
                                    <i class="fa fa-check"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
