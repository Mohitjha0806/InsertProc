<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>InsertProc</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div class="container-fluid bg-success-subtle">
            <div class="container bg-light-subtle py-5">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <asp:Image Style="width: 8vw; height: auto;" ImageUrl="png.png" CssClass="img-fluid" runat="server" />
                    </div>
                </div>
                <h1 class="fs-4 fw-semibold text-start">Students Details</h1>
                <div class="row mt-4">
                    <div class="col-md-6">
                        <asp:Label Text="First Name" CssClass="form-label fw-semibold" ID="lbl_FirstName" runat="server" />
                        <asp:TextBox runat="server" CssClass="form-control  border-3 fw-semibold bg-info-subtle border-dark-subtle" ID="txt_FirstName" Placeholder="Enter First Name" />
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="txt_FirstName" runat="server" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ErrorMessage="Enter Valid Name" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$" ControlToValidate="txt_FirstName" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                    <div class="col-md-6">
                        <asp:Label Text="Last Name" CssClass="form-label fw-semibold" ID="lbl_LastName" runat="server" />
                        <asp:TextBox runat="server" CssClass="form-control border-3 fw-semibold border-dark-subtle bg-info-subtle" ID="txt_LastName" Placeholder="Enter Last Name" />
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="txt_LastName" runat="server" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ErrorMessage="Enter Valid Name" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$" ControlToValidate="txt_LastName" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label Text="Email" CssClass="form-label fw-semibold" ID="lbl_Email" runat="server" />
                        <asp:TextBox runat="server" CssClass="form-control border-3 fw-semibold border-dark-subtle bg-info-subtle"
                            ID="txt_Email" Placeholder="example@gmail.com" MaxLength="24" />
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="txt_Email" runat="server" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
                            ControlToValidate="txt_Email" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                    <div class="col-md-6">
                        <asp:Label Text="Mobile Number" CssClass="form-label fw-semibold" ID="lbl_Mobile" runat="server" />
                        <asp:TextBox runat="server" CssClass="form-control border-3 fw-semibold border-dark-subtle bg-info-subtle"
                            ID="txt_Mobile" MaxLength="10" Placeholder="Enter 10 Degit" />
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="txt_Mobile" runat="server" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ErrorMessage="Please enter correct mobile number starting with 6, 7, 8, 9 respectively"
                            ValidationExpression="^[6-9]{1}[0-9]{9}$" ControlToValidate="txt_Mobile" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label Text="User Name" CssClass="form-label fw-semibold" ID="lbl_UserNmae" runat="server" />
                        <asp:TextBox runat="server" CssClass="form-control border-3 fw-semibold border-dark-subtle bg-info-subtle"
                            ID="txt_UserNmae" Placeholder="Enter User Name" MaxLength="16" />
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="txt_UserNmae" runat="server" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ErrorMessage="Please enter Valid User Name start with (A-Z, a-z, 0-9, _ )."
                            ValidationExpression="^[A-Za-z][A-Za-z0-9_]{7,29}$" ControlToValidate="txt_UserNmae" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                    <div class="col-md-6">
                        <asp:Label Text="Password" CssClass="form-label fw-semibold" ID="lbl_Pass" runat="server" />
                        <asp:TextBox runat="server" CssClass="form-control border-3 fw-semibold border-dark-subtle bg-info-subtle"
                            ID="txt_Pass" MaxLength="10" TextMode="Password" Placeholder="************" />
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="txt_Pass" runat="server" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ErrorMessage="Please enter Valid Password  Minimum eight characters, at least one letter, one number and one special character"
                            ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" ControlToValidate="txt_Pass" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label Text="Date of Birth" CssClass="form-label fw-semibold" ID="lbl_DOB" runat="server" />
                        <asp:TextBox runat="server" TextMode="Date" CssClass="form-control fw-semibold border-3 bg-info-subtle border-dark-subtle"
                            ID="txt_DOB" Placeholder="Date of Bith" MaxLength="16" />
                    </div>
                    <div class="col-md-4">
                        <asp:Label Text="Time" CssClass="form-label fw-semibold" ID="lbl_Time" runat="server" />
                        <asp:TextBox runat="server" TextMode="Time" CssClass="form-control fw-semibold border-3 bg-info-subtle border-dark-subtle"
                            ID="txt_Time" Placeholder="Birth Time" MaxLength="16" />
                    </div>
                    <div class="col-md-4">
                        <asp:Label Text="Age" CssClass="form-label fw-semibold" ID="lbl_Age" runat="server" />
                        <asp:TextBox runat="server" TextMode="SingleLine" CssClass="form-control fw-semibold border-3 bg-info-subtle border-dark-subtle"
                            ID="txt_Age" Placeholder="Age" MaxLength="10" />
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="txt_Age" runat="server" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ErrorMessage="Please enter Valid Age."
                            ValidationExpression="^(1[89]|[2-5][0-9]|60)$" ControlToValidate="txt_Age" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label Text="Gender" CssClass="form-label fw-semibold" ID="lbl_Gender" runat="server" />
                        <asp:RadioButtonList ID="rbl_Gender" CssClass="form-control border-3 fw-semibold border-dark-subtle bg-info-subtle" runat="server">
                            <asp:ListItem CssClass="form-control" Text="&nbspMale" />
                            <asp:ListItem CssClass="form-control" Text="&nbspFemale" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="rbl_Gender" runat="server" Display="Dynamic" ForeColor="Red" />

                    </div>
                    <div class="col-md-6">
                        <asp:Label Text="Education Status" CssClass="form-label fw-semibold" ID="lbl_Education" runat="server" />
                        <asp:CheckBoxList ID="cbl_Education" CssClass="form-control border-3 border-dark-subtle fw-semibold bg-info-subtle" runat="server">
                            <asp:ListItem CssClass="form-control" Text="&nbspUnder Graduate" />
                            <asp:ListItem CssClass="form-control" Text="&nbspPost Graduate" />
                            <asp:ListItem CssClass="form-control" Text="&nbspP.HD" />
                        </asp:CheckBoxList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label Text="Address" CssClass="form-label fw-semibold" ID="lbl_address" runat="server" />
                        <asp:TextBox runat="server" ID="txt_Address" TextMode="Multiline" form="Feedback_Form" lines="10" cols="10" Wrap="true"
                            MaxLength="1200" class="form-control fw-semibold bg-info-subtle border-3 border-dark-subtle" />
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="txt_Address" runat="server" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ErrorMessage="Please enter valid address."
                            ValidationExpression="^[#.0-9a-zA-Z\s,-]+$" ControlToValidate="txt_Address" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                    <div class="col-md-6">
                        <asp:Label Text="Chose File" CssClass="form-label fw-semibold" ID="lbl_ChoseFile" runat="server" />
                        <asp:FileUpload runat="server" AllowMultiple="true" ID="txt_ChoseFile" CssClass="form-control border-3 fw-semibold border-dark-subtle bg-info-subtle" />
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="txt_ChoseFile" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                </div>
                <div class="row mt-2 ">
                    <div class="col-md-4">
                        <asp:Label Text="Country" CssClass="form-label fw-semibold" runat="server" />
                        <asp:DropDownList ID="ddl_Country" CssClass="form-control bg-info-subtle fw-semibold border-3 border-dark-subtle" runat="server">
                            <asp:ListItem Text="Select" />
                            <asp:ListItem Text="India" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="ddl_Country" runat="server" Display="Dynamic" ForeColor="Red" />
                    </div>
                    <div class="col-md-4">
                        <asp:Label Text="State" CssClass="form-label fw-semibold" runat="server" />
                        <asp:DropDownList CssClass="form-control bg-info-subtle fw-semibold border-3 border-dark-subtle" runat="server">
                            <asp:ListItem Text="Select" />
                            <asp:ListItem Text="Madhya Pradesh" />
                            <asp:ListItem Text="Utter Pradesh" />
                            <asp:ListItem Text="Andra Pradesh" />
                            <asp:ListItem Text="Himachal Pradesh" />
                            <asp:ListItem Text="Rajsthan" />
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <asp:Label Text="City" CssClass="form-label fw-semibold" runat="server" />
                        <asp:DropDownList CssClass="form-control bg-info-subtle fw-semibold border-3 border-dark-subtle" runat="server">
                            <asp:ListItem Text="Select" />
                            <asp:ListItem Text="Bhopal" />
                            <asp:ListItem Text="Lakhnow" />
                            <asp:ListItem Text="Hydrabad" />
                            <asp:ListItem Text="Shimla" />
                            <asp:ListItem Text="Jaipur" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row mt-3 py-4">
                    <div class="col-md-3">
                        <asp:Button Text="Submit" ID="btn_Submit" CssClass="btn btn-primary fw-semibold" runat="server" />
                        <asp:Button Text="Reset" ID="Btn_Reset" CssClass="btn btn-danger fw-semibold fw-semibold" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
