<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SisCine.Default" %>

<%--<%@ MasterType virtualpath="~/Principal.Master" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="bienvenido" runat="server" Visible="False">
    <%--ESTE PLACEHOLDER DEBERIA SER BORRADO DE TDOS LADOS SU CONTENIDO SE USARA DIRECTAMENTE EN LA PAG MAESTRA--%>
    <%--    <form runat="server">
        <asp:Button ID="btnHistorial" runat="server" Text="Mi historial" Visible="False" BackColor="#115FEE" BorderStyle="Groove" Font-Bold="True" Font-Names="Segoe UI Semibold" ForeColor="White" OnClick="btnHistorial_Click"/>
        <asp:Label ID="lblBienvenido" class="bienvenidolbl" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White"></asp:Label>
        <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesión" Visible="False" BackColor="#115FEE" BorderStyle="Groove" Font-Bold="True" Font-Names="Segoe UI Semibold" ForeColor="White" OnClick="btnCerrarSesion_Click" />
    </form>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Slider" runat="server">

    <!--Slider -->
    <div id="contenedor">

        <div id="slider">

            <div class="elemento">
                <a href="#">
                    <img src="images/slide-1.jpg" alt="">
                </a>
            </div>

            <div class="elemento">
                <a href="#">
                    <img src="images/slide-2.jpg" alt="">
                </a>
            </div>

            <div class="elemento">
                <a href="#">
                    <img src="images/slide-3.jpg" alt="">
                </a>
            </div>

            <div class="elemento">
                <a href="#">
                    <img src="images/slide-4.jpg" alt="">
                </a>
            </div>
        </div>
    </div>

    <!--Fin Slider -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoCentral" runat="server">
    <!-- Content -->
    <section id="content">
        <div class="ic"></div>
        <div class="container_24">
            <div class="wrapper">
                <div class="grid_24 content-bg">
                    <div class="wrapper">
                        <div class="grid_16 suffix_1 prefix_1 alpha">
                            <article class="indent-bot">
                                <h2>Cartelera en lima:</h2>


                                <div class="wrapper hr-border-1">

                                    <!--primero -->
                                    <div class="grid_4 alpha">
                                        <img src="images/estreno1.jpg" class="img-indent-bot" alt="Alien Covenant" width="150px">
                                        <dl class="def-list-1">
                                            <dt>
                                                <a href="#">Alien Covenant</a>
                                            </dt>
                                            <dd>Vivamus hendrerit mauris ut du gravida ut viverra lectus tincidunt. 
                                            </dd>
                                        </dl>
                                    </div>

                                    <!--segundo -->
                                    <div class="grid_4">
                                        <img src="images/estreno2.jpg" class="img-indent-bot" alt="" width="150px">
                                        <dl class="def-list-1">
                                            <dt>
                                                <a href="#">Rosa Chumbe</a>
                                            </dt>
                                            <dd>Vivamus hendrerit mauris ut du gravida ut viverra lectus tincidunt. 
                                            </dd>
                                        </dl>
                                    </div>

                                    <!--tercero -->
                                    <div class="grid_4">
                                        <img src="images/estreno3.jpg" class="img-indent-bot" alt="" width="150px">
                                        <dl class="def-list-1">
                                            <dt>
                                                <a href="#">La Momia</a>
                                            </dt>
                                            <dd>Vivamus hendrerit mauris ut du gravida ut viverra lectus tincidunt. 
                                            </dd>
                                        </dl>
                                    </div>

                                    <!--cuarto y ultimo -->
                                    <div class="grid_4 omega">
                                        <img src="images/estreno4.jpg" class="img-indent-bot" alt="">
                                        <dl class="def-list-1">
                                            <dt>
                                                <a href="#">Wonder Woman</a>
                                            </dt>
                                            <dd>Vivamus hendrerit mauris ut du gravida ut viverra lectus tincidunt. 
                                            </dd>
                                        </dl>
                                    </div>



                                    <!--INICIO PUBLICIDAD-->

                                </div>
                                <div class="alignright">
                                    <a href="/Cartelera.aspx" class="button">Ver cartelera completa</a>
                                </div>
                            </article>

                            <article class="banner-box">
                                <div class="inner">
                                    <h3>Aún no tienes tu tarjeta CINEPLUS ?</h3>
                                    <h4>Acercate a la boleteria y obten una ya!</h4>
                                    <blockquote class="quote indent-right">
                                        <strong>This website template has several pages:  Home, Products, Technology, Pricing, Contacts</strong> (note that contact us form - doesn't work) Vivamus hendrerit mauris ut dui. gravida ut viverra lectus tincidunt. Cras mattis tempor eros nec tristique. Sed sed felis arcu, vel vehicula augue. Maecenas faucibus sagittis cursus. Fusce tincidunt, tellus eget tristique cursus, orci mi iaculis sem.
                                    </blockquote>



                                </div>
                                <img src="images/banner-box-img.png" alt="" class="banner-box-img">
                            </article>

                        </div>


                        <div class="grid_5 suffix_1 omega">
                            <article class="indent-bot-1">
                                <h2 class="heading-1">Bienvenido!</h2>
                                <p class="p1">
                                    <strong>CinePlus es tu mejor opción para ir al cine y disfrutar de un buen rato.
                                    </strong>
                                </p>
                                <p class="hr-border-1">
                                    Aqui podrás disfrutar de la mejor cartelera en Lima, las últimas peliculas en alta definicion,las mejores salas
                                        ,el mejor sonido, la mejor atencion al público que te puedan dar, mira los trailers de tus peliculas  antes de verlas
                                        directamente en el cine, compra tus entradas via web y evita las colas.Cineplus tu mejor opción.

                                </p>

                            </article>

                            <!--PARTE DERECHA -->
                            <article>
                                <h2>NUESTROS lOCALES:</h2>
                                <ul class="list-1">
                                    <li><a href="#">LIMA NORTE</a></li>
                                    <li><a href="#">LIMA ESTE</a></li>
                                    <li><a href="#">LIMA SUR</a></li>
                                    <li><a href="#">LIMA OESTE</a></li>
                                </ul>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsPagina" runat="server">
    <script type="text/javascript">//<![CDATA[
        $(function () {
            $('#slider div:gt(0)').hide();
            setInterval(function () {
                $('#slider div:first-child').fadeOut(0)
                   .next('div').fadeIn(1000)
                   .end().appendTo('#slider');
            }, 3000);
        });
        //]]></script>
</asp:Content>
