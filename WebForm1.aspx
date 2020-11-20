<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Gym.WebForm2" %>

<!DOCTYPE html>

<html lang="en">
<head >

     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script> 
        src = "https://kit.fontawesome.com/64d58efce2.js "
        crossorigin = "annymous"
    </script>   
    <title>Sign In & Sign Up Form  </title>

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
            z-index:6;
            transition:1.8s ease-in-out;
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
            z-index:5;
            transition: 1s 0.7s ease-in-out;
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
            transition:0.2s 0.7s ease-in-out;
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
            max-width:380px;
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
           background-color: antiquewhite;
           color:#f7d26b;
           text-transform:uppercase;
           font-weight:600;
           margin:10px 0;
           transition: .5s;
       }
       .btn:hover{
           background-color:beige;
       }
       .panels-container{
           position:absolute;
           width:100%;
           height:100%;
           top:0;
           left:0;
           display:grid;
           grid-template-columns: repeat(2,1fr);
       }
       .panel{
           display:flex;
           flex-direction:column;
           align-items:flex-end;
           justify-content: space-around;
           text-align:center;
           z-index:7;
       }
       .left-panel{
           pointer-events: all;
           padding:3rem 17% 2rem 12%;
       }
       .right-panel{
           pointer-events: none;
           padding:3rem 12% 2rem 17%;
       }
       .panel .content{
           color:#fff;
           transition: .8s .6s ease-in-out;
       }
       .panel h3{
           font-weight:600;
           line-height:1;
           font-size:1.5rem;
       }
       .panel p{
           font-size:0.95rem;
           padding:0.7rem 0;
       }
       .bth.transparent{
           margin:0;
           background:none;
           border:2px solid #fff;
           width:130px;
           height:41px;
           font-weight:600;
           font-size:0.8rem;
       }
       .image{
           width:100%;
           transition: 1.1s .4s ease-in-out;
       }
       .right-panel .content, .right-panel.image{
           transform: translateX(800px);
       }
       .container.sign-up-form:before{
           transform: translate(100%,-50%);
           right:52%;
       }
       .container.sign-up-mode.left-panel.image,
       .container.sign-up-mode.left-panel.container{
           transform:translateX(-800px);
       }
       .container.sign-up-mode.right-panel .content, 
       .container.sign-up-mode.right-panel.image{
           transform: translateX(0px);
       }
       .container.sign-up-mode.left-panel{
           pointer-events:none;
       }
       .container.sign-up-mode.right-panel{
           pointer-events:all;
       }
       .container.sign-up-mode.signin-signup{
           left:25%;
       }
       .container.sign-up-mode form.sign-in-form{
           z-index:1;
           opacity:0;
       }
       .container.sign-up-mode form.sign-up-form{
           z-index:2;
           opacity:1;
       }


    </style>

       <script >

           const sign_in_btn = document.querySelector("#sign_in_btn");
           const sign_up_btn = document.querySelector("#sign_up_btn");
           const container = document.querySelector(".container");

           sign_up_bt.addEventListener('click', () => {
               container.classList.add("sign-up-mode");
           });

           sign_in_bt.addEventListener('click', () => {
               container.classList.remove("sign-up-mode");
           });


       </script>


</head>

<body>

    <div class="container">
        <div class="forms-container" >
            <div class="signin-signup">
                <form action="" class ="sign-in-form" runat="server">
                   <h2 class="title">Sign In</h2>

                    <div class="input-field">
                      <i class="fas fa-user"> </i>
                        <input type="text" placeholder="Username" />
                    </div>

                    <div class="input-field">
                      <i class="fas fa-lock"> </i>
                        <input type="password" placeholder="Pasword" />
                    </div>

                   <asp:Button ID="Button2" runat="server" Text="Button" type="submit" value="Login" class="btn solid" />
                 </form>




               <form action="" class ="sign-up-form" runat="server">
                  <h2 class="title">Sign Up</h2>

                  <div class="input-field">
                      <i class="fas fa-user"> </i>
                      <input type="text" placeholder="First Name" />

                  </div>

                  <div class="input-field">
                      <i class="fas fa-user"> </i>
                        <input type="text" placeholder="Last Name" />

                  </div>

                   <div class="input-field">
                      <i class="fas fa-user"> </i>
                     <input type="text" placeholder="ID" />

                  </div>
                       
                  <div class="input-field">
                      <i class="fas fa-envelope"> </i>
                      <input type="text" placeholder="Phone Namber" />

                  </div>

                  <div class="input-field">
                      <i class="fas fa-lock"> </i>
                      <input type="password" placeholder="Pasword" />

                  </div>

                  <div class="input-field">
                      <i class="fas fa-lock"> </i>
                        <input type="password" placeholder="Pasword" />

                  </div>


                 <asp:Button ID="Button1" runat="server" Text="Button" type="submit" value="Sign up" class="btn solid" />


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

                <img src="photos/login1.svg" class="image" alt="" />
            </div>


            <div class="panel right-panel">
                <div class="content">
                    <h3> One of us ?</h3>
                    <p> come on !</p>
                    <button class="btn transparent" id="sign-in-bth">Sign in </button>
                </div>

                <img src="photos/signin1.svg"class="image" alt="" />
            </div>

         </div>

    </div>

</body>
</html>
