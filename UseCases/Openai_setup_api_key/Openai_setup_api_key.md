---
jupyter:
  kernelspec:
    display_name: Teradata SQL
    language: Teradata SQL
    name: teradatasql
  language_info:
    codemirror_mode: Teradata SQL
    file_extension: .tdrs
    mimetype: application/vnd.teradata.resultset
    name: Teradata SQL
    version: 16.20
  nbformat: 4
  nbformat_minor: 5
---

<div class="cell markdown">

<header style="padding:1px;background:#f9f9f9;border-top:3px solid #00b2b1"><img id="Teradata-logo" src="https://www.teradata.com/Teradata/Images/Rebrand/Teradata_logo-two_color.png" alt="Teradata" width="220" align="right" />

<b style = 'font-size:28px;font-family:Arial;color:#E37C4D'>Using ClearScape Analytics with OpenAI</b>
</header>
<p style = 'font-size:20px;font-family:Arial;color:#E37C4D'><b>Introduction</b></p>

</div>

<div class="cell markdown">

<p style = 'font-size:16px;font-family:Arial'>To ensure optimal utilization of the OpenAI API in generative AI notebooks, it is essential to establish the API keys correctly. This concise guide outlines the process of configuring OpenAI API keys for seamless integration across multiple notebooks.  This notebook is called by other notebooks that use openai for get the api key. Please note that the steps for obtaining the API keys are included in this guide as well.</p>
<p style = 'font-size:16px;font-family:Arial'>The OpenAI API, a powerful tool that enables developers to integrate the capabilities of the OpenAI language models into their own applications, products, or services. The OpenAI API allows you to leverage the state-of-the-art natural language processing capabilities of the GPT-3.5 language model, enabling you to create a wide range of intelligent and interactive experiences.
</p>
<p style = 'font-size:16px;font-family:Arial'>By accessing the OpenAI API, you gain the ability to generate human-like text, answer questions, create conversational agents, perform language translation, assist in writing code, draft emails, write articles, and much more. The API provides a straightforward interface for making requests and receiving responses from the language model, making it easy to incorporate its advanced language capabilities into your own projects.</p>

</div>

<div class="cell markdown">

<center><img src="images/openai_header.png" alt="Generative_QA_architecture" width=500 height=500/></center>

</div>

<div class="cell markdown">

<p style = 'font-size:20px;font-family:Arial;color:#E37C4D'><b>How to Setup OpenAI account and get the API Key</b></p>
<p style = 'font-size:16px;font-family:Arial;color:#E37C4D'><b>Steps to setup the account:</b></p>
<ul style = 'font-size:16px;font-family:Arial'>
<li>Go to the OpenAI website: <a href="https://beta.openai.com/signup">openai.com</a>.</li>
<li>Click on the "Sign up" button.</li>
<li>Enter your email address and password.</li>
<li>Click on the "Create account" button.</li>
<li>You will be sent a verification email. Open the email and click on the verification link.</li>
<li>Once your account is verified, you will be logged in, you will see below screen</li>
</ul>

</div>

<div class="cell markdown">

<center><img src="images/img1.png" alt="Generative_QA_architecture"  width=800 height=800/></center>

</div>

<div class="cell markdown">

<ul style = 'font-size:16px;font-family:Arial'>
<li>Click on API and you will see all the OpenAI offered services. Click on profile icon in the top right corner</li>
<center><img src="images/img2.png" alt="Generative_QA_architecture"  width=800 height=800/></center>

</div>

<div class="cell markdown">

<ul style = 'font-size:16px;font-family:Arial'>
<li>Click on View API keys. There will be one default key</li>
<center><img src="images/img3.png" alt="Generative_QA_architecture"  width=800 height=800/></center>

</div>

<div class="cell markdown">

<ul style = 'font-size:16px;font-family:Arial'>
<li>Now, you have to setup paid account first, Click on Billing to setup paid account.</li>
<center><img src="images/img4.png" alt="Generative_QA_architecture"  width=800 height=800/></center>

</div>

<div class="cell markdown">

<ul style = 'font-size:16px;font-family:Arial'>
<li>Choose the option: Select Individual if want to use for personal purposes else select second option. </li>
<center><img src="images/img5.png" alt="Generative_QA_architecture"  width=800 height=800/></center>

</div>

<div class="cell markdown">

<ul style = 'font-size:16px;font-family:Arial'>
<li>Fill out the personal and billing details.</li>
<center><img src="images/img6.png" alt="Generative_QA_architecture"  width=800 height=800/></center>

</div>

<div class="cell markdown">

<ul style = 'font-size:16px;font-family:Arial'>
<li>Now, Click on Create new secret key to generate the new key.</li>
<center><img src="images/img7.png" alt="Generative_QA_architecture"  width=800 height=800/></center>

</div>

<div class="cell markdown">

<ul style = 'font-size:16px;font-family:Arial'>
<li>Optional: Specify the key name.</li>
<center><img src="images/img8.png" alt="Generative_QA_architecture"  width=800 height=800/></center>

</div>

<div class="cell markdown">

<ul style = 'font-size:16px;font-family:Arial'>
<li>Please save this secret key somewhere safe and accessible. For security reasons, you won't be able to view it again through your OpenAI account. If you lose this secret key, you'll need to generate a new one. This is the last step. You can use this key to run generative AI demos.</li>
<center><img src="images/img9.png" alt="Generative_QA_architecture"  width=800 height=800/></center>

</div>

<div class="cell markdown">

Thank you

</div>

<div class="cell markdown">

<footer style="padding:10px;background:#f9f9f9;border-bottom:3px solid #394851">Copyright © Teradata Corporation - 2023. All Rights Reserved.</footer>

</div>
