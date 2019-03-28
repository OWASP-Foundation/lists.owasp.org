Smart ass comments inline ;-)

---- Glyn <glyng@moiler.com> wrote:
> Absolutely - the nature of consultancy is that you're buying a person's
> skills for a period of time, and better be damn sure they have the skills to
> sell.  But I think that relates as much to a code review as app testing.
> 
> If we consider that Risk is a product of both the impact of the issue and
> its exposure, then the data interfaces and particularly the user facing ones
> are most likely to present the highest risks.

Smart Ass : Back to Threat modeling! Yipee ! Good point.
> 
> We've found that while a code review will identify most of the problems
> within an app, it can be a time-intensive (and therefore costly) process,
> and a lot of effort may be focussed on areas that aren't really exposing the
> application to attack.  Analogies can be drawn with infrastructure
> pen-testing - you should be looking for all the problems, but a phased
> approach to find the critically exposed ones is at least a start point.
> 
Smart Ass : To play devils advocate for a while I used to think the same. But it was a factor of the skills I had in my team. Many OWASP'ers and particulary webappsec'rs are or have been pen testers and not coders. We used to have people doing app testing at a previous compnay in Atlanta that werent developers and so there was a slower ramp up and so on. I think Jeff Williams did some stats on speed of finding bugs by code review and pen testing. Jeff are those available ?

> Equally, with app testing it is easy to miss serious problems that might not
> be immediately visible from the 'outside' that would be picked up in a code
> review.
> 
> I think both are highly valuable - app testing allows the highest exposed
> problem areas to be found and access to the source code allows a thorough
> analysis.

Smart ass : I agree with caveats. That is I think we need to take the high ground and tell people that if you want to find low hanging fruit then pen testing may help in development but we need to phrase it in a similar way ie low hanging fruit. Sanctums Crap Scan DE is a great example of how bad finding bugs using pen testing in development can be for example (although thats a factor of bad tool and technique IMHO). Its not intuitive for developers who are used to working in code, may not have a deployed app and are used to writing unit tests / code coverage. 

> 
> Obviously I'm coming from an external consultants perspective and getting
> the right ROI balance is essential.  We tend to impart code-review knowledge
> to the client through workshops with the developers, review their own
> security reviews and supplement that with app-security testing and targeted
> code review.

>Smart ass: I hear you. Its also hard when we all know how much money consultants are making doing web app pen tests. But I think one thing OWASP has been able to do is to take the high ground irrespective or our own circumstances and root to the truth and help push the market towards doing the best thing. This is def true of helping people understand how bad scanners are with WebGoat for instance!
> 
> I think we should take our usual approach of describing both methods with
> their respective pros and cons, and let the reader decide.  With unlimited
> budget and resource, the whole plan can be followed.  With reduced resource
> an educated decision can be made about which parts of the guide to embrace.
> 
Smart Ass; This seems very sensible and a great approach (as always from you IMHO) I do think though we need to be strongly biased towards code review in development and strongly biased towards pen testing for implementation / deployment. What do you think ?

> These kinds of debates have raged through all my and your time as a
> Consultants & are likely to carry on a while, I think!

Smart Ass : Agree 100%.

