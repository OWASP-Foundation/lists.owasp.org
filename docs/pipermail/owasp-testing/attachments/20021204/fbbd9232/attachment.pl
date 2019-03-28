Excellent. Welcome aboard Jeremy !

---- David Endler <DEndler@iDefense.com> wrote:
> Kartik,
> 
> This is a good start, but still the slant and style is more appropriate for
> the Requirements Guide.  What we're looking for is a more methodical
> approach for how to check for XSS, not necessarily how to protect against
> it.  I've asked Jeremy Poteet, another late joiner, to take a stab at the
> XSS section and also provide his feedback.  Jeremy was actually the only
> winner of the latest eweek OpenHack contest and discovered an XSS attack in
> the system.  http://www.eweek.com/article2/0,3959,741368,00.asp . Welcome
> Jeremy.
> 
> -dave
> 
> > -----Original Message-----
> > From: owasp-testing-admin@lists.sourceforge.net
> > [mailto:owasp-testing-admin@lists.sourceforge.net]On Behalf Of Kartik
> > Trivedi
> > Sent: Wednesday, December 04, 2002 1:21 PM
> > To: Mark Curphey; owasp-testing@lists.sourceforge.net
> > Subject: Re: [OWASP-TESTING] Notes on Testing
> > 
> > 
> > Hi Mark,
> > 
> > The guide is shaping out great....
> > Sorry for the lack of participation...was a bit busy....But I 
> > will make up
> > for it ;)
> > 
> > Attached is a small section on xss. Let me know what you think.
> > 
> > Thanks
> > Kartik
> > 
> > 
> > 
> > ----- Original Message -----
> > From: "Mark Curphey" <mark@curphey.com>
> > To: <owasp-testing@lists.sourceforge.net>
> > Sent: Tuesday, December 03, 2002 11:21 PM
> > Subject: [OWASP-TESTING] Notes on Testing
> > 
> > 
> > > Crew,
> > >
> > > Its late I am tired and so I haven't made this polite or politically
> > > correct. Pls forgive me before reading. Nothing is personal.
> > >
> > > I will re-write into and what are web applications 
> > sections. I have to
> > > do this for the Guide anyways.
> > >
> > > Page 15 - Pretty diagram but not sure what it is trying to show ?
> > >
> > > Page 16 / 66 - I think planning of each phase of a test 
> > occurs, its not
> > > a discrete task. You plan the architecture assessment as well as an
> > > implementation review.
> > >
> > > I strongly (STRONGLY) think that there are discrete Requirements,
> > > Architecture (design), Implementation and Management 
> > Reviews. There may
> > > even be more phases we wish to call out.
> > >
> > > Section 5 should be removed for the same reasons as section 1
> > >
> > > Planning a test - maybe this section should be replaced 
> > with an overview
> > > about testing, planning, organizing etc
> > >
> > > white box, black box, static whitebox....urgh i hate those 
> > terms. If we
> > > are going to use them then we need to really clearly define 
> > them in a
> > > glossary so we are all on the same page as to exactly what 
> > they mean. I
> > > hate them ;-)
> > >
> > > Based on above comments the requirements review and architecture
> > > analysis doesn't exist
> > >
> > > Page 17 / 66 - agree with Nicks comments earlier. I think 
> > this is like
> > > 25% at most of a good assessment methodology. Its the after the fact
> > > tactical testing.
> > >
> > > 23 / 66 - obtaining source code - this should be the norm not the ab
> > > norm. It says in large tests. I don't think thats true. It 
> > also says in
> > > addition to pen tests. It should read as part of the 
> > testing life cycle
> > > including requirements, management etc
> > >
> > > 24 / 66 - this is a UML sequence diagram and we should use well
> > > understood language and syntax I think
> > >
> > > 25 / 66 - Infr review - I was thinking this would include more stuff
> > > like if the app uses getHostByName() and not GetHostbyIP() 
> > or doesn't
> > > synchronize tie clocks making timing attacks possible
> > >
> > > 26 / 66 - everyone should have dev, qa, pre-prod and prod. I would
> > > strongly argue that most testing is well before prod. Real 
> > data should
> > > never (NEVER) be used in testing. This section IMHO needs a 
> > big rewrite.
> > > This is all good and well for momandpops.php but....
> > >
> > > 27 - 66 - decompilers ? This is testing not hacking ;-) I think this
> > > section should explain how browser proxies work, how 
> > automated scanners
> > > are combos of automated http_user agents and fuzzers etc. 
> > It needs to
> > > outline source code analyzers. There are technical tools 
> > and checklist
> > > tools for the management reviews as well.
> > >
> > > DCMA - should be moved into an overview section if not 
> > removed. DCMA is
> > > about reverse engineering stuff, not examining stuff with permission
> > > unless I am missing the point
> > >
> > > 33 / 66 - webdav is an http extension and not an httpd extension.
> > > Options will return that baby ;-)
> > >
> > > SSL - again this is stuff an arch review and implementation / code
> > > review combined are best suited for. I am not sure I get 
> > the comments
> > > about making sure an entire page is SSL. You should make sure your
> > > applications transport matches your requirements but in 
> > many cases only
> > > sending data back may require a tunnel. This section should 
> > explain the
> > > SSL helo, how the cipher suites are determined and how you find
> > > algorithms supported and key lengths etc. Saying you should 
> > block old
> > > SSL (which I assume you mean 2) is interesting. Why ? Let the SSL
> > > negotiate the best it can do and allow your customers to 
> > make the choice
> > > with informed info.Summary, this section should show how to 
> > determine
> > > SSL version, cipher specs, and cert validity.And its all in the ssl
> > > headers and I can knock up a quick Java app if you want as 
> > a demo. JSSE
> > > is a king.
> > >
> > > SSL requirements by source code on each page ?
> > >
> > > And on that section its back to the code review / arch 
> > review / pen test
> > > thing. Looking at this from the outside is much harder than 
> > inspecting
> > > the code and arch. Have a good MVC model and you know one 
> > thing. Look at
> > > JSSE and you know another
> > >
> > > 33 /66 . old backup unreferenced files. This doesn't explain how to
> > > test. Too much guide type explanation. I think we should 
> > provide a list
> > > of extensions mapped to apps asa to asp for instance from 
> > FP, and then
> > > explain how from a crawled site and common file names you 
> > fuzz requests
> > > and look for an http 200 to come back.
> > >
> > > Less mature code - bit of a leap of faith isn't it ?
> > >
> > > This is only true if you build on same box as you deploy 
> > anyway which is
> > > a big no no IMHO. We cant just say the tools used to spider 
> > should check
> > > for this. Its a cop out ;-)
> > >
> > > 38 - logging 0- again as a general comment we should be 
> > driving people
> > > to testing against logging requirements or best practice. 
> > The logging
> > > section is a valid point but what about testing to make sure failed
> > > logins actual log, about malicious input creates an event etc
> > >
> > > OK only half way thru and probably offended 90% of people 
> > by now, but
> > > candid comments is the only way to go. If anyone finds this 
> > helpful I
> > > will do the rest, if not tell me or ignore.
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > > -------------------------------------------------------
> > > This SF.net email is sponsored by: Microsoft Visual Studio.NET
> > > comprehensive development tool, built to increase your
> > > productivity. Try a free online hosted session at:
> > > http://ads.sourceforge.net/cgi-bin/redirect.pl?micr0003en
> > > _______________________________________________
> > > owasp-testing mailing list
> > > owasp-testing@lists.sourceforge.net
> > > https://lists.sourceforge.net/lists/listinfo/owasp-testing
> > >
> > 
> 
> 
> -------------------------------------------------------
> This SF.net email is sponsored by: Microsoft Visual Studio.NET 
> comprehensive development tool, built to increase your 
> productivity. Try a free online hosted session at:
> http://ads.sourceforge.net/cgi-bin/redirect.pl?micr0003en
> _______________________________________________
> owasp-testing mailing list
> owasp-testing@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/owasp-testing
> 
> 


