<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SMART CITY APPLICATION</title>
    <link rel="stylesheet" href="style.css">
    <!-- Fontawesome Link for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: #F8EDED;
        }

        header {
            position: fixed;
            top: 0;
            left: 0;
            z-index: 5;
            width: 100%;
            display: flex;
            justify-content: center;
            background: #229799;
        }

        .navbar {
            display: flex;
            padding: 0 10px;
            max-width: 1200px;
            width: 100%;
            align-items: center;
            justify-content: space-between;
        }

        .navbar input#menu-toggler {
            display: none;
        }

        .navbar #hamburger-btn {
            cursor: pointer;
            display: none;
        }

        .navbar .all-links {
            display: flex;
            align-items: center;
        }

        .navbar .all-links li {
            position: relative;
            list-style: none;
        }

        .navbar .logo a {
            display: flex;
            align-items: center;
            margin-left: 0;
        }

        header a, footer a {
            margin-left: 40px;
            text-decoration: none;
            color: #FFFFFF; /* Updated link color */
            height: 100%;
            padding: 20px 0;
            display: inline-block;
        }

        header a:hover, footer a:hover {
            color: #ffffff;
        }

.homepage {
  height: 100vh;
  width: 100%;
  position: relative;
  background: url("images/homepage.jpg");
  background-position: center 65%;
  background-size: cover;
  background-attachment: fixed;
}

.homepage::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 100%;
  background: rgba(0, 0, 0, 0.2);
}

.homepage .content {
  display: flex;
  height: 85%;
  z-index: 3;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.homepage .content h1 {
  font-size: 60px;
  font-weight: 700;
  margin-bottom: 10px;
}

.homepage .content .text {
  margin-bottom: 50px;
  color: #fff;
  font-size: 20px;
  text-align: center;
  text-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
}

.content a {
  color: #000;
  display: block;
  text-transform: uppercase;
  font-size: 18px;
  margin: 0 10px;
  padding: 10px 30px;
  border-radius: 5px;
  background: #fff;
  border: 2px solid #fff;
  transition: 0.4s ease;
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
  text-decoration: none;
}

.content a:hover {
  color: #fff;
  background: rgba(255,255,255,0.3);
}

section {
  display: flex;
  align-items: center;
  flex-direction: column;
  padding: 80px 0 0;
}

section h2 {
  font-size: 2rem;
}

.services h2 {
    color: #1A3636; /* Set the heading color for "Our Services" */
    font-size: 2rem;
    text-align: center; /* Center the heading */
}

section .cards {
  display: flex;
  flex-wrap: wrap;
  max-width: 1200px;
  margin-top: 50px;
  padding: 0 10px;
  justify-content: space-between;
}

section .cards .card {
    background: #C4DAD2; /* Updated background color */
    padding: 40px 15px;
    list-style: none;
    border-radius: 5px;
    box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.04);
    margin-bottom: 40px;
    width: calc(100% / 3 - 30px);
    text-align: center;
}

.portfolio .cards .card {
  padding: 0 0 20px;
}
.fade-up {
    opacity: 0;
    transform: translateY(20px);
    transition: opacity 3s ease, transform 3s ease;
}

.fade-up.active {
    opacity: 1;
    transform: translateY(0);
}

.services .card {
    background: #fff;
    padding: 40px 15px;
    list-style: none;
    border-radius: 5px;
    box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.04);
    margin-bottom: 40px;
    width: calc(100% / 3 - 30px);
    text-align: center;
}

.services .card img {
    width: 100%; /* Ensure the image takes full width */
    height: auto; /* Maintain the aspect ratio */
    border-radius: 0; /* Ensure rectangular shape */
    object-fit: cover; /* Cover the area without stretching */
}


.cards .card p {
  padding: 0 15px;
  margin-top: 5px;
}

footer {
  width: 100%;
  display: flex;
  justify-content: center;
  background: #229799;
  padding: 20px 0;
}

footer div {
  padding: 0 10px;
  max-width: 1200px;
  width: 100%;
  display: flex;
  justify-content: space-between;
}

footer span {
  color: #fff;
}

footer a {
  padding: 0;
}

