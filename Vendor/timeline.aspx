<%@ Page Language="C#" AutoEventWireup="true" CodeFile="timeline.aspx.cs" Inherits="timeline" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Order Tracking Timeline</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .timeline {
            position: relative;
            margin: 20px 0;
            padding-left: 33px;
        }
        .timeline::before {
            content: '';
            position: absolute;
            top: 0;
            left: 15px;
            width: 2px;
            height: 100%;
            background: #28a745;
        }
        .timeline-item {
            position: relative;
            margin-bottom: 30px;
        }
        .timeline-item::before {
            content: '';
            position: absolute;
            left: -25px;
            top: 5px;
            width: 15px;
            height: 15px;
            border-radius: 50%;
            background: #28a745;
        }
        .timeline-content {
            background: #f8f9fa;
            padding: 10px 15px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,.1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="container mt-5">
            <h3 class="mb-4">Parcel Timeline</h3>
            <div class="timeline">
                <asp:Repeater ID="rptTimeline" runat="server">
                    <ItemTemplate>
                        <div class="timeline-item">
                            <div class="timeline-content">
                                <h5><%# Eval("Status") %></h5>
                                <p>
                                    <%# Eval("CountryName") %> → <%# Eval("StateName") %> → 
                                    <%# Eval("CityName") %> → <%# Eval("Pincode") %>
                                </p>
                                <small><%# Eval("UpdateTime","{0:dd-MMM-yyyy hh:mm tt}") %></small>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>
