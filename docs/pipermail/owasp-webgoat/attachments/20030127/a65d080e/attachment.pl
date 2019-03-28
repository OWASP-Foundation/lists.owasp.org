Hi Rogan

Great idea, Do you have time to code into a lesson for next release ? If you need a copy of user manual on creating lesson plans let us know, as Jeff said looks like u don't need it. (it should be on the site in a few days) :-)...

b

---- "Jeff Williams @ Aspect" <jeff.williams@aspectsecurity.com> wrote:
> Rogan,
> 
> Thanks for the great thoughts. There are two ways to solve the challenge.
> The first, as you discovered, is to run a sniffer to obtain the password.
> This is a holdover from a course I used to teach that included how to
> sniff a network.  I recommend running a sniffer during a penetration test
> to capture all the traffic with the target domain and to see if the admins
> detect the attack and attempt to attack back.
> 
> But for WebGoat, a more appropriate lesson is the second way to solve it.
> You have to get the source code for the ChallengeLesson, which it sounds
> like you've done. To do it, you have to be able to find the naming
> convention and guess the name of the source code file.  Then you can just
> look in it for the password.
> 
> I like some of the lessons you've proposed below and I'd definitely like
> to get them included in a version of WebGoat.
> 
> Thanks!
> 
> --Jeff
> 
> 
> Jeff Williams, CEO
> Aspect Security, Inc.
> "The Web Application Security Specialists"
> www.aspectsecurity.com
> 
> 
> 
> ----- Original Message -----
> From: Dawes, Rogan (ZA - Johannesburg)
> To: owasp-webgoat@lists.sourceforge.net
> Sent: Friday, January 24, 2003 7:40 AM
> Subject: [OWASP-WEBGOAT]Authentication scheme for part one of the
> challenge
> 
> 
> Hi folks,
> 
> What lesson are we trying to teach in part one of the challenge? Is the
> intention to encourage people to run a sniffer at all times when they are
> reviewing a web app, just in case the target decides to send them the
> password out of the blue?
> 
> My suggestion would be for the challenge to go something like:
> 
> Tell the user:
> 
> "This is a banking site. You log in using your credit card number, and a 4
> digit PIN. The card BIN number is 1234, and the number complies with the
> sum
> of sums checksum algorithm. Once logged in, you can use your linked credit
> cards to purchase items."
> 
> We then allow the user to enter 5 or so numbers (that match the checksum),
> and give them "That account does not exist" or "Invalid card number" if
> the
> check sum doesn't calculate. Then, once they have seen that the message is
> indicative of the error, we define one of the numbers that they enter (a
> new
> number) to exist, and give it a fairly simple password (1111, or 0000, or
> something fairly close to the start of the range, to limit the time taken
> to
> brute force it), and return an error message for that account that the PIN
> is incorrect. That should then encourage the tester to concentrate on that
> account (he knows it exists), and attack the PIN instead. (Alternatively,
> use SQL injection to log in without the PIN. I like the idea of a bit of
> brute force, though. SQL injection can be overused :-)
> 
> The next stage could present a shopping page, where the user has to modify
> the price of the items that they purchase, by uncommenting a field in the
> form containing the price. (The original site sent the price to the user,
> but they got wise to that, and disabled that field. However, one can still
> submit the field, and it will be used. The commented out < INPUT > tag
> provides a clue to the user what field to submit)
> 
> The next stage could be to purchase something on someone else's credit
> card,
> by modifying the userid (101) to return credit card numbers from someone
> elses account.
> 
> Alternatively, use an XSS attack to snarf another user's sessionid, and
> use
> that session to buy something for yourself.
> 
> We could allow the user to send a message to the victim, and "open" it
> with
> a different thread, creating a new session/sessionid that should get sent
> to
> the attacker's own web server. That might require that we interpret the
> script injected, though. (I am trying to not give the user too much to do
> that they wouldn't normally. I.e. don't tell them the other user's account
> details and let them log in that way. Rather simulate the other user to
> the
> best of our ability.)
> 
> Next stage would be to dump all the credit card numbers to the screen, by
> building a suitably complex SQL injection. Make sure to show the user the
> list of credit card numbers when you tell them that they have succeeded.
> (I
> found it funny that the stage ended without me seeing the results!)
> 
> Final stage to hack the landing page is good. I like the SSI approach.
> This
> could be done in the same way as the XSS injection, with the user sending
> themselves a message.
> 
> The reason I laid it out like this is that it frames the challenge in
> terms
> that a user would understand. It is possible that I am giving too many
> hints, but that can be tweaked, if necessary.
> 
> Thoughts?
> 
> Rogan
> --
> In God we Trust -- all others must submit an X.509 certificate.
>      -- Charles Forsythe <forsythe@alum.mit.edu>
> --
> Deloitte & Touche Security Services Group
> Tel: +27(11)806-6216     Fax: +27(11)806-5202     Cell: +27(82)784-9498
> --
> NOTE: This e-mail message and its attachments are subject to the
> disclaimers
>       as published at: http://www.deloitte.co.za/disc.htm#emaildisc
> 
> 
> 
> -------------------------------------------------------
> This SF.NET email is sponsored by:
> SourceForge Enterprise Edition + IBM + LinuxWorld = Something 2 See!
> http://www.vasoftware.com
> _______________________________________________
> OWASP-WEBGOAT mailing list
> OWASP-WEBGOAT@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/owasp-webgoat
> 
> 
> 
> -------------------------------------------------------
> This SF.NET email is sponsored by:
> SourceForge Enterprise Edition + IBM + LinuxWorld = Something 2 See!
> http://www.vasoftware.com
> _______________________________________________
> OWASP-WEBGOAT mailing list
> OWASP-WEBGOAT@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/owasp-webgoat
> 
> 