@media screen and (max-width: 860px) {
  .navbar .all-links {
    position: fixed;
    left: -100%;
    width: 300px;
    display: block;
    height: 100vh;
    top: 75px;
    background: #333;
    transition: left 0.3s ease;
  }

  .navbar #menu-toggler:checked~.all-links {
    left: 0;
  }

  .navbar .all-links li {
    font-size: 18px;
  }

  .navbar #hamburger-btn {
    display: block;
  }

  section > p {
    text-align: center;
  }

  section .cards .card {
    width: calc(100% / 2 - 15px);
    margin-bottom: 30px;
  }

  .homepage .content h1 {
    font-size: 40px;
    font-weight: 700;
    margin-bottom: 10px;
  }

  .homepage .content .text {
    font-size: 17px;
  }

  .content a {
    font-size: 17px;
    padding: 9px 20px;
  }


  footer a {
    height: 0;
  }
}

@media screen and (max-width: 560px) {
  section .cards .card {
    width: 100%;
    margin-bottom: 30px;
  }
}

.container{
  z-index: 2;
  max-width: 1050px;
  width: 100%;
  background: #fff;
  border-radius: 1px;
  margin: 0 20px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}
.container .content{
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 25px 20px;
}
.content .image-box{
  max-width: 100%;
}
.content .image-box img{
  width: 100%;
}
.content .topic{
  font-size: 22px;
  font-weight: 500;
  color: #ba24c2;
}
.content form{
  width: 40%;
  margin-right: 30px;
}
.content .input-box{
  height: 50px;
  width: 100%;
  margin: 16px 0;
  position: relative;
}
.content .input-box input{
  position: absolute;
  height: 100%;
  width: 100%;
  border-radius: 6px;
  font-size: 16px;
  outline: none;
  padding-left: 16px;
  background: rgba(196, 218, 210, 0.5);
  border: 2px solid transparent;
  transition: all 0.3s ease;
}
.content .input-box input:focus,
.content .input-box input:valid{
  border-color: #0D7C66;
  background-color: #fff;
}
.content .input-box label{
  position: absolute;
  left: 18px;
  top: 50%;
  color: #0D7C66;
  font-size: 15px;
  pointer-events: none;
  transform: translateY(-50%);
  transition: all 0.3s ease;
}
.content .input-box input:focus ~ label,
.content .input-box input:valid ~ label{
  top: 0;
  left: 12px;
  display: 14px;
  color: rgba(196, 218, 210, 0.5);;
  background: #fff;
}

.content .message-box {
    min-height: 100px;
    position: relative;
}

.content .message-box textarea {
    position: absolute;
    height: 100%;
    width: 100%;
    resize: none;
    background: rgba(196, 218, 210, 0.5); /* Light shade of #C4DAD2 */
    border: 2px solid transparent;
    border-radius: 6px;
    outline: none;
    transition: 0.3s ease;
}

.content .message-box textarea:focus {
    border-color: #3DC2EC;
    background-color: rgba(196, 218, 210, 0.5); /* Change to #C4DAD2 on focus */
}

.content .message-box label {
    position: absolute;
    font-size: 16px;
    color:#C4DAD2;
    left: 18px;
    top: 6px;
    pointer-events: none;
    transition: 0.3s ease;
}

.content .input-box input[type="submit"] {
    color: #fff;
    background:#BEDC74;
    padding-left: 0;
    font-size: 18px;
    font-weight: 500;
    cursor: pointer;
    letter-spacing: 1px;
    transition: all 0.3s ease;
}

.content .input-box input[type="submit"]:hover {
    background-color: #BEDC74;
}

@media (max-width: 1000px) {
    .content .image-box {
        max-width: 70%;
    }

    .content {
        padding: 10px 0;
    }
}

@media (max-width: 900px) {
    .content .image-box {
        display: none;
    }

    .content form {
        width: 100%;
        margin-left: 30px;
    }
}


.wrapper .title{
    text-align: center;
}

.title h4{
    display: inline-block;
    padding: 20px;
    color: #585757;
    font-size: 50px;
    font-weight: 500;
    letter-spacing: 1.2px;
    word-spacing: 5px;
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: 15px;
    text-transform: uppercase;
    backdrop-filter: blur(15px);
    box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
    word-wrap: break-word;
}

.wrapper .card_Container{
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    margin: 40px 0;
}

