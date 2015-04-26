<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="XSS_Stored.aspx.cs" Inherits="Library.XSS_Stored" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tableStandard">
        <tr>
            <td class="auto-style1">

                <h2>Description :</h2>
                <p  style="margin-left: 10px; width: 800px; margin-top: 10px; height: 100px;">
                    Cette attaque va se faire en deux étapes, la première étant d’injecter dans la base de données 
                du code JavaScript dans le champ message de la table Users, 
                et dans un second temps voir si quand le client le récupère ce code s’exécute sur son navigateur.
                </p>

                <h2>1) Première étape: injecter le code: </h2>
                login:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                message à sauvegarder :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Envoyer" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>

                <br />
                <br />
                <h2>2) Deuxième étape: </h2>
                Login:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Get Message" OnClick="Button2_Click" />
                <br />
                Le message recupéré:&nbsp;  <%=recpmsg %>
                   
            </td>
        </tr>
    </table>

</asp:Content>
