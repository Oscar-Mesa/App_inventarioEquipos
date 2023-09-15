<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_registro.aspx.cs" Inherits="App_inventarioEquipos.frm_registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Formulario de registro</h1>
                <hr />
                <hr />
                <asp:TextBox ID="txt_codigo" runat="server" placeholder="Código"/> 
                <br />
                <asp:TextBox ID="txt_nombre" runat="server" placeholder="Nombre"/> 
                <br />
                <asp:TextBox ID="txt_caracteristicas" runat="server" placeholder="Caracteristicas" TextMode="MultiLine" /> 
                <br />
                <asp:TextBox ID="txt_marca" runat="server" placeholder="Marca"/> 
                <br />
                <asp:TextBox ID="txt_modelo" runat="server" placeholder="Modelo"/> 
                <br />
                <asp:TextBox ID="txt_precio" runat="server" placeholder="Precio"/> 
                <br />
                <asp:TextBox ID="txt_aplicaciones" runat="server" placeholder="Aplicaciones instaladas" TextMode="MultiLine" /> 
                <br />
                <asp:TextBox ID="txt_red" runat="server" placeholder="Configuración de red" TextMode="MultiLine" /> 
                <br />
                <asp:Button ID="btn_registrar" runat="server" Text="Registrar" />
            </center>
        </div>
    </form>
</body>
</html>
