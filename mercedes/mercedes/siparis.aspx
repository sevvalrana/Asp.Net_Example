<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="siparis.aspx.cs" Inherits="mercedes.siparis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="satilikUrunler">   
        <div class="baslik">
            <asp:Label ID="lblBaslik" runat="server"></asp:Label>
        </div> 
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/db.accdb" ></asp:AccessDataSource>  
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ads">
            <ItemTemplate>
                <div class="satilikUrun">
                    <div class="foto"><img src="<%# Eval("resimyolu") %>" /></div>
                    <div class="modelAdi"><%# Eval("markamodel") %></div>
                    <div class="eskiFiyat"><%# Eval("eskifiyat") %> TL</div>
                    <div class="yeniFiyat"><%# Eval("yenifiyat") %> TL</div>
                    <div class="detay">
                        <a href="urundetay.aspx?kimlikno=<%# Eval("urunKimlik")%>">Ürünü İncele</a>
                        <a href="urunsil.aspx?kimlikno=<%# Eval("urunKimlik")%>&durum=<%#Request.QueryString["durum"] %>">Ürünü Sil</a>
                    </div>
                   
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="clear"></div>
    </div>
</asp:Content>
