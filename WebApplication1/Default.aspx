<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 aria-setsize="13">Bună! Aici sunt salvate toate garanțiile tale!</h1>
        <h2 aria-setsize="13">Data de astăzi<asp:Calendar ID="Calendar1" runat="server" BackColor="#EEEEEE" BorderColor="#EEEEEE" BorderWidth="1px" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="270px" NextPrevFormat="FullMonth" ShowDayHeader="False" ShowNextPrevMonth="False" Width="345px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#EEEEEE" BorderColor="#EEEEEE" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="Black" />
            <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </h2>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Uploadează garanția!</h2>
            <p>
                Aici iți poti depune noua garanție</p>
            <div>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <div>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Upload!" />
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>
                </div>
&nbsp;<div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="319px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="692px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="File">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Date" />
                            <asp:BoundField HeaderText="Valabil?" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#E4E4E4" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
