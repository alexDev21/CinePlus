<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SisCine.Login1" %>
<%@ MasterType virtualpath="~/Principal.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoCentral" runat="server">
    <!-- Content -->
    <section id="content">
        <div class="ic"></div>
        <div class="container_24">
            <div class="wrapper">
                <div class="grid_24 content-bg">
                    <div class="wrapper">

                        <!--INFORMACION DE INICO DE SESION-->
                        <article class="grid_6 suffix_1 prefix_1 alpha">
                            <h2>Tarjeta CinePlus info:</h2>
                            <p class="p1">
                                <strong class="str-2">CinePlus
                                </strong>
                               <%-- <dl class="adress">--%>
                                    <!--<dt>Con ella podrás :</dt>
                                	<dd><span>-Consultar tus transacciones e historial de compras</span><%--<b>+1 959 603 6035</b>--%></dd>
                                    <dd><span>Tener acceso a promociones</span><%--<b>+1 504 889 9898</b>--%></dd>
                                    <dd><span>Suscribirte a la cartelera</span><%--<a href="#">mail@thomsander.com</a>--%></dd>-->
                                  
                                      <p>Con ella podrás :</p>
                                    <p>-Consultar tus transacciones e historial de compras</p>
                                    <p>-Tener acceso a promociones</p>
                                    <p>-Suscribirte a la cartelera</p>

<%--                             
                               <%-- </dl>--%>
                                <%--  <dl class="adress">
                                	<dt>9863 Mill Road, Cambridge, MG09 99HT</dt>
                                	<dd><span>Telephone:</span><b>+1 959 603 6035</b></dd>
                                    <dd><span>Fax:</span><b>+1 504 889 9898</b></dd>
                                    <dd><span>Email:</span><a href="#">mail@thomsander.com</a></dd>
                                </dl>--%>
                            </p>    
                               
                        </article>
                        <!--FIN INFORMACION-->



                        <!--INCIIO DE SESION-->
                        <article class="grid_15 suffix_1 omega">

                            <h2>Ingresa a tu cuenta:</h2>
                            <form runat="server" id="contactf">
                                <%--<form id="contact-form" method="post">--%>
                                <fieldset>
                                    <label class="name">
                                        <span>Código Tarjeta :</span>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        
                                    </label>

                                    <label class="email">
                                        <span>Contraseña:</span>
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                        
                                    </label>


                                    <div class="btns">
                                        <asp:Button ID="btnLimp" class="btnIni"  runat="server" Text="Limpiar" OnClick="btnLimp_Click" />
                                        <asp:Button ID="btnIniciar" class="btnIni" runat="server" Text="Iniciar" OnClick="btnIniciar_Click"/>
                                    <%--<a class="button" onclick="document.getElementById('contact-form').reset()">Limpiar</a>
                                        <a class="button" onclick="document.getElementById('contact-form').submit()">Iniciar</a>--%>
                                        <center> <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" Width="490px" Font-Size="Large"></asp:Label></center>
                                         <asp:Button ID="btnReg" class="btnReg" runat="server" Text="Registrarme" OnClick="btnReg_Click" />
                                    </div>
                                </fieldset>
                                
                            </form>
                        </article>
                        <!--FIN INCIO DE SESION-->
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
