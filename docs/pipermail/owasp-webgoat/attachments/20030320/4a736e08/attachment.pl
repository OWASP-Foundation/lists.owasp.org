Hi All

Bruce has checked in some new lessons and created a new installer that can be retrieved from CVS.

What we need are volunteers to 

1) create lessons for each category identified in the owasp top ten vul in Web apps.

A1 Unvalidated Parameters
  
A2 Broken Access Control
 
A3 Broken Account and Session Management
 
A4 Cross-Site Scripting (XSS) Flaws
 
A5 Buffer Overflows
 
A6 Command Injection Flaws
 
A7 Error Handling Problems
 
A8 Insecure Use of Cryptography
 
A9 Remote Administration Flaws
 
A10 Web and Application Server Misconfiguration

Each lesson should include the following headings 

1) a complete scenerio,
2) description of fields that would be displayed,
3) what the goal is,
4) and the category the lesson falls into.

Bruce has included an example format for A1 - Unvalidated Parameters below 

Category: Unvalidated Parameters - Bypassing client side validation

Scenario: Web page contains order form ( final confirmation )
          Shipping to: David Kyong
                       12334 Isle of Sky
                       Montrose, MO 45355
                       United States
 
Type Item                        Price             Quantity     Total
      ---------------------------------------------------------------
Waffle Iron                     $17.99                 1        $17.99

     PURCHASE ( button )
 
 
User already  added 1 item at $17.99 to shopping cart.
Quantity, Total  are an input fields with JavaScript update of total .
User enters a different quantity and the total price is updated.
User changes total price and JavaScript validation gives warning and resets price.

Goal
Bypass client side validation of Quantity and Total Cost


2) Build the documented lessons.


The draft project plan is as follows;

Task ID      Description                             Milestone
1            Task allocated to Volunteers            23rd March
2            Draft - Documented Lesson plans         13th April
3            Finalised - Lesson plans                27th April
4            Release of lesson builds                24th May

Obviously will change in line with the number of volunteers we get :-)....

So a call to those of you on the list that can help us make this happen, have a look in what interests you and mail me with which lesson plans you can help with.

thanx

b


