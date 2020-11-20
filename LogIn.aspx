<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Gym.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name ="viewport" content="width=device-width,initial-scale=1.0" />
    <title>Sing in & Sing op from </title>
    <link rel="stylesheet" type="text/css" href="style.css" />
  


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="container">
            <div class="user-select-all singinBx">
                <div class="imgBx"><img src="photos/gym.img.jpeg" /></div>
                    <div class="formBx">
                       <form>
                        <h2> Sing In</h2>
                        <input type ="text" name=" " placeholder="Username" >
                        <input type ="password" name=" " placeholder="password" >
                        <input type ="Submit" name=" " value="Login" >
                        <p class="singup">Don't hane an account?<a href="#">Sing Up.</a></p>
                       </form>
                    </div> 
            </div>
        </div>

    </section>

</asp:Content>
