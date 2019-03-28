Agreed Ivan. I think the langauge was too strong but I do believe testing should only be down with real data if you cant't create "real like" data or non-real data would have an impact on the actual results. I guess the message we need to get across is that if you were testing a bank for instance, a restricted account that wouldn't execute money transfers should be highly desireable rather than an account with a zero balance. If the app relies on an SSN, than a nine digit number that the app can parse as acceptable is better than the testers SSN etc

On the second point I think we are both on the same page actually. Compilers / decompilers (SoftIce and the like) are of course great tools for that specific testing. I wanted to make sure we don't get stuck down that black box no priviledged road as being the only way to do testing, but explain how it is one way. Your comments around when thats appropriate are a great explanation of that. The testing tools IMHO should explain how proxies work (ie intercet data stream and modifify in the fly), how decompilers work etc This will give the readers an indea of the breadth of the tools available to them and which ones are appropriate for specific types of testing or in certain circumstances like you describe.

---- =?iso-8859-1?Q?Iv=E1n_Arce?= <iarce@core-sdi.com> wrote:
> 
> 
> > -----Original Message-----
> > From: owasp-testing-admin@lists.sourceforge.net
> > [mailto:owasp-testing-admin@lists.sourceforge.net]On Behalf Of Mark
> > Curphey
> > Sent: Wednesday, December 04, 2002 4:22 AM
> > To: owasp-testing@lists.sourceforge.net
> > Subject: [OWASP-TESTING] Notes on Testing
> > 
> > 
> > 26 / 66 - everyone should have dev, qa, pre-prod and prod. I would
> > strongly argue that most testing is well before prod. Real data should
> > never (NEVER) be used in testing. This section IMHO needs a big rewrite.
> > This is all good and well for momandpops.php but....
> 
> I fail to understand the rationale for such strong statement, sometimes
> it is not even possible to avoid tests with real data (as in an external
> black-box pentest against the web app. in its production environment)
> 
> > 
> > 27 - 66 - decompilers ? This is testing not hacking ;-) I think this
> > section should explain how browser proxies work, how automated scanners
> > are combos of automated http_user agents and fuzzers etc. It needs to
> > outline source code analyzers. There are technical tools and checklist
> > tools for the management reviews as well. 
> > 
> 
> The compilers are infact useful, sometimes VERY usefull.
> Your initial comments are very valid if you approach the web app. testing
> problem from the perspective of a comprehensive security assessment across
> the entire lifecycle of the application, but that is not the only approach 
> and what is appropiate largely depends on the objective of the test
> and the acceptable cost of performing it. 
> In the case of the above comment, if the test is time constrained, with
> no access to source code or to the dev. team and no documentation other
> than the 'user's guide' and the webapp uses client-side components you
> most likely will NEED decompilers and debuggers to do a decent assesment.
> 
> cheers,
> 
> -ivan
> 
> ---
> Perscriptio in manibus tabellariorum est
> Noli me vocare, ego te vocabo
> 
> Ivan Arce
> CTO
> CORE SECURITY TECHNOLOGIES
> 
> 44 Wall Street - New York, NY 10005
> Ph: (212) 461-2345
> Fax: (212) 461-2346
> http://www.corest.com
> 
> PGP Fingerprint: C7A8 ED85 8D7B 9ADC 6836  B25D 207B E78E 2AD1 F65A
> 
> 
> 
> 
> -------------------------------------------------------
> This sf.net email is sponsored by:ThinkGeek
> Welcome to geek heaven.
> http://thinkgeek.com/sf
> _______________________________________________
> owasp-testing mailing list
> owasp-testing@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/owasp-testing
> 
> 


