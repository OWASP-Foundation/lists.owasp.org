This is great. Maybe one of the new devs (Maureen or Andrew if I recall)  could add the cheats to an additional button on each page or similar ?

WebGoat for dummies, good job I know you well Tim ;-)

---- "Jeff Williams @ Aspect" <jeff.williams@aspectsecurity.com> wrote:
> Tim,
> 
> Here's a very short cheat sheet.  I'm not sure now whether we should make this part of the distribution or not.  Thoughts?
>   1.. Http Basics -- use this one to demonstrate that HTTP is stateless, request-reply protocol. Click show parameters to show what's going with each request.
>   2.. Fail Open Authentication -- try removing the password parameter entirely using Achilles.  Or you can do it on the URL with (http://localhost:8080/WebGoat/attack?Username=jeff) -- when there's no password, an exception gets thrown and the authentication step gets skipped.
>   3.. HTML Clues -- view HTML and search for a comment with admin:adminpw -- use this to authenticate
>   4.. Parameter Injection -- show how shell calls can be used to run arbitrary code -- use the & character to chain commands on windows -- blah.txt & netstat -a & ipconfig
>   5.. Unchecked Email -- enter a message that contains linked offensive content -- Hi, check this out....<A href="http://www.google.com">Click here for Google"</A> and it looks like it came from the website.
>   6.. SQL Injection -- 101' or 1=1 to get the whole contents of the db
>   7.. Thread Safety -- this one's tricky -- use 'new window' to get two browsers.  Enter 'dave' in one window and 'jeff' in the other.  Then set it up so you click on the submit boxes as fast as possible.  If you do it fast enough, the application gets confused and returns the second clicked account to both browsers.  This is a massively underreported problem in many many web apps.
>   8.. Weak Authentication Cookie -- use achilles to add 'AuthCookie=ggfkggfk;' to the Cookie: header using Achilles. Note that the cookie is username:password (jeff:jeff) backwords and one-letter up.
>   9.. Database XSS -- enter <script language="javascript" type="text/javascript">alert("Ha Ha Ha");</script> in the message and then click on the name of the message below to show that anyone who reads the message is attacked
>   10.. Hidden Field Tampering -- there are a number of ways to edit a hidden field.  I like IEBooster, but you can use Achilles, or even try to modify it in the URL (e.g. http://localhost:8080/WebGoat/attack?Price=9.99).  Change the price of the TV from 4999.99 to 9.99.  
>   11.. Weak Access Control -- this page is supposed to let you access files in a certain directory.  But if you use ../topsecret.txt you can get other files.  Would be nice to enhance this with some url, hex, unicode encoding attacks.
>   12.. Challenge 1 -- the challenge is tricky.  To get past the first page, you have to remember how to turn on showing of the java code. Check the lesson plan link to find out that the lesson plan is called ChallengeScreen.html.  Then force browse to /WebGoat/src/lessons/ChallengeScreen.java.  Find the username and password (youaretheweakestlink:goodbye).  Note: there is another option -- if you sniff the network, you'll see a UDP packet with the username and password in the clear.  Cool huh?
>   13.. Challenge 2 -- you'll need to modify the 's' hidden field to contain 101' or 1=1 (like the database lesson). Use Achilles or IEBooster.  This will give you all the passwords.
>   14.. Challenge 3 -- you'll need to know a bit about Server Side Includes here -- syntax is <!--#exec tag1="dir" -->  So you'll want to do something like <!--#exec tag1="echo defaced > [PATH]\index.html" -->.  This will overwrite the index.html with your content and win the challenge.
> --Jeff
> 
>        
>       Jeff Williams, CEO
>       jeff.williams@aspectsecurity.com
>       (410) 707-1487 (work)
>       (301) 604-4882 (main)
>       (208) 379-1165 (fax) 
>       Aspect Security, Inc.
>       "The Web Application Security Specialists"
>       9175 Guilford Road, Suite 300, Columbia MD 21046
>       www.aspectsecurity.com 
> 
> 
> 
> ----- Original Message ----- 
> From: Mark Curphey 
> To: Tim Smith 
> Cc: 'owasp-webgoat@lists.sourceforge.net' 
> Sent: Tuesday, November 26, 2002 9:09 PM
> Subject: Re: [OWASP-WEBGOAT]Cheat Sheet
> 
> 
> Thats a great idea Tim. I will wait for Jeff and Bruce to answer for now
> but also we can add that to the feature requests on the Sourceforge task
> manager. 
> 
> 
> 
> 
> On Tue, 2002-11-26 at 15:53, Tim Smith wrote:
> > Hi guys
> > can someone help me out with a cheat sheet for WebGoat. I understand the
> > philosophy behind using it as a training tool but am struggling with some of
> > the basics here :-)
> > Any help greatly appreciated - look on this as a trial user..
> -- 
> Mark Curphey <mark@curphey.com>
> 
> 
> 
> -------------------------------------------------------
> This SF.net email is sponsored by: Get the new Palm Tungsten T 
> handheld. Power & Color in a compact size! 
> http://ads.sourceforge.net/cgi-bin/redirect.pl?palm0002en
> _______________________________________________
> OWASP-WEBGOAT mailing list
> OWASP-WEBGOAT@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/owasp-webgoat


