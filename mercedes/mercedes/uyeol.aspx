<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="uyeol.aspx.cs" Inherits="mercedes.uyeol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="uyeOl">
        <div class="baslik">üye kayıt ekranı</div>
        <div class="satir">
            <asp:Label ID="lblAdSoyad" runat="server" Text="Ad Soyad :" CssClass="lbl" Width="150px"></asp:Label>
            <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAdSoyad" runat="server" ControlToValidate="txtAdSoyad" Display="Dynamic" ErrorMessage="Boş Geçilmez."></asp:RequiredFieldValidator>
        </div>
        <div class="satir">
            <asp:Label ID="lblKullanici" runat="server" Text="Kullanıcı Adı(eposta) :" CssClass="lbl" Width="150px"></asp:Label>
            <asp:TextBox ID="txtKullanici" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvKullanici" runat="server" ControlToValidate="txtKullanici" Display="Dynamic" ErrorMessage="Boş Geçilmez."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revKullanici" runat="server" ControlToValidate="txtKullanici" Display="Dynamic" ErrorMessage="Geçerli eposta giriniz." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="satir">
            <asp:Label ID="lblParola" runat="server" Text="Parola :" CssClass="lbl" Width="150px"></asp:Label>
            <asp:TextBox ID="txtParola" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvParola" runat="server" ControlToValidate="txtParola" Display="Dynamic" ErrorMessage="Boş Geçilmez."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revParola" runat="server" ControlToValidate="txtParola" Display="Dynamic" ErrorMessage="en az 1 büyük,küçük,sayı ve özel karakter" ValidationExpression="^(?=.{8,12}$)(?=.*[A-Z])(?=.*[a-z])(?=.*[@#$%*?^:;+-._,])(?=.*[0-9]).*"></asp:RegularExpressionValidator>
        </div>
        <div class="satir">
            <asp:Label ID="lblParolaDogrula" runat="server" Text="Parola Doğrula :" CssClass="lbl" Width="150px"></asp:Label>
            <asp:TextBox ID="txtParolaDogrula" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvParolaDogrula" runat="server" ControlToValidate="txtParolaDogrula" Display="Dynamic" ErrorMessage="Boş Geçilmez."></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvParola" runat="server" ControlToCompare="txtParola" ControlToValidate="txtParolaDogrula" ErrorMessage="Parolalar aynı olmalı."></asp:CompareValidator>
        </div>
        <div class="satir">
            <asp:Label ID="lblDogumYili" runat="server" Text="Doğum Yılı :" CssClass="lbl" Width="150px"></asp:Label>
            <asp:TextBox ID="txtDogumYili" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDogumYili" runat="server" ControlToValidate="txtDogumYili" Display="Dynamic" ErrorMessage="Boş Geçilmez."></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvDogumYili" runat="server" ControlToValidate="txtDogumYili" Display="Dynamic" ErrorMessage="1900-2004 aralığında değer giriniz." MaximumValue="2004" MinimumValue="1900"></asp:RangeValidator>
        </div>
        <div class="satir">
            <asp:Label ID="lblTelefon" runat="server" Text="Telefon No :" CssClass="lbl" Width="150px"></asp:Label>
            <asp:TextBox ID="txtTelefon" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revTelefon" runat="server" ControlToValidate="txtTelefon" Display="Dynamic" ErrorMessage="10 haneli giriniz." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
        </div>
        <div class="satirCins">
            <asp:Label ID="lblCinsiyet" runat="server" Text="Cinsiyet :" CssClass="lbl" Width="150px"></asp:Label>
            <asp:RadioButtonList ID="rblCinsiyet" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">Kadın</asp:ListItem>
                <asp:ListItem>Erkek</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="satir">
            <asp:Label ID="lblYasadigiIl" runat="server" Text="Yaşadığı İl :" CssClass="lbl" Width="150px"></asp:Label>
            <asp:DropDownList ID="ddlYasadigiIL" runat="server">
                <asp:ListItem Selected="True">İstanbul</asp:ListItem>
                <asp:ListItem>Ankara</asp:ListItem>
                <asp:ListItem>İzmir</asp:ListItem>
                <asp:ListItem>Bursa</asp:ListItem>
                <asp:ListItem>Kocaeli</asp:ListItem>
                <asp:ListItem>Edirne</asp:ListItem>
                <asp:ListItem>Sivas</asp:ListItem>
                <asp:ListItem Value="Konya"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="satir">
            <asp:Button ID="btnTemizle" runat="server" Text="Temizle" CssClass="btn" />
            <asp:Button ID="btnKayit" runat="server" Text="Kaydet" CssClass="btn" OnClick="btnKayit_Click" />
            <a href="index.aspx">üye giriş</a>
            <a href="parolahatirlat.aspx">parola hatırlat</a>
        </div>
    </div>
    <div id="hataMesajOzet">
        <asp:ValidationSummary ID="vsUyeOl" runat="server" />
    </div>
</asp:Content>
