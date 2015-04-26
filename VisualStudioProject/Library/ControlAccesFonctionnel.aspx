<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ControlAccesFonctionnel.aspx.cs" Inherits="Library.ControlAccesFonctionnel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tableStandard">
        <tr>
            <td class="auto-style1">
                <h2>Description :</h2>
                <p style="margin-left: 10px; width: 800px; margin-top: 10px; height: 100px;">
                    Pratiquement toutes les applications web vérifient les droits d'accès au niveau 
                   fonctionnel avant de rendre cette fonctionnalité visible dans l'interface utilisateur. 
                   Cependant, les applications doivent effectuer les mêmes vérifications de contrôle 
                   d'accès sur le serveur lors de l'accès à chaque fonction. 
                   Si les demandes ne sont pas vérifiées, les attaquants seront en mesure de forger 
                   des demandes afin d'accéder à une fonctionnalité non autorisée.
                </p>
            </td>
        </tr>
        <tr>
            <td>Login:
                <asp:TextBox ID="tbLogin" runat="server" OnTextChanged="Page_Load"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                Mot de passe:
                <asp:TextBox ID="tbMdop" runat="server" OnTextChanged="Page_Load" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;
                <asp:Button ID="btnConnect" runat="server" OnClick="btnConnect_Click" Text="Connexion" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="lblErreur" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
