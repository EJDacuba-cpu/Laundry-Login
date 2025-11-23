<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Laundry_Login.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="registration.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <asp:Label ID="message_text" runat="server" Text="Label"></asp:Label>
                    <div class="input-box">
           <asp:TextBox ID="student_id" placeholder="Student ID:" runat="server"></asp:TextBox>
        </div>
        <div class="input-box">
            <asp:TextBox ID="last_name" placeholder="lastName:" runat="server" ></asp:TextBox>
        </div>
        <div class="input-box">
            <asp:TextBox ID="age" runat="server" placeholder="Age:" ></asp:TextBox>
        </div>

        <div class="input-box">
            <asp:TextBox ID="first_name" runat="server" placeholder="FirstName:"></asp:TextBox>
        </div>

         
            <div class="buttons">
         <asp:Button ID="Register_btn" runat="server" CssClass="btn" Text="Register" BackColor="#3399FF" ForeColor="White" OnClick="Register_btn_Click" />
        <asp:Button ID="Update_btn" runat="server" CssClass="btn" Text="Update" BackColor="#3399FF" ForeColor="White" OnClick="Update_btn_Click" />
            </div>


        
        </div>


        <div class="list_members">
            <asp:Button ID="refresh_btn" runat="server" Text="Refresh" OnClick="refresh_btn_Click" />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="124px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="501px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="studentID" HeaderText="studentID" SortExpression="studentID" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </div>
       

    </form>
</body>
</html>

