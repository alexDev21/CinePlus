<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VentaEntradas.aspx.cs" Inherits="SisCine.VentaEntradas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="bienvenido" runat="server">  ################PONER SIM FORM O AGRANDAR EL FORMSERVER
     <form runat="server">
        <asp:Label ID="lblBienvenido" class="bienvenidolbl" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White"></asp:Label>
        <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesión" Visible="False" BackColor="#115FEE" BorderStyle="Groove" Font-Bold="True" Font-Names="Segoe UI Semibold" ForeColor="White" OnClick="btnCerrarSesion_Click" />
    </form>
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContenidoCentral" runat="server">
    <!-- Content -->
    <section id="content">
        <div class="container_24">
            <div class="wrapper">
                <div class="grid_24 content-bg">
                    <form runat="server">
                        <div class="wrapper">
                            <article class="grid_14 suffix_1 prefix_1 alpha" role="combobox">
                                <h2>Selecciona tu pelicula:</h2>
                                <center> <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" Width="490px" Font-Size="Large"></asp:Label></center>
                                
                                
                                
                                <div class="wrapper p2 hr-border-1">
                                    <img src="images/Cartelera/peli1.PNG" alt="" class="img-indent">
                                    <dl class="extra-wrap def-list-1">
                                        <dt>
                                            <a href="#">APLICACION DIABOLICA.</a>
                                        </dt>
                                        <dd class="pad-left">Cinco adolescentes reciben una invitación para descargar una nueva aplicación tipo SIRI. Una vez descargada, esta penetra en sus miedos más profundos y comienza a atormentarlos hasta llevarlos a la muerte..
                                        </dd>
                                        <dd class="pad-left">Título Original: Bedeviled
                                        </dd>
                                        <dd class="pad-left">Duración: 01:31:00 hrs.
                                        </dd>
                                        <dd class="pad-left">País: EE.UU
                                        </dd>
                                        <dd class="pad-left">Director: Abel and Burlee Vang
                                        </dd>
                                    </dl>
                                    
                                    Seleccione Sede:<asp:DropDownList ID="txtCine" runat="server">
                                        <asp:ListItem Selected="True" Value="1"> Norte </asp:ListItem>
                                        <asp:ListItem Value="2"> Este </asp:ListItem>
                                        <asp:ListItem Value="4"> Sur </asp:ListItem>
                                    </asp:DropDownList>

                                         Seleccione funcion:<asp:DropDownList ID="txtFuncion" runat="server">
                                        <asp:ListItem Selected="true" Value="8:00 pm"> 8:00 pm </asp:ListItem>
                                        <asp:ListItem Value="9:00 pm"> 9:00 pm </asp:ListItem>
                                        <asp:ListItem Value="10:00 pm"> 10:00 pm </asp:ListItem>
                                    </asp:DropDownList>

                                         CantTicket niños:<asp:TextBox ID="txtCantNi" runat="server" MaxLength="2"></asp:TextBox>
                                    <br />
                                         CantTicket adultos:<asp:TextBox ID="txtCantAd" runat="server" MaxLength="2"></asp:TextBox>

                                    <asp:Button ID="btnComp1" runat="server" Text="Comprar" OnClick="btnComp1_Click" />
                                
                                </div>



                                <%-- 
                                <div class="wrapper p2 hr-border-1">
                                    <img src="images/Cartelera/peli2.PNG" alt="" class="img-indent">
                                    <dl class="extra-wrap def-list-1">
                                        <dt>
                                            <a href="#">RAPIDO Y PELUDO.</a>
                                        </dt>
                                        <dd class="pad-left">Vivamus hendrerit mauris ut du gravida ut viverra lectus tincidunt. Cras mattis tempor eros nec tristique. Sed sed felis arcu, vel vehicula augue. Maecenas faucibus sagittis cursus. Fusce 
                                        </dd>
                                        <dd class="pad-left">Título Original: Bedeviled
                                        </dd>
                                        <dd class="pad-left">Duración: 01:31:00 hrs.
                                        </dd>
                                        <dd class="pad-left">País: EE.UU
                                        </dd>
                                        <dd class="pad-left">Director: Abel and Burlee Vang
                                        </dd>

                                    </dl>    
                                    Seleccione Sede:<asp:DropDownList ID="txtCine2" runat="server">
                                        <asp:ListItem Selected="True" Value="1"> Norte </asp:ListItem>
                                        <asp:ListItem Value="2"> Este </asp:ListItem>
                                        <asp:ListItem Value="4"> Sur </asp:ListItem>
                                    </asp:DropDownList>

                                         Seleccione funcion:<asp:DropDownList ID="txtFuncion2" runat="server">
                                        <asp:ListItem Selected="true" Value="8:00 pm"> 8:00 pm </asp:ListItem>
                                        <asp:ListItem Value="9:00 pm"> 9:00 pm </asp:ListItem>
                                        <asp:ListItem Value="10:00 pm"> 10:00 pm </asp:ListItem>
                                    </asp:DropDownList>

                                         CantTicket niños:<asp:TextBox ID="txtCantNi2" runat="server" MaxLength="2"></asp:TextBox>
                                    <br />
                                         CantTicket adultos:<asp:TextBox ID="txtCantAd2" runat="server" MaxLength="2"></asp:TextBox>

                                    <asp:Button ID="Button2" runat="server" Text="Comprar" OnClick="Button2_Click" />
                                </div>

                                <div class="wrapper p2 hr-border-1">
                                    <img src="images/Cartelera/peli3.PNG" alt="" class="img-indent">
                                    <dl class="extra-wrap def-list-1">
                                        <dt>
                                            <a href="#">PIRATAS DEL CARIBE:LA VENGANZA DE SALAZAR</a>
                                        </dt>
                                        <dd class="pad-left">El capitán Jack Sparrow se enfrentará a un grupo de piratas-fantasma comandados por el terrorífico capitán Salazar, recién escapado del Triángulo de las Bermudas. La única posibilidad de Sparrow para salir con vida es encontrar el legendario Tridente de Poseidón.  
                                        </dd>
                                        <dd class="pad-left">Título Original: Pirates of the Caribbean: Dead Men Tell No Tales
                                        </dd>
                                        <dd class="pad-left">Duración: 02:09:00 hrs..
                                        </dd>
                                        <dd class="pad-left">País: EE.UU
                                        </dd>
                                        <dd class="pad-left">Director: Joachim Rønning, Espen Sandberg
                                        </dd>
                                    </dl>
                                        Seleccione Sede:<asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem Selected="True" Value="1"> Norte </asp:ListItem>
                                        <asp:ListItem Value="2"> Este </asp:ListItem>
                                        <asp:ListItem Value="4"> Sur </asp:ListItem>
                                    </asp:DropDownList>

                                         Seleccione funcion:<asp:DropDownList ID="DropDownList3_2" runat="server">
                                        <asp:ListItem Selected="true" Value="8:00 pm"> 8:00 pm </asp:ListItem>
                                        <asp:ListItem Value="9:00 pm"> 9:00 pm </asp:ListItem>
                                        <asp:ListItem Value="10:00 pm"> 10:00 pm </asp:ListItem>
                                    </asp:DropDownList>

                                         CantTicket niños:<asp:TextBox ID="txtCantNi3" runat="server" MaxLength="2"></asp:TextBox>
                                    <br />
                                         CantTicket adultos:<asp:TextBox ID="txtCantAd3" runat="server" MaxLength="2"></asp:TextBox>

                                    <asp:Button ID="Button3" runat="server" Text="Comprar" OnClick="Button3_Click" />
                                </div>
                                <div class="wrapper p2 hr-border-1">
                                    <img src="images/Cartelera/peli4.PNG" alt="" class="img-indent">
                                    <dl class="extra-wrap def-list-1">
                                        <dt>
                                            <a href="#">EL REY ARTURO</a>
                                        </dt>
                                        <dd class="pad-left">Los Caballeros de la Mesa Redonda nos introduce a un joven Arturo callejero que dirige a su pandilla por los callejones de Londonium. Tras sacar la espada de Excalibur, se verá obligado a tomar algunas duras decisiones. Junto a una misteriosa mujer llamada Guinevere
                                        </dd>
                                        <dd class="pad-left">Título Original: Bedeviled
                                        </dd>
                                        <dd class="pad-left">Duración: 01:31:00 hrs.
                                        </dd>
                                        <dd class="pad-left">País: EE.UU
                                        </dd>
                                        <dd class="pad-left">Director: Abel and Burlee Vang
                                        </dd>
                                    </dl>
                                        Seleccione Sede:<asp:DropDownList ID="DropDownList4" runat="server">
                                        <asp:ListItem Selected="True" Value="1"> Norte </asp:ListItem>
                                        <asp:ListItem Value="2"> Este </asp:ListItem>
                                        <asp:ListItem Value="4"> Sur </asp:ListItem>
                                    </asp:DropDownList>

                                         Seleccione funcion:<asp:DropDownList ID="DropDownList4_2" runat="server">
                                        <asp:ListItem Selected="true" Value="8:00 pm"> 8:00 pm </asp:ListItem>
                                        <asp:ListItem Value="9:00 pm"> 9:00 pm </asp:ListItem>
                                        <asp:ListItem Value="10:00 pm"> 10:00 pm </asp:ListItem>
                                    </asp:DropDownList>

                                         CantTicket niños:<asp:TextBox ID="TextBox4" runat="server" MaxLength="2"></asp:TextBox>
                                    <br />
                                         CantTicket adultos:<asp:TextBox ID="TextBox4_2" runat="server" MaxLength="2"></asp:TextBox>

                                    <asp:Button ID="Button4" runat="server" Text="Comprar" OnClick="Button4_Click" />
                                </div>
                                <div class="wrapper p2 hr-border-1">
                                    <img src="images/Cartelera/peli5.PNG" alt="" class="img-indent">
                                    <dl class="extra-wrap def-list-1">
                                        <dt>
                                            <a href="#">LA NOVIA</a>
                                        </dt>
                                        <dd class="pad-left">La cinta, ambientada en la Rusia imperial, trata de la antigua tradición de fotografiar a los muertos y, más tenebroso aún, dibujarle ojos para que parezcan vivos en las fotografías. El punto clave es cuando un fotógrafo prepara el cuerpo de una novia difunta para su respectiva fotografía que desencadena ... 
                                        </dd>
                                        <dd class="pad-left">Título Original: Hebecta
                                        </dd>
                                        <dd class="pad-left">Duración:  01:33:00 hrs.
                                        </dd>
                                        <dd class="pad-left">País: Rusia
                                        </dd>
                                        <dd class="pad-left">Director:  Svyatoslav Podgayevskiy
                                        </dd>
                                    </dl>
                                        Seleccione Sede:<asp:DropDownList ID="DropDownList5" runat="server">
                                        <asp:ListItem Selected="True" Value="1"> Norte </asp:ListItem>
                                        <asp:ListItem Value="2"> Este </asp:ListItem>
                                        <asp:ListItem Value="4"> Sur </asp:ListItem>
                                    </asp:DropDownList>

                                         Seleccione funcion:<asp:DropDownList ID="DropDownList5_2" runat="server">
                                        <asp:ListItem Selected="true" Value="8:00 pm"> 8:00 pm </asp:ListItem>
                                        <asp:ListItem Value="9:00 pm"> 9:00 pm </asp:ListItem>
                                        <asp:ListItem Value="10:00 pm"> 10:00 pm </asp:ListItem>
                                    </asp:DropDownList>

                                         CantTicket niños:<asp:TextBox ID="TextBox5" runat="server" MaxLength="2"></asp:TextBox>
                                    <br />
                                         CantTicket adultos:<asp:TextBox ID="TextBox5_2" runat="server" MaxLength="2"></asp:TextBox>

                                    <asp:Button ID="Button5" runat="server" Text="Comprar" OnClick="Button5_Click" />
                                </div>
                                --%>           
                            
                            </article>
                            <article class="grid_7 suffix_1 omega">
                                <h2>Pasos a realizar:</h2>
                                <div class="wrapper hr-border-1">
                                    <span class="dropcap">01.
                                    </span>
                                    <div class="extra-wrap pad-top">
                                        <p class="p0">
                                            <strong class="str-1">SELECCIONA UNA DE LAS PELICULAS 
                                            </strong>
                                        </p>
                                        <p class="p2">
                                            
                                        </p>
                                    </div>
                                </div>
                                <div class="wrapper hr-border-1">
                                    <span class="dropcap">02.
                                    </span>
                                    <div class="extra-wrap pad-top">
                                        <p class="p0">
                                            <strong class="str-1">SELECCIONA LA SEDE Y HORA DE LA FUNCION
                                            </strong>
                                        </p>
                                        <p class="p2">
                                          
                                        </p>
                                    </div>
                                </div>
                                <div class="wrapper hr-border-1">
                                    <span class="dropcap">03.
                                    </span>
                                    <div class="extra-wrap pad-top">
                                        <p class="p0">
                                            <strong class="str-1">LUEGO DIGITA LA CANTIDAD DE ENTRADAS PARA NIÑOS O ADULTOS QUE COMPRARAS
                                            </strong>
                                        </p>
                                        <p class="p2">
                                            Las entradas para NIÑOS cuestan 8 soles c/u y la de los ADULTOS 10 c/u.
                                        </p>
                                    </div>
                                </div>
                        
                                     <div class="wrapper hr-border-1">
                                    <span class="dropcap">04.
                                    </span>
                                    <div class="extra-wrap pad-top">
                                        <p class="p0">
                                            <strong class="str-1">POR ULTIMO PRESIONA EL BOTON COMPRAR.
                                            </strong>
                                        </p>
                                        <p class="p2">
                                           Ya puedes revisar tu compra en tu historial
                                        </p>
                                    </div>
                                </div>

                            </article>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
