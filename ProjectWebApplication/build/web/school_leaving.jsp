<%-- 
    Document   : personal_info
    Created on : 18 May 2023, 3:43:10 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>School Information Page</title>
        <link rel="stylesheet" href="css/maTStyle.css">
        <style>
            .inputfield .btn{
              width: 100%;
               padding: 8px 10px;
              font-size: 15px; 
              border: 0px;
              background:  #03e9f4;
              color: black;
              cursor: pointer;
              border-radius: 3px;
              outline: none;
            }

            .inputfield .btn:hover{
              background: #03e9f4;
            }
            #score{
                color: #03e9f4;
                font-size: 15px;
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
        <div class="title">
          School leaving information
        </div>
        <form action="SLDetailsServlet.do" method="POST">
            <div class="form">
                <div class="inputfield">
                  <label>Previous School</label>
                  <input type="text" id="firstname" name="schoolname" class="input" required>
               </div>
               <div class="inputfield">
                  <label>Subject 1</label>
                  <div class="custom_select">
                      <select name="subj1" required>
                      <option value="">Select</option>
                      <option value="accounting">Accounting</option>
                      <option value="afrikaans">Afrikaans FAL</option>
                      <option value="afrikaans">Afrikaans HL</option>
                      <option value="agricSc">Agricultural Science</option>
                      <option value="businessS">Business Studies</option>
                      <option value="consumerS">Consumer Studies</option>
                      <option value="dramaticA">Dramatic Arts</option>
                      <option value="economics">Economics</option>
                      <option value="engGA">Engineering graphics and design</option>
                      <option value="english">English HL</option>
                      <option value="english">English FAL</option>
                      <option value="geograpgy">Geography</option>
                      <option value="history">History</option>
                      <option value="it">Information Technology</option>
                      <option value="ndebele">IsiNdebele HL</option>
                      <option value="swati">IsiSwati HL</option>
                     <option value="LO">Life Orientation</option>
                      <option value="xhosa">IsiXhosa HL</option>
                      <option value="zulu">IsiZulu HL</option>
                      <option value="lifeSc">Life Sciences</option>
                      <option value="maths">Mathematics</option>
                      <option value="mathsLit">Mathematics Literacy</option>
                      <option value="music">Music</option>
                      <option value="physicalSc">Physical Sciences</option>
                      <option value="religion">Religion Studies</option>
                      <option value="sepedi">Sepedi HL</option>
                      <option value="sesotho">Sesotho HL</option>
                      <option value="setswana">Setswana HL</option>
                      <option value="venda">Tshivenda</option>
                      <option value="vArts">Visual Arts</option>
                      <option value="tsonga">Xitsonga HL</option>
                    </select>
                  </div>
                  
               </div>
                <div class="custom_select">
                    <label id="score">Score</label>
                    <select name="subj1M" required>
                      <option value="">Select</option>
                      <option value="1">0-29</option>
                      <option value="2">30-39</option>
                      <option value="3">40-49</option>
                      <option value="4">50-59</option>
                      <option value="5">60-69</option>
                      <option value="6">70-79</option>
                      <option value="7">80-100</option>
                    </select>
                </div>
                <br>
                <br>
                <div class="inputfield">
                  <label>Subject 2</label>
                  <div class="custom_select">
                    <select name="subj2" required>
                      <option value="">Select</option>
                      <option value="accounting">Accounting</option>
                      <option value="afrikaans">Afrikaans FAL</option>
                      <option value="afrikaans">Afrikaans HL</option>
                      <option value="agricSc">Agricultural Science</option>
                      <option value="businessS">Business Studies</option>
                      <option value="consumerS">Consumer Studies</option>
                      <option value="dramaticA">Dramatic Arts</option>
                      <option value="economics">Economics</option>
                      <option value="engGA">Engineering graphics and design</option>
                      <option value="english">English HL</option>
                      <option value="english">English FAL</option>
                      <option value="geograpgy">Geography</option>
                      <option value="history">History</option>
                      <option value="it">Information Technology</option>
                      <option value="ndebele">IsiNdebele HL</option>
                      <option value="xhosa">IsiXhosa HL</option>
                      <option value="swati">IsiSwati HL</option>
                     <option value="LO">Life Orientation</option>
                      <option value="zulu">IsiZulu HL</option>
                      <option value="lifeSc">Life Sciences</option>
                      <option value="maths">Mathematics</option>
                      <option value="mathsLit">Mathematics Literacy</option>
                      <option value="music">Music</option>
                      <option value="physicalSc">Physical Sciences</option>
                      <option value="religion">Religion Studies</option>
                      <option value="sepedi">Sepedi HL</option>
                      <option value="sesotho">Sesotho HL</option>
                      <option value="setswana">Setswana HL</option>
                      <option value="venda">Tshivenda</option>
                      <option value="vArts">Visual Arts</option>
                      <option value="tsonga">Xitsonga HL</option>
                    </select>
                  </div>
                  
               </div>
                <div class="custom_select">
                    <label id="score">Score</label>
                    <select name="subj2M" required>
                      <option value="">Select</option>
                      <option value="1">0-29</option>
                      <option value="2">30-39</option>
                      <option value="3">40-49</option>
                      <option value="4">50-59</option>
                      <option value="5">60-69</option>
                      <option value="6">70-79</option>
                      <option value="7">80-100</option>
                    </select>
                </div>
                <br>
                <br>
                <div class="inputfield">
                  <label>Subject 3</label>
                  <div class="custom_select">
                    <select name="subj3" required>
                      <option value="">Select</option>
                      <option value="accounting">Accounting</option>
                      <option value="afrikaans">Afrikaans FAL</option>
                      <option value="afrikaans">Afrikaans HL</option>
                      <option value="agricSc">Agricultural Science</option>
                      <option value="businessS">Business Studies</option>
                      <option value="consumerS">Consumer Studies</option>
                      <option value="dramaticA">Dramatic Arts</option>
                      <option value="economics">Economics</option>
                      <option value="engGA">Engineering graphics and design</option>
                      <option value="english">English HL</option>
                      <option value="english">English FAL</option>
                      <option value="geograpgy">Geography</option>
                      <option value="history">History</option>
                      <option value="it">Information Technology</option>
                      <option value="ndebele">IsiNdebele HL</option>
                      <option value="xhosa">IsiXhosa HL</option>
                      <option value="zulu">IsiZulu HL</option>
                      <option value="lifeSc">Life Sciences</option>
                      <option value="swati">IsiSwati HL</option>
                     <option value="LO">Life Orientation</option>
                      <option value="maths">Mathematics</option>
                      <option value="mathsLit">Mathematics Literacy</option>
                      <option value="music">Music</option>
                      <option value="physicalSc">Physical Sciences</option>
                      <option value="religion">Religion Studies</option>
                      <option value="sepedi">Sepedi HL</option>
                      <option value="sesotho">Sesotho HL</option>
                      <option value="setswana">Setswana HL</option>
                      <option value="venda">Tshivenda</option>
                      <option value="vArts">Visual Arts</option>
                      <option value="tsonga">Xitsonga HL</option>
                    </select>
                  </div>
                  
               </div>
                <div class="custom_select">
                    <label id="score">Score</label>
                    <select name="subj3M" required>
                      <option value="">Select</option>
                      <option value="1">0-29</option>
                      <option value="2">30-39</option>
                      <option value="3">40-49</option>
                      <option value="4">50-59</option>
                      <option value="5">60-69</option>
                      <option value="6">70-79</option>
                      <option value="7">80-100</option>
                    </select>
                </div>
                <br>
                <br>
                <div class="inputfield">
                  <label>Subject 4</label>
                  <div class="custom_select">
                    <select name="subj4" required>
                      <option value="">Select</option>
                      <option value="accounting">Accounting</option>
                      <option value="afrikaans">Afrikaans FAL</option>
                      <option value="afrikaans">Afrikaans HL</option>
                      <option value="agricSc">Agricultural Science</option>
                      <option value="businessS">Business Studies</option>
                      <option value="consumerS">Consumer Studies</option>
                      <option value="dramaticA">Dramatic Arts</option>
                      <option value="economics">Economics</option>
                      <option value="engGA">Engineering graphics and design</option>
                      <option value="english">English HL</option>
                      <option value="english">English FAL</option>
                      <option value="geograpgy">Geography</option>
                      <option value="history">History</option>
                      <option value="it">Information Technology</option>
                      <option value="ndebele">IsiNdebele HL</option>
                      <option value="xhosa">IsiXhosa HL</option>
                      <option value="swati">IsiSwati HL</option>
                     <option value="LO">Life Orientation</option>
                      <option value="zulu">IsiZulu HL</option>
                      <option value="lifeSc">Life Sciences</option>
                      <option value="maths">Mathematics</option>
                      <option value="mathsLit">Mathematics Literacy</option>
                      <option value="music">Music</option>
                      <option value="physicalSc">Physical Sciences</option>
                      <option value="religion">Religion Studies</option>
                      <option value="sepedi">Sepedi HL</option>
                      <option value="sesotho">Sesotho HL</option>
                      <option value="setswana">Setswana HL</option>
                      <option value="venda">Tshivenda</option>
                      <option value="vArts">Visual Arts</option>
                      <option value="tsonga">Xitsonga HL</option>
                    </select>
                  </div>
                  
               </div>
                <div class="custom_select">
                    <label id="score">Score</label>
                    <select name="subj4M" required>
                      <option value="">Select</option>
                      <option value="1">0-29</option>
                      <option value="2">30-39</option>
                      <option value="3">40-49</option>
                      <option value="4">50-59</option>
                      <option value="5">60-69</option>
                      <option value="6">70-79</option>
                      <option value="7">80-100</option>
                    </select>
                </div>
                <br>
                <br>
                <div class="inputfield">
                  <label>Subject 5</label>
                  <div class="custom_select">
                    <select name="subj5" required>
                      <option value="">Select</option>
                      <option value="accounting">Accounting</option>
                      <option value="afrikaans">Afrikaans FAL</option>
                      <option value="afrikaans">Afrikaans HL</option>
                      <option value="agricSc">Agricultural Science</option>
                      <option value="businessS">Business Studies</option>
                      <option value="consumerS">Consumer Studies</option>
                      <option value="dramaticA">Dramatic Arts</option>
                      <option value="economics">Economics</option>
                      <option value="engGA">Engineering graphics and design</option>
                      <option value="english">English HL</option>
                      <option value="english">English FAL</option>
                      <option value="geograpgy">Geography</option>
                      <option value="history">History</option>
                      <option value="it">Information Technology</option>
                      <option value="ndebele">IsiNdebele HL</option>
                      <option value="xhosa">IsiXhosa HL</option>
                      <option value="zulu">IsiZulu HL</option>
                      <option value="lifeSc">Life Sciences</option>
                      <option value="swati">IsiSwati HL</option>
                     <option value="LO">Life Orientation</option>
                      <option value="maths">Mathematics</option>
                      <option value="mathsLit">Mathematics Literacy</option>
                      <option value="music">Music</option>
                      <option value="physicalSc">Physical Sciences</option>
                      <option value="religion">Religion Studies</option>
                      <option value="sepedi">Sepedi HL</option>
                      <option value="sesotho">Sesotho HL</option>
                      <option value="setswana">Setswana HL</option>
                      <option value="venda">Tshivenda</option>
                      <option value="vArts">Visual Arts</option>
                      <option value="tsonga">Xitsonga HL</option>
                    </select>
                  </div>
                  
               </div>
                <div class="custom_select" >
                    <label id="score">Score</label>
                    <select name="subj5M" required>
                      <option value="">Select</option>
                      <option value="1">0-29</option>
                      <option value="2">30-39</option>
                      <option value="3">40-49</option>
                      <option value="4">50-59</option>
                      <option value="5">60-69</option>
                      <option value="6">70-79</option>
                      <option value="7">80-100</option>
                    </select>
                </div>
                <br>
                <br>
                <div class="inputfield">
                  <label>Subject 6</label>
                  <div class="custom_select">
                    <select name="subj6" required>
                      <option value="">Select</option>
                      <option value="accounting">Accounting</option>
                      <option value="afrikaans">Afrikaans FAL</option>
                      <option value="afrikaans">Afrikaans HL</option>
                      <option value="agricSc">Agricultural Science</option>
                      <option value="businessS">Business Studies</option>
                      <option value="consumerS">Consumer Studies</option>
                      <option value="dramaticA">Dramatic Arts</option>
                      <option value="economics">Economics</option>
                      <option value="engGA">Engineering graphics and design</option>
                      <option value="english">English HL</option>
                      <option value="english">English FAL</option>
                      <option value="geograpgy">Geography</option>
                      <option value="history">History</option>
                      <option value="it">Information Technology</option>
                      <option value="ndebele">IsiNdebele HL</option>
                      <option value="xhosa">IsiXhosa HL</option>
                      <option value="zulu">IsiZulu HL</option>
                      <option value="swati">IsiSwati HL</option>
                     <option value="LO">Life Orientation</option>
                      <option value="lifeSc">Life Sciences</option>
                      <option value="maths">Mathematics</option>
                      <option value="mathsLit">Mathematics Literacy</option>
                      <option value="music">Music</option>
                      <option value="physicalSc">Physical Sciences</option>
                      <option value="religion">Religion Studies</option>
                      <option value="sepedi">Sepedi HL</option>
                      <option value="sesotho">Sesotho HL</option>
                      <option value="setswana">Setswana HL</option>
                      <option value="venda">Tshivenda</option>
                      <option value="vArts">Visual Arts</option>
                      <option value="tsonga">Xitsonga HL</option>
                    </select>
                  </div>
                  
               </div>
                <div class="custom_select">
                    <label id="score">Score</label>
                    <select name="subj6M" required>
                      <option value="">Select</option>
                      <option value="1">0-29</option>
                      <option value="2">30-39</option>
                      <option value="3">40-49</option>
                      <option value="4">50-59</option>
                      <option value="5">60-69</option>
                      <option value="6">70-79</option>
                      <option value="7">80-100</option>
                    </select>
                </div>
                <br>
                <br>
                <div class="inputfield">
                  <label>Subject 7</label>
                  <div class="custom_select">
                    <select name="subj7" required>
                      <option value="">Select</option>
                      <option value="accounting">Accounting</option>
                      <option value="afrikaans">Afrikaans FAL</option>
                      <option value="afrikaans">Afrikaans HL</option>
                      <option value="agricSc">Agricultural Science</option>
                      <option value="businessS">Business Studies</option>
                      <option value="consumerS">Consumer Studies</option>
                      <option value="dramaticA">Dramatic Arts</option>
                      <option value="economics">Economics</option>
                      <option value="engGA">Engineering graphics and design</option>
                      <option value="english">English HL</option>
                      <option value="english">English FAL</option>
                      <option value="geograpgy">Geography</option>
                      <option value="history">History</option>
                      <option value="it">Information Technology</option>
                      <option value="ndebele">IsiNdebele HL</option>
                      <option value="swati">IsiSwati HL</option>
                     <option value="LO">Life Orientation</option>
                      <option value="xhosa">IsiXhosa HL</option>
                      <option value="zulu">IsiZulu HL</option>
                      <option value="lifeSc">Life Sciences</option>
                      <option value="maths">Mathematics</option>
                      <option value="mathsLit">Mathematics Literacy</option>
                      <option value="music">Music</option>
                      <option value="physicalSc">Physical Sciences</option>
                      <option value="religion">Religion Studies</option>
                      <option value="sepedi">Sepedi HL</option>
                      <option value="sesotho">Sesotho HL</option>
                      <option value="setswana">Setswana HL</option>
                      <option value="venda">Tshivenda</option>
                      <option value="vArts">Visual Arts</option>
                      <option value="tsonga">Xitsonga HL</option>
                    </select>
                  </div>
                  
               </div>
                <div class="custom_select">
                    <label id="score">Score</label>
                    <select name="subj7M" required>
                      <option value="">Select</option>
                      <option value="1">0-29</option>
                      <option value="2">30-39</option>
                      <option value="3">40-49</option>
                      <option value="4">50-59</option>
                      <option value="5">60-69</option>
                      <option value="6">70-79</option>
                      <option value="7">80-100</option>
                    </select>
                </div>
                <br>
                <br>
              <div class="inputfield">
                <input type="submit" value="Next" class="btn">
              </div>
            </div>
        </form>
            <br>
        <div class="inputfield">
            <button href="next_of_kin.jsp" class="btn">Back</button>
        </div>
    </div>	
    </body>
</html>
