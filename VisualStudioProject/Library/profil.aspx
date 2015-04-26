<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="Library.profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tableStandard">
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Nom" runat="server" Text="Nom : "></asp:Label><asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
                <td rowspan="4" style="text-align: right">
        <asp:Image ID="imgProfil" runat="server" BorderColor="Aqua" BorderStyle="Groove" BorderWidth="5px" Height="400px" Width="50%" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Prenom" runat="server" Text="Prenom : "></asp:Label><asp:Label ID="lblPrenom" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Statut : "></asp:Label>
                    <asp:Label ID="lblStatut" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="btnDeconnect" runat="server" OnClick="btnDeconnect_Click" Text="Deconnexion" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
