#!/bin/bash

#update all packages
sudo apt update -y

#install apache 2
sudo apt install apache2 -y

#start server
sudo service apache2 start

sleep 5

#remove index
sudo rm -rf /var/www/html/index.html

sleep 3

#copy over file
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<title>Web Server 1</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
<body class="w3-black">

<!-- Page Content -->
<div class="w3-padding-large" id="main">
  <!-- Header/Home -->
  <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
    <h1 class="w3-jumbo"><span class="w3-hide-small">I'm</span> Emanuel Burgess</h1>
    <p>Customer Success Architect at GitHub :D</p>
    <a href="https://imgur.com/LlZ0A8V"><img src="https://i.imgur.com/LlZ0A8V.jpg" title="source: imgur.com" /></a>
  </header>
