
<!DOCTYPE HTML>
<!--
	Retrospect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
    <title>Promos x Puntos</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <asset:stylesheet src="template.css"/>
</head>
<body class="landing">

<!-- Header -->
<header id="header" class="alt">
    <h1><a href="">Promos x Puntos</a></h1>
    <a href="#nav">Menu</a>
</header>

<!-- Nav -->
<nav id="nav">
    <ul class="links">
        <li><a href="">Principal</a></li>
        <li><a href="users-module">usuarios</a></li>
        <li><a href="#subscribe">Registrar usuario</a></li>
        <li><a href="customersIndex">Para empresas</a></li>
        <li><a href="establishment/create">Crear Establecimiento</a></li>
        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
            <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link></li>
        </g:each>
    </ul>
</nav>

<!-- Banner -->
<section id="banner">
    <asset:image src="logotipo.png"/>
    <p>PromosXPuntos - Para que te diviertas ganando</p>
    <ul class="actions">
        <li><a href="#two" class="button big special">Ingresa</a></li>
        <li><a href="#subscribe" class="button big special">Suscribete</a></li>
    </ul>
</section>

<!-- One -->
<section id="one" class="wrapper style1">
    <div class="inner">
        <article class="feature left">
            <span class="image"><asset:image src="pic01.jpg" width="500px"/></span>

            <div class="content">
                <h2>Con promos x puntos..</h2>
                <p>Podrás conocer el estado de tus puntos, encontrar establecimientos asociados y conocer si tienes premios disponibles.</p>
                <ul class="actions">
                    <li>
                        <a href="#" class="button alt">Ipsum</a>
                    </li>
                </ul>
            </div>
        </article>
        <article class="feature right">
            <span class="image"><asset:image src="pic02.jpg" width="500px"/></span>
            <div class="content">
                <h2>Conoce las promociones a</h2>
                <p>Conozca el estado de las promociones y recibe ofertas especiales de tus tiendas preferidas</p>
                <ul class="actions">
                    <li>
                        <a href="#" class="button alt">Lorem</a>
                    </li>
                </ul>
            </div>
        </article>
        <center>
            <header class="major narrow">
                <h2>Encuentranos</h2>
            </header>
            <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d16491.39356475207!2d-74.08865031089259!3d4.654165704834756!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2sco!4v1446650936869" width="75%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
        </center>

    </div>
</section>



<!-- Two -->
<section id="two" class="wrapper style4 special">
    <div class="inner">
        <header class="major narrow">
            <h2>Ingresa</h2>
            <p>Ingresa tus datos de usuario</p>
        </header>
        <center>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:uploadForm controller="standardUser" action="logIn" method="post">
                <div class="container 75%" align="center">
                    <div class="row uniform 50%" align="center">
                        <div class="6u 12u$(xsmall)" align="center">
                            <g:if test="${!hasErrors(field: 'nickname','error')}">
                                <div class="12u$" style="text-align: center" align="center">
                                    <g:textField id="nickname" name="nickname"  placeholder="Nombre de usuario"></g:textField>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="12u$">
                                    <g:textField id="nickname" name="nickname"  placeholder="Nombre de usuario"></g:textField>
                                </div>
                            </g:else>
                        </div>
                        <div class="6u 12u$(xsmall)" style="text-align: center" align="center">
                            <g:if test="${!hasErrors(field: 'password','error')}">
                                <div class="12u$">
                                    <g:passwordField id="password" name="password" placeholder="Contraseña"></g:passwordField>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="12u$" >
                                    <g:passwordField id="password" name="password" placeholder="Contraseña"></g:passwordField>
                                </div>
                            </g:else>
                        </div>
                    </div>
                </div>
                <ul class="actions">
                    <g:submitButton name="summit" type="submit" value="Ingresar" class="special" tabindex="-1"></g:submitButton>
                </ul>
            </g:uploadForm>
        </center>

    </div>
</section>

<!-- Three -->
<section id="three" class="wrapper style3 special">
    <div class="inner">
        <header class="major narrow	">
            <h2>Manten a tus clientes cerca y tus ingresos en aumento.</h2>
            <p>Con Promos X Puntos tendrás a la mano una herramienta de fidelización y marketing para tu compañia.</p>
        </header>
        <ul class="actions">
            <li><a href="customersIndex" class="button big alt">PromosXPuntos para Empresas</a></li>
        </ul>
    </div>
</section>

<!-- Four -->
<section id="subscribe" class="wrapper style4 special">
    <div class="inner">
        <header class="major narrow">
            <h2>Suscribete</h2>
        </header>
        <g:uploadForm controller="standardUser" action="save" method="post" accept-charset="UTF-8" role="form" class="form-signup">
            <div class="container 75%">
                <div class="row uniform 50%">
                    <g:if test="${!hasErrors(field: 'name','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:textField id="name" name="name" required="" placeholder="Nombres"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="name" name="name" required="" placeholder="Nombres"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Nombre malo</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'lastname','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:textField id="lastname" name="lastname" required="" placeholder="Apellidos"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="lastname" name="lastname" required="" placeholder="Apellidos"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Apellido malo</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'email','error')}">
                        <div class="12u$">
                            <g:textField id="email" name="email" required="" placeholder="Correo electrónico"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="email" name="email" required="" placeholder="Correo electrónico"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Correo malo</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'nickname','error')}">
                        <div class="12u$">
                            <g:textField id="nickname" name="nickname" required="" placeholder="Nombre de usuario"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <div class="12u$">
                        <g:textField id="nickname" name="nickname" required="" placeholder="Nombre de usuario"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Nombre de usuario malo</label>
                        </div>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'password','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:passwordField id="password" name="password" required="" placeholder="Contraseña"></g:passwordField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:passwordField id="password" name="password" required="" placeholder="Contraseña"></g:passwordField>
                        <label class="control-label list-group-item-danger img-rounded">Contraseña mala</label>
                    </g:else>
                    <div class="6u$ 12u$(xsmall)">
                        <input name="repeatpass" placeholder="Repita la contraseña" type="password" />
                    </div>
                    <g:if test="${!hasErrors(field: 'gender','error')}">
                        <div class="12u$">
                            <div class="select-wrapper">
                                <g:select name="gender" from="['Hombre', 'Mujer']"  noSelection="['':'-Género-']"/>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${!hasErrors(field: 'telephone','error')}">
                        <div class="12u$">
                            <g:textField id="telephone" name="telephone" required="" placeholder="Teléfono"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="telephone" name="telephone" required="" placeholder="Teléfono"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Telefono malo</label>
                    </g:else>
                    <div class="12u$">
                        <label>Fecha de Nacimiento</label>
                    </div>
                    <g:if test="${!hasErrors(field: 'birthday','error')}">
                        <div class="12u">
                            <g:datePicker years="${1915..2015}" name="birthday" id="birthday" precision="day" class="form-control" value="${new Date()}"  noSelection="['':'Selecciona']"/>
                        </div>
                    </g:if>
                    <center>
                        <div class="row" align="center">
                            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2  list-group-item img-rounded avatar-loader" >
                                <legend>Imagen de Perfil</legend>
                                <input type="file" name="picture"/>
                                <div style="font-size:0.8em; margin: 1.0em;">
                                    <p>Tu imagen es opcional, pero es más fácil identificarte con ella!.</p>
                                </div>
                            </div>
                        </div>
                    </center>
                </div>
            </div>
            <g:submitButton name="summit" type="submit" value="Registrarse" class="special" tabindex="-1"></g:submitButton>
        </g:uploadForm>

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
