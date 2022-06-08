<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="parolahatirlat.aspx.cs" Inherits="mercedes.parolahatirlat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="uyeGirisi">
        <div class="baslik">parola hatırlatma ekranı</div>
        <div class="satir">
            <asp:Label ID="lblKullanici" runat="server" Text="Kullanıcı Adı :" CssClass="lbl" Width="120px"></asp:Label>
            <asp:TextBox ID="txtKullanici" runat="server" CssClass="txt"></asp:TextBox>
        </div>
        <div class="satir">
            <asp:Label ID="lblParola" runat="server" Text="Parola :" CssClass="lbl" Width="120px"></asp:Label>
            <asp:TextBox ID="txtParola" runat="server" CssClass="txt" Enabled="False"></asp:TextBox>
        </div>
        <div class="satir">
            <asp:Button ID="btnTemizle" runat="server" Text="Temizle" CssClass="btn" OnClick="btnTemizle_Click" />
            <asp:Button ID="btnGiris" runat="server" Text="Parolayı Yaz" CssClass="btn" OnClick="btnGiris_Click" />
            <a href="uyeol.aspx">Üye Ol</a>
            <a href="parolahatirlat.aspx">parola hatırlat</a>
        </div>
        <div class="satir">
            <asp:Label ID="lblHataMesaj" runat="server" CssClass="lblHata"></asp:Label>
        </div>
    </div>
</asp:Content>
