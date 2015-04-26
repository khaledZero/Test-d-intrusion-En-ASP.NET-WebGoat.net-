<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SqlInjectionCorrected.aspx.cs" Inherits="Library.SqlInjectionCorrected" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tableStandard">
        <tr>
            <td class="auto-style1">

                <h2>Version corrigée de l'attaque "injection SQL" :</h2>
                <p  style="margin-left: 10px; width: 800px; margin-top: 10px; height: 100px;">
                    Essayez d'attaquer si vous voulez perdre votre temps!! :) 
                </p>

                <asp:Label ID="Label1" runat="server" Text="Login: "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="connecte" OnClick="Button1_Click" />
                <br />
                <br />
                <pre>
                    <asp:Label ID="MSG_result" runat="server" Text=""></asp:Label>
                </pre>              

            </td>
        </tr>
    </table>
</asp:Content>
