<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html >
<html>
<head runat="server">
    <title>Ajax</title>
    <script src="js/jquery-3.1.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <br />
        </div>
        <div>
            <input id="btnClick" type="button" value="Test Ajax"/>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <span id="msg"></span>
        </div>
        <script type="text/javascript">
        $(document).ready(
        function() {

            $("#btnClick").bind("click", function() {
                $.ajax({
                    type: "post",
                    url: "AjaxTest.aspx/sayHi",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(data) {
                        $("#msg").css("color", "#0000FF").html(data.d);
                    },
                    error: function(err) {
                        $("#msg").css("color", "#FF0000").html("access faield:" + err);
                    }
                });
                return false;
            });

        });
    
</script>

    </form>
</body>
</html>
