<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RDNSO.aspx.cs" Inherits="Library.RDNSO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tableStandard">
        <tr>
            <td class="auto-style1">

                <h2 style="text-align: left">Description :</h2>
                <p style="margin-left: 10px; width: 800px; margin-top: 10px; height: 100px; text-align: left;">
                    Une référence directe à un objet se produit quand un développeur expose une référence à un objet d'exécution interne, tel un fichier, un dossier, un enregistrement de base de données ou une clé de base de données. Sans un contrôle d'accès ou autre protection, les attaquants peuvent manipuler ces références pour accéder à des données non autorisées.
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">

                <asp:Label ID="Label1" runat="server" Text="Login : "></asp:Label>
                <asp:TextBox ID="TBlogin" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label>
                <asp:TextBox ID="TBpassword" TextMode="password" runat="server"></asp:TextBox>
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Connexion" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
