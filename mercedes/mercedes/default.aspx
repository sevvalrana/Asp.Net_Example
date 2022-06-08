<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="mercedes._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="satilikUrunler">    
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/db.accdb" SelectCommand="select * from urunler"></asp:AccessDataSource>  
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ads">
            <ItemTemplate>
                <div class="satilikUrun">
                    <div class="foto"><img src="<%# Eval("resimyolu") %>" /></div>
                    <div class="modelAdi"><%# Eval("markamodel") %></div>
                    <div class="eskiFiyat"><%# Eval("eskifiyat") %> TL</div>
                    <div class="yeniFiyat"><%# Eval("yenifiyat") %> TL</div>
                    <div class="detay"><a href="urundetay.aspx?kimlikno=<%# Eval("kimlik")%>">Ürünü İncele</a></div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="clear"></div>
    </div>
</asp:Content>
