<%@ page import="promosxpuntosapp.Customer" contentType="text/html;charset=UTF-8" %>

<!DOCTYPE HTML>
<!--
	Retrospect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
    <title>Promos x Puntos - Modulo de Cliente</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <asset:stylesheet src="template.css"/>
</head>
<body>

<!-- Header -->
<header id="header">
    <h1><a href="index.html">Promos x Puntos</a></h1>
    <a href="#nav">Menu</a>
</header>

<!-- Nav -->
<nav id="nav">
    <ul class="links">
        <li><a href="${createLink(controller:'customer', action:'logOut')}" class="button special">Cerrar Sesion</a></li>
        <li><a href="/promosxpuntosapp/profileCustomer/createEstablishment">Crear establecimiento</a></li>
        <li><a href="#">Listar establecimientos</a></li>
    </ul>
</nav>


<!-- Main -->
<section id="main" class="wrapper">
    <div class="container">
        <header class="major special">
            <h2> ${session.customer.name}</h2>
            <figure>
                <g:if test="${session.customer.logo != null}">
                    <img class="img-responsive img-thumbnail" src="${createLink(controller:'customer', action:'displayPicture', params: [nickname:session.customer.nickname])}" />
                </g:if>
                <g:else>
                    <g:img dir="images" file="logotipo.png" class="img-responsive img-thumbnail"/>
                </g:else>
            </figure>
        </header>
        <div class="container 75%">
            <div class="row uniform 50%">
                <g:each var="c" in="${session.customer.establishment}">
                    <div class="6u 12u$(xsmall)">
                        <div class="table-wrapper">
                            <table>
                                <tr><th> Nombre:</th> <th>${c?.name}</th></tr>
                                <tr><th> Direccion:</th> <th>${c?.address}</th></tr>
                                <tr><th> Numeero telefonico:</th> <th>${c?.telephoneNumber}</th></tr>
                            </table>
                        </div>
                    </div>
                </g:each>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer id="footer">
    <div class="inner">
        <ul class="icons">
            <li><a href="#" class="icon fa-facebook">
                <span class="label">Facebook</span>
            </a></li>
            <li><a href="#" class="icon fa-twitter">
                <span class="label">Twitter</span>
            </a></li>
            <li><a href="#" class="icon fa-instagram">
                <span class="label">Instagram</span>
            </a></li>
            <li><a href="#" class="icon fa-linkedin">
                <span class="label">LinkedIn</span>
            </a></li>
        </ul>
        <ul class="copyright">
            <li>&copy; PromosXPuntos.</li>
            <li>IngeSoft II.</li>
            <li>Unal.edu.co.</li>
        </ul>
    </div>
</footer>


<!-- Scripts -->
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="skel.min.js"/>
<asset:javascript src="util.js"/>
<asset:javascript src="main.js"/>

</body>
</html>