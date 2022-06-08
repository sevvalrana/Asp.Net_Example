<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="urundetay.aspx.cs" Inherits="mercedes.urundetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="urundetay">
        <div class="baslik">
            <asp:Label ID="lblBaslik" runat="server"></asp:Label>
        </div>
        <div id="leftSide">
            <div id="foto"><img id="urunDetayFoto" runat="server"/></div>
        </div>
        <div id="rightSide">
            <div class="satir">
                <asp:Label ID="lblKimlikNo" runat="server" Text="Kimlik No :"></asp:Label>
                <asp:Label ID="lblKimlikNoDeger" runat="server"></asp:Label>
            </div> 
             <div class="satir">
                <asp:Label ID="lblModel" runat="server" Text="Model :"></asp:Label>
                <asp:Label ID="lblModelDeger" runat="server"></asp:Label>
            </div> 
            <div class="satir">
                <asp:Label ID="lblEskiFiyat" runat="server" Text="Eski Fiyat :"></asp:Label>
                <asp:Label ID="lblEskiFiyatDeger" runat="server"></asp:Label>
            </div> 
            <div class="satir">
                <asp:Label ID="lblYeniFiyat" runat="server" Text="Yeni Fiyat :"></asp:Label>
                <asp:Label ID="lblYeniFiyatDeger" runat="server"></asp:Label>
            </div>  
            <div class="satir">
                <asp:Label ID="lblVites" runat="server" Text="Vites :"></asp:Label>
                <asp:Label ID="lblVitesDeger" runat="server"></asp:Label>
            </div>  
            <div class="satir">
                <asp:Label ID="lblYakit" runat="server" Text="Yakit :"></asp:Label>
                <asp:Label ID="lblYakitDeger" runat="server"></asp:Label>
            </div> 
            <div class="satir">
                <asp:Label ID="lblMotorGucu" runat="server" Text="Motor Gücü :"></asp:Label>
                <asp:Label ID="lblMotorGucuDeger" runat="server"></asp:Label>
            </div>  
            <div class="satir">
                <asp:Label ID="lblRenk" runat="server" Text="Renk :"></asp:Label>
                <asp:Label ID="lblRenkDeger" runat="server"></asp:Label>
            </div>
            <div class="satir">
                <asp:Label ID="lblKm" runat="server" Text="Kilometre :"></asp:Label>
                <asp:Label ID="lblKmDeger" runat="server"></asp:Label>
            </div> 
            <div class="satir">
                <asp:Label ID="lblKasa" runat="server" Text="Kasa :"></asp:Label>
                <asp:Label ID="lblKasaDeger" runat="server"></asp:Label>
            </div>
            <div class="satir">
                <asp:Label ID="lblHasar" runat="server" Text="Hasar Kayıt :"></asp:Label>
                <asp:Label ID="lblHasarDeger" runat="server"></asp:Label>
            </div> 
            <div class="satir">
                <asp:Label ID="lblDurum" runat="server" Text="Durum :"></asp:Label>
                <asp:Label ID="lblDurumDeger" runat="server"></asp:Label>
            </div>
            <div class="satir">
                <asp:Label ID="lblModelYili" runat="server" Text="Model Yılı :"></asp:Label>
                <asp:Label ID="lblModelYilideger" runat="server"></asp:Label>
            </div>  
            <div class="satir">
                <asp:Button ID="btnFavoriEkle" runat="server" Text="Favoriye Ekle" CssClass="btn" OnClick="btnFavoriEkle_Click"  />
                <asp:Button ID="btnSepetEkle" runat="server" Text="Sepete Ekle" CssClass="btn" OnClick="btnSepetEkle_Click" />
                <a href="default.aspx">alışverişe devam</a>
            </div>  
        </div>
    </div>
</asp:Content>
