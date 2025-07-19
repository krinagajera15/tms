<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="table.aspx.cs" Inherits="admin_table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!--Main-->
            <main class="bg-white-500 flex-1 p-3 overflow-hidden">

                <div class="flex flex-col">
                    <!-- Card Sextion Starts Here -->
                    <div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
                        <!--Horizontal form-->
                        <div class="mb-2 border-solid border-grey-light rounded border shadow-sm w-full md:w-1/2 lg:w-1/2">
                            <div class="bg-gray-300 px-2 py-3 border-solid border-gray-400 border-b">
                                Bordered Table
                            </div>
                            <div class="p-3">
                                <table class="table-fixed">
                                    <thead>
                                      <tr>
                                        <th class="border w-1/2 px-4 py-2">Title</th>
                                        <th class="border w-1/4 px-4 py-2">Author</th>
                                        <th class="border w-1/4 px-4 py-2">Views</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td class="border px-4 py-2">Intro to CSS</td>
                                        <td class="border px-4 py-2">Adam</td>
                                        <td class="border px-4 py-2">858</td>
                                      </tr>
                                      <tr class="bg-gray-100">
                                        <td class="border px-4 py-2">A Long and Winding Tour of the History of UI Frameworks and Tools and the Impact on Design</td>
                                        <td class="border px-4 py-2">Adam</td>
                                        <td class="border px-4 py-2">112</td>
                                      </tr>
                                      <tr>
                                        <td class="border px-4 py-2">Into to JavaScript</td>
                                        <td class="border px-4 py-2">Chris</td>
                                        <td class="border px-4 py-2">1,280</td>
                                      </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!--/Horizontal form-->

                        <!--Underline form-->
                        <div class="mb-2 md:mx-2 lg:mx-2 border-solid border-gray-200 rounded border shadow-sm w-full md:w-1/2 lg:w-1/2">
                            <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">
                                Colored Table
                            </div>
                            <div class="p-3">
                                <table class="table-fixed">
                                    <thead>
                                      <tr>
                                        <th class="border-b bg-black text-white w-1/2 px-4 py-2">Title</th>
                                        <th class="border-b bg-black text-white w-1/4 px-4 py-2">Author</th>
                                        <th class="border-b bg-black text-white w-1/4 px-4 py-2">Views</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td class="border-b bg-blue-400 text-white px-4 py-2">Intro to CSS</td>
                                        <td class="border-b bg-blue-400 text-white px-4 py-2">Adam</td>
                                        <td class="border-b bg-blue-400 text-white px-4 py-2">858</td>
                                      </tr>
                                      <tr class="bg-gray-100">
                                        <td class="border-b bg-green-400 text-white px-4 py-2">A Long and Winding Tour of the History of UI Frameworks and Tools and the Impact on Design</td>
                                        <td class="border-b bg-green-400 text-white px-4 py-2">Adam</td>
                                        <td class="border-b bg-green-400 text-white px-4 py-2">112</td>
                                      </tr>
                                      <tr>
                                        <td class="border-b bg-red-500 text-white px-4 py-2">Into to JavaScript</td>
                                        <td class="border-b bg-red-500 text-white px-4 py-2">Chris</td>
                                        <td class="border-b bg-red-500 text-white px-4 py-2">1,280</td>
                                      </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!--/Underline form-->
                    </div>
                    <!-- /Cards Section Ends Here -->

                    <!--Grid Form-->

                    <div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
                        <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
                            <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">
                                Full Table
                            </div>
                            <div class="p-3">
                                <table class="table-responsive w-full rounded">
                                    <thead>
                                      <tr>
                                        <th class="border w-1/4 px-4 py-2">Student Name</th>
                                        <th class="border w-1/6 px-4 py-2">City</th>
                                        <th class="border w-1/6 px-4 py-2">Course</th>
                                        <th class="border w-1/6 px-4 py-2">Fee</th>
                                        <th class="border w-1/7 px-4 py-2">Status</th>
                                        <th class="border w-1/5 px-4 py-2">Actions</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="border px-4 py-2">Micheal Clarke</td>
                                            <td class="border px-4 py-2">Sydney</td>
                                            <td class="border px-4 py-2">MS</td>
                                            <td class="border px-4 py-2">900 $</td>
                                            <td class="border px-4 py-2">
                                                <i class="fas fa-check text-green-500 mx-2"></i>
                                            </td>
                                            <td class="border px-4 py-2">
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-eye"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-edit"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-red-500">
                                                        <i class="fas fa-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="border px-4 py-2">Rickey Ponting</td>
                                            <td class="border px-4 py-2">Sydney</td>
                                            <td class="border px-4 py-2">MS</td>
                                            <td class="border px-4 py-2">300 $</td>
                                            <td class="border px-4 py-2">
                                                <i class="fas fa-times text-red-500 mx-2"></i>
                                            </td>
                                            <td class="border px-4 py-2">
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-eye"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-edit"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-red-500">
                                                        <i class="fas fa-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="border px-4 py-2">Micheal Clarke</td>
                                            <td class="border px-4 py-2">Sydney</td>
                                            <td class="border px-4 py-2">MS</td>
                                            <td class="border px-4 py-2">900 $</td>
                                            <td class="border px-4 py-2">
                                                <i class="fas fa-check text-green-500 mx-2"></i>
                                            </td>
                                            <td class="border px-4 py-2">
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-eye"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-edit"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-red-500">
                                                        <i class="fas fa-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="border px-4 py-2">Micheal Clarke</td>
                                            <td class="border px-4 py-2">Sydney</td>
                                            <td class="border px-4 py-2">MS</td>
                                            <td class="border px-4 py-2">900 $</td>
                                            <td class="border px-4 py-2">
                                                <i class="fas fa-check text-green-500 mx-2"></i>
                                            </td>
                                            <td class="border px-4 py-2">
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-eye"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-edit"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-red-500">
                                                        <i class="fas fa-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="border px-4 py-2">Micheal Clarke</td>
                                            <td class="border px-4 py-2">Sydney</td>
                                            <td class="border px-4 py-2">MS</td>
                                            <td class="border px-4 py-2">900 $</td>
                                            <td class="border px-4 py-2">
                                                <i class="fas fa-check text-green-500 mx-2"></i>
                                            </td>
                                            <td class="border px-4 py-2">
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-eye"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-white">
                                                        <i class="fas fa-edit"></i></a>
                                                <a class="bg-teal-300 cursor-pointer rounded p-1 mx-1 text-red-500">
                                                        <i class="fas fa-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--/Grid Form-->
                </div>
            </main>
            <!--/Main-->
        </div>
</asp:Content>