> 
> G
> 
> > -----Original Message-----
> > From: Mark Curphey [mailto:mark@curphey.com] 
> > Sent: 29 February 2004 23:28
> > To: Glyn; 'Mark Curphey'; owasp-testing@lists.sourceforge.net
> > Subject: RE: [OWASP-TESTING] OWASP Testing Project V1.0 - 
> > Chapter 3 - The Testing Framework Explained.doc
> > 
> > My 2 cents (having ran pen testing teams on and off for the 
> > last 10 years)
> > 
> > Pen testing is a time trial at best and a dog and pony show 
> > of the individual testers skills at other times.  I view 
> > black box testing of an application as the Turing problem. 
> > The number of inputs is equal to the number of outputs and 
> > therefore its highly inefficient. Its like finding a needle 
> > in a haystack. Like I said just my opinion and I know not a 
> > popular one. I have just seen too many apps that one guy 
> > would have cleaned up over, but the tester who was assigned 
> > was not as skilled or missed a marker. I am not saying its 
> > useless, far from it but I am saying there are more effective 
> > techniques to test software security and if you can use them 
> > then you should. If you have the code then those techniques 
> > are available to you.
> > 
> > If you have the code (and the guide is aimed at developers 
> > not hackers) I think you should use that position to your 
> > advantage (maybe that should be a principle thinking about 
> > it). I can see where pen testing maybe appropriate to use 
> > during development if you dont have the code to a component 
> > (ie using biz objects or cognos or something). Maybe thats 
> > the way to approach it, describe that there can be a place 
> > for it and its under these conditions. What do think ?
> > 
> > I think its also worth reading Gary McGraws article on the 
> > difference between software and applications. This helped me 
> > get some clarity on a few things.
> > 
> > What do you think ?
> > 
> > http://www.cigital.com/papers/download/software-security-gem.pdf
> > 
> > 
> > ---- Glyn <glyng@moiler.com> wrote:
> > > Looks good.
> > > 
> > > I think there is a place for black-box testing alongside 
> > code reviews 
> > > during development too.
> > > 
> > > For example, this can include testing the data interfaces 
> > of discrete 
> > > application components as they are developed, analysing their 
> > > interaction and the traffic flow.
> > > 
> > > This ultimately leads on to deployment testing which is 
> > often focussed 
> > > more on the application's interaction with end users than 
> > interaction 
> > > within itself.
> > > 
> > > Our testing typically loops through the intended operation of the 
> > > app/component, its actual behaviour, and its impact on 
> > security as a whole.
> > > 
> > > Glyn.
> > > 
> > > > -----Original Message-----
> > > > From: owasp-testing-admin@lists.sourceforge.net
> > > > [mailto:owasp-testing-admin@lists.sourceforge.net] On 
> > Behalf Of Mark 
> > > > Curphey
> > > > Sent: 29 February 2004 01:32
> > > > To: owasp-testing@lists.sourceforge.net
> > > > Subject: [OWASP-TESTING] OWASP Testing Project V1.0 - Chapter
> > > > 3 - The Testing Framework Explained.doc
> > > > 
> > > > I was thinking of something like this for the Framework Chapter 
> > > > itself.
> > > > What do you think ?
> > > > 
> > > > Essentially presenting a generic SDLC and highlighting activities 
> > > > that could / should be carried out at each stage in the 
> > dev process.
> > > > 
> > > > Does this make sense?
> > > > 
> > > > If so I will fill in the text tonight....
> > > > 
> > > > Damn now its out that I am late as well ;-)  <<OWASP 
> > Testing Project 
> > > > V1.0 - Chapter 3 - The Testing Framework Explained.doc>>
> > > > 
> > > 
> > > 
> > > 
> > > -------------------------------------------------------
> > > SF.Net is sponsored by: Speed Start Your Linux Apps Now.
> > > Build and deploy apps & Web services for Linux with a free DVD 
> > > software kit from IBM. Click Now!
> > > http://ads.osdn.com/?ad_id=1356&alloc_id=3438&op=click
> > > _______________________________________________
> > > owasp-testing mailing list
> > > owasp-testing@lists.sourceforge.net
> > > https://lists.sourceforge.net/lists/listinfo/owasp-testing
> > > 
> > > 
> > 
> 
> 
> 
> -------------------------------------------------------
> SF.Net is sponsored by: Speed Start Your Linux Apps Now.
> Build and deploy apps & Web services for Linux with
> a free DVD software kit from IBM. Click Now!
> http://ads.osdn.com/?ad_id=1356&alloc_id=3438&op=click
> _______________________________________________
> owasp-testing mailing list
> owasp-testing@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/owasp-testing
> 
> 


