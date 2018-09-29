<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QualityNewInput.aspx.cs" Inherits="FirstWeb_QMCS.QualityNewInput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script runat="server" >
     void Selection_Change(Object sender, EventArgs e)
        {
            ListBox_Cause_classification.Text= ListBox_Cause_classification.SelectedItem.Value;
        }

      </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="整改单编号: "></asp:Label>
        <asp:TextBox ID="Text_RepairNum" runat="server"></asp:TextBox> &nbsp&nbsp&nbsp
       <asp:Label ID="Label2" runat="server" Text="主题: "></asp:Label>
        <asp:TextBox ID="Text_Subject" runat="server"></asp:TextBox> &nbsp&nbsp&nbsp
        <asp:Label ID="Label3" runat="server" Text="发起人: "></asp:Label> 
        <asp:TextBox ID="Text_UserName" runat="server"></asp:TextBox><br/><br/>
        <asp:Label ID="Label4" runat="server" Text="发起单位: "></asp:Label>&nbsp
        <asp:TextBox ID="Text_Sponsored_unit" runat="server"></asp:TextBox>&nbsp&nbsp
        <asp:Label ID="Label5" runat="server" Text="产品系列: "></asp:Label>
        <asp:TextBox ID="Text_Product_line" runat="server"></asp:TextBox>&nbsp&nbsp&nbsp
        <asp:Label ID="Label6" runat="server" Text="原因分类: "></asp:Label>
        <asp:DropDownList ID="ListBox_Cause_classification"  runat="server"></asp:DropDownList>&nbsp&nbsp&nbsp <br/><br/>
        <asp:Label ID="Label7" runat="server" Text="发起时间"></asp:Label>
        <asp:TextBox ID="Text_Starting_time" runat="server"></asp:TextBox>  &nbsp
        <asp:Label ID="Label8" runat="server" Text="生产班组"></asp:Label>&nbsp
        <asp:TextBox ID="TextBox_Production_team" runat="server"></asp:TextBox>&nbsp
        <asp:Label ID="Label9" runat="server" Text="问题点区域: "></asp:Label>&nbsp
        <asp:TextBox ID="Text_Problem_area" runat="server"></asp:TextBox> <br/><br/>
        <asp:Label ID="Label10" runat="server" Text="项目来源"></asp:Label>&nbsp
        <asp:TextBox ID="Text_Project_source" runat="server"></asp:TextBox>&nbsp
        <asp:Label ID="Label11" runat="server" Text="产品型号"></asp:Label>&nbsp
        <asp:TextBox ID="Text_Product_model" runat="server"></asp:TextBox><br/><br/>
      </div>
      <div>
        <asp:Label ID="Label12" runat="server" Text="附件"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="Text_Enclosure" runat="server" Height="36px" Width="752px"></asp:TextBox><br/><br/>
        <asp:Label ID="Label13" runat="server" Text="问题描述"></asp:Label>&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="Text_Problem_description" runat="server" Height="36px" Width="752px"></asp:TextBox>&nbsp<br/><br/>
        <asp:Label ID="Label14" runat="server" Text="整改要求及目标"></asp:Label>&nbsp
        <asp:TextBox ID="Text_Rectification_requirements_and_obje" runat="server" Height="36px" Width="752px"></asp:TextBox>&nbsp<br/><br/> 

      </div>
      <div>
        <asp:Label ID="Label15" runat="server" Text="主导单位"></asp:Label>
        <asp:TextBox ID="Text_Dominant_unit_1" runat="server"></asp:TextBox><br/><br/>
        <asp:Label ID="Label16" runat="server" Text="主导人"></asp:Label>&nbsp
        <asp:TextBox ID="Text_Leader_1" runat="server"></asp:TextBox>&nbsp
        <asp:Label ID="Label17" runat="server" Text="截止时间"></asp:Label>&nbsp
        <asp:TextBox ID="Text_Expiration_date_1" runat="server"></asp:TextBox>&nbsp
        <asp:Label ID="Label18" runat="server" Text="整改目标及要求"></asp:Label>&nbsp
        <asp:TextBox ID="TextBox17" runat="server" Height="20px" Width="80px"></asp:TextBox><br/><br/>
        <br />
     </div>
        <%--<div style="text-align:center; margin:20px 0px 50px 50px;">--%>
        <%--<asp:Button ID="Button1" runat="server" Text="提交"   style="text-align:right" OnClick="Button1_Click" />--%>
            <%--</div>--%>

    </form>
</body>
</html>
