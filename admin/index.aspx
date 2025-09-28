<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Vendor Bids Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            /*margin: 0;*/
            /*padding: 20px;*/
            font-family: Arial, sans-serif;
            /*margin: 40px;*/
            background: #f9f9f9;
        }

        .row {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .card {
            color: white;
            padding: 30px;
            text-align: center;
            border-radius: 8px;
            margin: 10px;
            flex: 1 0 25%;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
        }

        .card h2 {
            font-size: 32px;
            margin: 0;
        }

        .card p {
            font-size: 18px;
            margin: 5px 0 0;
        }
        .stats-table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            background: #fff;
        }
        .stats-table th, .stats-table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        .stats-table th {
            background-color: #f5f5f5;
            font-weight: bold;
        }
        .up {
            color: green;
            font-weight: bold;
        }
        .down {
            color: red;
            font-weight: bold;
        }

        /* Colors */
        .approved-card { background-color: #28a745; } /* Green */
        .pending-card { background-color: #ffc107; color: black; }  /* Yellow */
        .rejected-card { background-color: #dc3545; } /* Red */
    </style>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <!--Main-->
            <main class="bg-white-300 flex-1 p-3 overflow-hidden">
                <div class="flex flex-col">
                    <!-- Stats Row Starts Here -->
                      <div>
        <div class="row">
    <!-- Approved Card -->
    <div class="col-md-4">
        <div class="card approved-card">
            <h2><asp:Label ID="lblApproved" runat="server" Text="0"></asp:Label></h2>
            <p>Approved Bids</p>
        </div>
    </div>

    <!-- Pending Card -->
    <div class="col-md-4">
        <div class="card pending-card">
            <h2><asp:Label ID="lblPending" runat="server" Text="0"></asp:Label></h2>
            <p>Pending Bids</p>
        </div>
    </div>

    <!-- Rejected Card -->
    <div class="col-md-4">
        <div class="card rejected-card">
            <h2><asp:Label ID="lblRejected" runat="server" Text="0"></asp:Label></h2>
            <p>Rejected Bids</p>
        </div>
    </div>
</div>
    </div>
                    <!-- /Stats Row Ends Here -->
                   <!-- Cards Section Ends Here -->
                     <asp:GridView ID="gvStats" runat="server" AutoGenerateColumns="False" CssClass="stats-table">
            <Columns>
                <asp:BoundField DataField="SrNo" HeaderText="#" />
                <asp:BoundField DataField="Item" HeaderText="Item" />
                <asp:BoundField DataField="Last" HeaderText="Last" />
                <asp:BoundField DataField="Current" HeaderText="Current" />
            </Columns>
        </asp:GridView>

                    <!-- /Cards Section Ends Here -->
                    <!-- Progress Bar -->
                    <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2 mt-2">
                        <div class="rounded overflow-hidden shadow bg-white mx-2 w-full pt-2">
                            <div class="px-6 py-2 border-b border-light-grey">
                                <div class="font-bold text-xl">Progress Among Projects</div>
                            </div>
                            <div class="">
                                <div class="w-full">
                                    <div class="shadow w-full bg-grey-light">
                                        <div class="bg-blue-500 text-xs leading-none py-1 text-center text-white"
                                             style="width: 45%">
                                            45%
                                        </div>
                                    </div>

                                    <div class="shadow w-full bg-grey-light mt-2">
                                        <div class="bg-teal-500 text-xs leading-none py-1 text-center text-white"
                                             style="width: 55%">
                                            55%
                                        </div>
                                    </div>

                                    <div class="shadow w-full bg-grey-light mt-2">
                                        <div class="bg-orange-500 text-xs leading-none py-1 text-center text-white"
                                             style="width: 65%">
                                            65%
                                        </div>
                                    </div>

                                    <div class="shadow w-full bg-grey-300 mt-2">
                                        <div class="bg-red-800 text-xs leading-none py-1 text-center text-white"
                                             style="width: 75%">
                                            75%
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Profile Tabs-->
                    <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2 p-1 mt-2 mx-auto lg:mx-2 md:mx-2 justify-between">
                        <!--Top user 1-->
                        <div class="rounded rounded-t-lg overflow-hidden shadow max-w-xs my-3">
                            <img src="https://i.imgur.com/w1Bdydo.jpg" alt="" class="w-full" />
                            <div class="flex justify-center -mt-8">
                                <img src="https://i.imgur.com/8Km9tLL.jpg" alt=""
                                     class="rounded-full border-solid border-white border-2 -mt-3">
                            </div>
                            <div class="text-center px-3 pb-6 pt-2">
                                <h3 class="text-black text-sm bold font-sans">Olivia Dunham</h3>
                                <p class="mt-2 font-sans font-light text-grey-700">
                                    Hello, i'm from another the other
                                    side!
                                </p>
                            </div>
                            <div class="flex justify-center pb-3 text-grey-dark">
                                <div class="text-center mr-3 border-r pr-3">
                                    <h2>34</h2>
                                    <span>Photos</span>
                                </div>
                                <div class="text-center">
                                    <h2>42</h2>
                                    <span>Friends</span>
                                </div>
                            </div>
                        </div>
                        <!--Top user 2-->
                        <div class="rounded rounded-t-lg overflow-hidden shadow max-w-xs my-3">
                            <img src="https://i.imgur.com/w1Bdydo.jpg" alt="" class="w-full" />
                            <div class="flex justify-center -mt-8">
                                <img src="https://i.imgur.com/8Km9tLL.jpg" alt=""
                                     class="rounded-full border-solid border-white border-2 -mt-3">
                            </div>
                            <div class="text-center px-3 pb-6 pt-2">
                                <h3 class="text-black text-sm bold font-sans">Olivia Dunham</h3>
                                <p class="mt-2 font-sans font-light text-grey-dark">
                                    Hello, i'm from another the other
                                    side!
                                </p>
                            </div>
                            <div class="flex justify-center pb-3 text-grey-dark">
                                <div class="text-center mr-3 border-r pr-3">
                                    <h2>34</h2>
                                    <span>Photos</span>
                                </div>
                                <div class="text-center">
                                    <h2>42</h2>
                                    <span>Friends</span>
                                </div>
                            </div>
                        </div>
                        <!--Top user 3-->
                        <div class="rounded rounded-t-lg overflow-hidden shadow max-w-xs my-3">
                            <img src="https://i.imgur.com/w1Bdydo.jpg" alt="" class="w-full" />
                            <div class="flex justify-center -mt-8">
                                <img src="https://i.imgur.com/8Km9tLL.jpg" alt=""
                                     class="rounded-full border-solid border-white border-2 -mt-3">
                            </div>
                            <div class="text-center px-3 pb-6 pt-2">
                                <h3 class="text-black text-sm bold font-sans">Olivia Dunham</h3>
                                <p class="mt-2 font-sans font-light text-grey-dark">
                                    Hello, i'm from another the other
                                    side!
                                </p>
                            </div>
                            <div class="flex justify-center pb-3 text-grey-dark">
                                <div class="text-center mr-3 border-r pr-3">
                                    <h2>34</h2>
                                    <span>Photos</span>
                                </div>
                                <div class="text-center">
                                    <h2>42</h2>
                                    <span>Friends</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/Profile Tabs-->
                </div>
            </main>
            <!--/Main-->
        </div>      
</asp:Content>


