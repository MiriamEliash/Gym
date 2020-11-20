<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginRegistration.aspx.cs" Inherits="Gym.LoginRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script> 
        src = "https://kit.fontawesome.com/64d58efce2.js "
        crossorigin = "annymous"
    </script>

    <style>

        *{
            padding:0;
            margin:0;
            box-sizing:border-box;
        }
        body,html{
            font-family:'poppins',sans-serif;
        }
        .container{
            position:relative;
            width:100%;
            min-height:100vh;
            background-color:#ffffff;
            overflow:hidden;
        }
        .container:before{
            content: '';
            position:absolute;
            width:2000px;
            height:2000px;
            border-radius:50%;
            background: linear-gradient(-45deg,#eebb7c,antiquewhite);
            top:-10%;
            right:48%;
            transform:translateY(-50%);
        }
        .forms-container{
            position:absolute;
            width:100%;
            height:100%;
            top:0;
            left:0;
        }
        .signin-signup{
            position:absolute;
            top:50%;
            left:75%;
            transform: translate(-50%,-50%);
            width:50%;
            display:grid;
            grid-template-columns:1fr;
        }
        form{
            display:flex;
            align-items:center;
            justify-content:center;
            flex-direction:column;
            padding: 0 5rem;
            overflow:hidden;
            grid-column: 1 / 2;
            grid-row: 1 / 2;
        }
        form.sign-in-form{
            z-index:2;
        }
        form.sign-up-form{
            z-index:1;
            opacity:0;
        }
        .title{
            font-size:2.2rem;
            color:#808080;
            margin-bottom:10px;
        }
        .input-field{
            max-width:100%;
            width:100%;
            height:55px;
            background-color:antiquewhite;
            margin:10px 0;
            border-radius:55px;
            display:grid;
            grid-template-columns: 15% 85%;
            padding: 0 .4rem;
        }
        .input-field i{
            text-align:center;
            line-height:55px;
            color:#acacac;
            font-size:1.1rem;
        }
        .input-field input {
         background:none;
         outline:none;
         border:none;
         line-height:1;
         font-weight:600;
         font-size:1.1rem;
         color:#333;
        }
       .input-field input::after placeholder{
           color:#aaa;
           font-weight:500;
       }
       .bth{
           width:150px;
           height:49px;
           border:none;
           outline:none;
           border-radius:49px;
           cursor:pointer;
           background-color:#eebb7c;
           color:#fff;
           text-transform:uppercase;
           font-weight:600;
           margin:10px 0;
           transition: .5s;
       }
       .btn:hover{
           background-color:beige;
       }



    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="forms-container" >
            <div class="signin-signup">
                <form action="" class ="sign-in-form">
                <h2 class="title">Sign In</h2>

                  <div class="input-field">
                      <i class="fas fa-user"> </i>
                      <input type="text" placeholder="Username" />
                  </div>

                  <div class="input-field">
                      <i class="fas fa-lock"> </i>
                      <input type="password" placeholder="Password" />
                  </div>

                    <input type="submit" value="Login" class="btn solid" />


                 </form>




                   <form action="" class ="sign-up-form">
                <h2 class="title">Sign Up</h2>

                  <div class="input-field">
                      <i class="fas fa-user"> </i>
                      <input type="text" placeholder="Username" />
                  </div>
                       
                  <div class="input-field">
                      <i class="fas fa-envelope"> </i>
                      <input type="text" placeholder="Email" />
                  </div>

                  <div class="input-field">
                      <i class="fas fa-lock"> </i>
                      <input type="password" placeholder="Password" />
                  </div>

                    <input type="submit" value="Sign up" class="btn solid" />


                 </form>

            </div>
        </div>

        <div class="panels-container"> 
            <div class="panel left-panel">
                <div class="content">
                    <h3> New here ?</h3>
                    <p> welcome !</p>
                    <button class="btn transparent" id="sign-up-bth">Sign up </button>
                </div>

                <img src="" class="image" alt="" />
            </div>



            <div class="panel right-panel">
                <div class="content">
                    <h3> One of us ?</h3>
                    <p> come on !</p>
                    <button class="btn transparent" id="sign-in-bth">Sign in </button>
                </div>

                <img src="" class="image" alt="" />
            </div>



        </div>


    </div>

</asp:Content>
