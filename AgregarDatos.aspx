<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AgregarDatos.aspx.cs" Inherits="AgregarDatos" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 
    <table style="width:100%;">
     <link href="/Styles/AgregarDatos.css" rel="stylesheet" type="text/css" />
        <tr>
            <td class="tituloPrincipal">
                <strong><span>Evaluación</span></strong>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlSeleccion" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlSeleccion_SelectedIndexChanged" Cssclass="opciones" >
                    <asp:ListItem>Agregar Evaluación</asp:ListItem>
                    <asp:ListItem>Modificar Evaluación</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Rut:
            </td>
            <td>
                <asp:TextBox ID="txtRut" runat="server" AutoPostBack="True" CssClass="textbox2" 
                    ontextchanged="txtRut_TextChanged" class="textbox2"></asp:TextBox>

               
            </td>
            <td>
                <asp:Label CssClass="alertmessage" ID="lblErrorRut" runat="server" style="color: #FF0000"
                Text="No existe un cliente con este rut" Visible="False"></asp:Label>

                <asp:Label  CssClass="alertmessage" ID="lblSinReg" runat="server" style=" color: #FF0000"
                    Text="Rut sin registros!" Visible="False"></asp:Label>

                <asp:Label  CssClass="alertmessage2" ID="lblCompletos" runat="server" style="color: #009900" 
                    Visible="False">Registros ya evaluados</asp:Label>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblId" runat="server" Text="Id:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtId" runat="server" Enabled="False" ReadOnly="True" CssClass="textbox2"></asp:TextBox>
            </td>
            <td>
               <asp:ImageButton ID="imgId" runat="server" Enabled="False" CssClass="images"
                    ImageUrl="~/Imagenes/Imagen2.jpg" onclick="imgId_Click"  />
            </td>
        </tr>
        <tr>
            <td class="titulo">
                Nombre:</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" ReadOnly="True" CssClass="textbox2"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="titulo">
                Fecha:
            </td>
            <td>
                <asp:TextBox ID="txtFecha" runat="server" ReadOnly="True" CssClass="textbox2"></asp:TextBox>
                <asp:Calendar 
                ID="Calendar1"
                runat="server" 
                onselectionchanged="Calendar1_SelectionChanged" 
                Visible="False"
                CssClass="calendario">
                </asp:Calendar>
            </td>
            <td>
                <asp:ImageButton 
                    CssClass="images"
                    ID="imgFecha"
                    runat="server"  
                    ImageUrl="~/Imagenes/calendario.jpg" 
                    onclick="imgFecha_Click"  
                    Enabled="False"/>
            </td>
        </tr>
        <tr>
            <td class="titulo">
                Nota:</td>
            <td>
                <asp:TextBox ID="txtNota" runat="server" ReadOnly="True" CssClass="textbox2"></asp:TextBox>
                </td>
            <td class="porcentaje">
              % (Ej: 1-100)
            </td>
        </tr>
        <tr>
            <td class="titulo">
                Id Registro:
            </td>
            <td>
                <asp:TextBox ID="txtIdReg" runat="server" ontextchanged="txtIdReg_TextChanged" 
                    ReadOnly="True" CssClass="textbox2"></asp:TextBox>
                             
                <asp:GridView ID="gvIdRegistro" runat="server" Width="16px" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                onrowcommand="gvIdRegistro_RowCommand" 
                onselectedindexchanged="gvIdRegistro_SelectedIndexChanged" 
                    Height="59px" Visible="False">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
            <td>
                <asp:ImageButton 
                ID="imgReg" 
                runat="server" 
                ImageUrl="~/Imagenes/Imagen2.jpg" 
                onclick="imgReg_Click" 
                Enabled="False" 
                CssClass="images"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="marco">
                <asp:Button ID="btnAgregar" runat="server" onclick="Button1_Click" 
                    Text="Agregar" />
                <asp:Button ID="btnModificar" runat="server" onclick="btnModificar_Click" 
                    Text="Modificar" Visible="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
     <asp:GridView ID="gvId" runat="server" 
                onrowcommand="gvId_RowCommand" CssClass="listarCursos" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
</asp:Content>
 