.card_Container .card{
    position: relative;
    width: 300px;
    height: 400px;
    margin: 20px;
    overflow: hidden;
    box-shadow: 0 30px 30px -20px rgba(0, 0, 0, 1),
                inset 0 0 0 1000px rgba(67, 52, 109, .6);
    border-radius: 15px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.card .imbBx, .imbBx img{
    width: 100%;
    height: 100%;
}

.card .content{
    position: absolute;
    bottom: -160px;
    width: 100%;
    height: 160px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    backdrop-filter: blur(15px);
    box-shadow: 0 -10px 10px rgba(0, 0, 0, 0.1);
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: 15px;
    transition: bottom 0.5s;
    transition-delay: 0.65s;
}

.card:hover .content{
    bottom: 0;
    transition-delay: 0s;
}

.content .contentBx h3{
    text-transform: uppercase;
    color: #fff;
    letter-spacing: 2px;
    font-weight: 500;
    font-size: 18px;
    text-align: center;
    margin: 20px 0 15px;
    line-height: 1.1em;
    transition: 0.5s;
    transition-delay: 0.6s;
    opacity: 0;
    transform: translateY(-20px);
}

.card:hover .content .contentBx h3{
    opacity: 1;
    transform: translateY(0);
}

.content .contentBx h3 span{
    font-size: 12px;
    font-weight: 300;
    text-transform: initial;
}

.content .sci{
    position: relative;
    bottom: 10px;
    display: flex;
}

.content .sci li{
    list-style: none;
    margin: 0 10px;
    transform: translateY(40px);
    transition: 0.5s;
    opacity: 0;
    transition-delay: calc(0.2s * var(--i));
}

.card:hover .content .sci li{
    transform: translateY(0);
    opacity: 1;
}

.content .sci li a{
    color: #fff;
    font-size: 24px;
}
.compo {
  display: flex; /* Make the <compo> element a flex container */
}

.compo .content {
  position: relative;
  display: flex; /* Arrange child elements side by side */
}
.compo .text-content {
  top: 0%; /* Adjust the top value as needed */
  left: 40%;
  z-index: 1;
  margin-top: 1px; /* Adjust the margin to move the image down */

}

/* Your existing styles for text content go here */
.compo .girl {
  align-self: flex-end; /* Align the image to the right */
  margin-top: 1%; /* Adjust the margin to move the image down */
}

@media (max-width: 900px) {
  .compo .girl img {
    display: none; /* Hide the image on smaller screens if needed */
  }
}

.compo .text-content .text{
  font-size: 27px;
  color: #2c3350;
}
compo .text-content .name{
color: #2c3350;
 font-size: 70px;
 font-weight: 600;
 margin: -20px 0 0 -3px;
}
compo .text-content .job{
 color: #2c3350;
 font-size: 35px;
 margin: 1px 0;
 margin-top: 5px;
 display: flex;
}
.text-content .typing-text{
  margin-left: 10px;
  overflow: hidden;
  white-space: nowrap;
  border-right: 4px solid #1de2d1;
  animation: typing 5s steps(15) infinite;
}
@keyframes typing{
  0%{
    width: 0ch;
  }
  50%{
    width: 9ch;
  }
  100%{
    width: 0ch;
  }
}
.text-content .job .one{
  color: #1de2d1;
}
.text-content .job .two{
  color: #1de2d1;
}
.buttons{
  margin: 20px 0 0 50px;
}
.text-content .buttons button{
  outline: none;
  margin: 0 10px;
  border: none;
  border-radius: 6px;
  font-size: 18px;
  color: #fff;
  padding: 8px 16px;
  cursor: pointer;
  transition: all 0.3s ease;
  background-image: linear-gradient( 135deg, #2AFADF     10%, #C346C2 100%);
}
.buttons button:hover{
  transform: scale(0.97);
}

.compo .text-content {
  z-index: 1;
  margin-top: 10%;

}

.compo .text-content,
.compo .girl {
  flex: 2; /* Distribute available space equally between text and image */
}

/* Your existing styles for text content go here */

.compo .content .girl img {
  height: 10%; /* Use 100% height to fill the container */
}

@media (max-width: 900px) {
  .compo .content .girl img {
    display: none; /* Hide the image on smaller screens if needed */
  }
}
.compo .content .girl img {
  max-height: 500px; /* Adjust the maximum height as per your preference */
  top: 0%;
  margin-top: 0%;
  right: 10%;
  /* Add any additional styles as needed */
}


.compo .girl {
  align-self: flex-end; /* Align the image to the right */
}

@media (max-width: 900px) {
  .compo .girl img {
    display: none;
    top: 0%; /* Hide the image on smaller screens if needed */
  }
}



    </style>
<style>
  /* Your existing styles for the header, homepage, section, footer, and other components go here */

  .wrapper {
      position: relative;
      display: flex;
      justify-content: center;
      align-items: center;
  }

  .about-container {
      width: 100%;
      min-height: 60vh;
      position: relative;
      background-color: #C4DAD2;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 20px 60px 20px 90px;
      border-radius: 5px;
      flex-direction: row; /* Change to row to make them side by side */
  }

  .content-container {
      display: flex;
      width: 100%;
  }

  .image-container {
      flex: 1;
      display: flex;
      justify-content: flex-start;
      align-items: center;
  }

  .image-container img {
      max-width: 500%;
      max-height: 100%;
      border-radius:0px;
  }

  .text-container {
      flex: 1;
      display: flex;
      justify-content: flex-start;
      align-items: flex-start;
      flex-direction: column;
      font-size: 22px;
      text-align: left;
      margin-left: 20px; /* Add margin for spacing between image and text */
  }

  .text-container h1 {
      font-size: 20px;
      padding: 20px 0px;
  }

  .text-container p {
      margin: 0;
  }

  .text-container a {
      text-decoration: none;
      padding: 12px;
      margin: 20px 0;
      background-color: rebeccapurple;
      border: 2px solid transparent;
      color: white;
      border-radius: 5px;
      transition: 0.3s all ease;
  }

  .text-container a:hover {
      background-color: darkgreen;
      color: black;
      border: 2px solid rebeccapurple;
  }

  @media screen and (max-width: 1600px) {
      .about-container {
          width: 80%;
      }
      .image-container img {
          max-width: 90%;
          max-height: 100%;
      }
      .text-container h1 {
          font-size: 60px;
      }
      .text-container p {
          font-size: 18px;
      }
  }

  @media screen and (max-width: 1100px) {
      .about-container {
          padding: 20px;
          flex-direction: column;
      }

      .content-container {
          flex-direction: column-reverse;
      }

      .image-container,
      .text-container {
          justify-content: flex-start;
          text-align: left;
          margin-left: 0; /* Remove margin to make them stack on top of each other */
      }

      .image-container img {
          max-width: 100%;
          max-height: 100%;
          align-self: flex-start;
      }
  }
</style>

  </head>
  <body>
    <header>
      <nav class="navbar">
        <h2 class="logo"><a href="#">SMART CITY APPLICATION</a></h2>
        <input type="checkbox" id="menu-toggler">
        <label for="menu-toggler" id="hamburger-btn">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="24px" height="24px">
            <path d="M0 0h24v24H0z" fill="none"/>
            <path d="M3 18h18v-2H3v2zm0-5h18V11H3v2zm0-7v2h18V6H3z"/>
          </svg>
        </label>
        <ul class="all-links">
          <li><a href="#home">Home</a></li>
          <li><a href="#services">Services</a></li>
          
          <li><a href="#aboutus">About Us</a></li>
          <li><a href="#contact">Contact Us</a></li>
          <li><a href="wallposters">Wall Posters</a></li>
         <li><a href="chatbot"><img id="chatbot-icon" src="images/chatbot.png" alt="Chatbot Icon" height="35px"></a></li>
          
        </ul>
      </nav>
    </header>

    <section class="homepage" id="home">
      <div class="content">
        <div class="text">
          <h1>SMART CITY</h1>
         
        </div>
        <a href="login">Get Started</a>
      </div>
    </section>

    <section class="services" id="services">
      <h2 class="fade-up">Our Services</h2>
      <p class="fade-up">Explore our wide range of camping gear services.</p>
        <ul class="fade-up cards">
          <li class="card">
            <img src="images/hospital.avif" alt="img">
            <h3>HOSPITALS</h3>
            <p>Navigate the city's healthcare landscape seamlessly with our curated guide to top-notch hospitals, ensuring quick access to quality medical care in times of need.</p>
          </li>
          <li class="card">
            <img src="images/touristimage.avif" alt="img">
            <h3>TOURIST PLACES</h3>
            <p>Embark on a journey of discovery with our handpicked selection of must-visit tourist places, unlocking the city's hidden gems and iconic landmarks for an unforgettable experience.</p>
          </li>
          <li class="card">
            <img src="images/shopping.avif" alt="img">
            <h3>SHOPPING MALLS</h3>
            <p>Shop with confidence and style as our guide leads you to the best shopping malls, offering a diverse range of retail therapy options catering to every taste and preference.</p>
          </li>
          <li class="card">
            <img src="images/culture.jpeg" alt="img">
            <h3>HISTORY & CULTURE</h3>
            <p>Immerse yourself in the rich tapestry of history and culture with our meticulously crafted guide, unveiling the city's heritage sites and cultural hotspots for an enlightening exploration.</p>
          </li>
          <li class="card">
            <img src="images/carrental.jpg" alt="img">
            <h3>CAR RENTALS</h3>
            <p>Hit the road hassle-free with our recommended car rental services, providing convenient and reliable transportation options to suit your travel needs.</p>
          </li>
          <li class="card">
            <img src="images/hotel.jpg" alt="img">
            <h3>HOTEL-BOOKING</h3>
            <p>Elevate your stay with our simple hotel booking services. Choose from a variety of accommodations and exclusive deals. Book now for a stay beyond the ordinary.</p>
          </li>
        </ul>
      </section>

    
    <section class="compo" id="aboutus">
    <compo>
      <div class="content">
        <div class="text-content">
          <div class="text">Hello, From</div>
          <div class="name">Smart Compass</div>
          <div class="job">
            <div class="job">
              <span>Your</span>
               <div class="typing-text">
                 <span class="one">City</span>
                 <span class="two">Guide</span>
               </div>
             </div>
          </div>
       
        </div>
        <div class="girl">
          <img src="images/smartlogo.jpg" alt="" height="20" width="550" >
        </div>
      </div>
      </compo>
    </section>
    
   
    <section class="fade-up" id="about">
      <div class="wrapper">

        <div class="background-container">
            <div class="bg-1"></div>
            <div class="bg-2"></div>
    
        </div>
        <div class="about-container">
            
            <div class="image-container">
                <img src="images/work.avif" alt="">
                
            </div>

<div class="text-container">
    <h1>About Us</h1>
    <ul>
        <li>The smart city project helps newcomers navigate urban areas.</li>
        <li>It provides essential information on facilities, attractions, and services.</li>
        <li>Users can find details on hotels, rentals, transportation, and healthcare.</li>
        
     </ul>
</div>
            
        </div>
    </div>
    </section>
    
    <section class="fade-up" id="contact">
    <h2>Contact Us</h2>
    <h3 align="center" style="color: red;">${message}</h3>
    <br>
    <div class="container">
        <div class="content">
            <div class="image-box">
                <img src="images/calls.jpg" alt="">
            </div>
            <form id="contactForm" action="contacthome" method="post" onsubmit="submitForm()">
                <div class="topic" style="color: #16325B;">Send us a message</div>
                <div class="input-box">
                    <input type="text" name="name" required>
                    <label>Enter your name</label>
                </div>
                <div class="input-box">
                    <input type="text" name="email" required>
                    <label>Enter your email</label>
                </div>
                <!-- Include a textarea for the message -->
                <div class="message-box">
                    <textarea name="comment" required></textarea>
                    <label></label>
                </div>
                <div class="input-box">
                    <input type="submit" value="Send Message">
                </div>
            </form>          
        </div>
    </div>
</section>
    
    
    <br>
    <br>
    <footer>
       
      <div>
        <!--<span>Copyright © 2023 All Rights Reserved</span>-->
        <span class="link">
            <a href="#">Home</a>
            <a href="#contact">Contact</a>
        </span>
      </div>
     <script>
  document.addEventListener("DOMContentLoaded", function () {
    const cards = document.querySelectorAll(".fade-up");

    const options = {
      root: null,
      threshold: 0.2,
      rootMargin: "0px",
    };

    const observer = new IntersectionObserver((entries, observer) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add("active");
          observer.unobserve(entry.target);
        }
      });
    }, options);

    cards.forEach((card) => {
      observer.observe(card);
    });
  });
  
  function submitForm() {
	    // Perform any form processing here, if needed

	    // Scroll to the #contact section after form submission
	    window.location.href = "#contact";
	    
	  }
</script>

    </footer>


  </body>
</html>