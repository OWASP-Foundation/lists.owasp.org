Glyn

This seems like a great logical approach thats well thought out. Well done. I guess the presentation layer and app server configs are really hard to test although it maybe possible to deploy a specific configured version of Tomcat with the WebDav app deployed etc...maybe 3.0 ;-)

Are you suggesting adding the more detailled lessons to the HTML lesson plans and updating the main jsp with the overview, where to get tools etc ? If so this seems like manageable work that anyone can do by edting the HTML and main JSP in CVS. The additional lessons etc I guess could be done after release 2.0.

PS Open Proxy (a Java proxy thats part of Scarab) will be out before this gets released so we can reference it as the main tool if thats OK. Fits with the GPL, Open Source Java theme ;-)

PS I am CC'ing the WebGoat list so they dont feel left out ;-)

---- Glyn <glyng@bigfoot.com> wrote:
> Okay guys,
> 
> Here's a quick first draft.  Please comment & criticise wildly.
> 
> Cheers,
> G
> 
> PS.  If .doc is no good, let me know.
> 
> > -----Original Message-----
> > From: Mark Curphey [mailto:mark@curphey.com] 
> > Sent: 16 December 2002 15:27
> > To: Glyn
> > Cc: 'bill'; ''Jeff "Williams @ Aspect'"'
> > Subject: RE: WebGoat
> > 
> > 
> > No tangents ;-)
> > 
> > In the past one of the challenges we faced and spent a lot of 
> > wasted time on was people doing great work but work that 
> > wasn't necessarily in sync with everyone else ....to solve 
> > this we implemented the PM role who is basically a 
> > co-ordinator and owns the tasks allocation and project plan.  
> > makes sure everyone agree whats the best way forward, details 
> > tasks and allocates and tracks them etc
> > 
> > Sounds like great stuff though ! I am sure its as simple as 
> > Bill creating a sourceforge tasks here ;-)
> > 
> > On Mon, 2002-12-16 at 07:08, Glyn wrote:
> > > I chatted to Bill a couple of weeks back, and he felt this 
> > is the way 
> > > to go. He filled me in on the current high level plans - to bring 
> > > WebGoat and the OWASP testing guide closer together, and ultimately 
> > > for it to act as both a tutorial/training ground and a 
> > benchmarker for 
> > > app testing tools.
> > > 
> > > The framework doc I'm working on now is not intended to be 
> > definitive 
> > > or to set a path, rather to identify what we have, what we need to 
> > > draw WebGoat and the testing guide together and invite lesson ideas 
> > > and implementations.  Its partly so I can understand what's 
> > going on, 
> > > and get feedback from those who are already doing sterling work on 
> > > this.
> > > 
> > > Bill - if I've gone off on a tangent, give me a slap and 
> > I'll wander 
> > > back to the true path :)
> > > 
> > > G
> > > 
> > > 
> > > > -----Original Message-----
> > > > From: Mark Curphey [mailto:mark@curphey.com]
> > > > Sent: 16 December 2002 14:58
> > > > To: Glyn
> > > > Cc: 'Jeff "Williams @ Aspect'"; 'bill'
> > > > Subject: RE: WebGoat
> > > > 
> > > > 
> > > > Glyn
> > > > 
> > > > This is all stuff I thought Bill was planning to organize in
> > > > a project plan that was gong to be agreed by everyone in the 
> > > > project. I would suggest we get Bill to get the possible 
> > > > avenues of things to do, get everyone to agree its the right 
> > > > approach and then figure out who can do what ? Seem sensible ?
> > > > 
> > > > On Mon, 2002-12-16 at 06:23, Glyn wrote:
> > > > > Hi Jeff,
> > > > >  
> > > > > I'm attacking this at a higher level - doing the donkey 
> > (or goat!)
> > > > > work on documenting the app assessment process and how it 
> > > > relates to
> > > > > the lessons in WebGoat.  I've not been an active coder 
> > for a while
> > > > > now, so that's not the best use of my skill set.
> > > > >  
> > > > > First phase is to plot what lessons are required.  Do you
> > > > have a plan
> > > > > detailing the lessons that are in place, those being 
> > developed and
> > > > > those planned?
> > > > >  
> > > > > I'm currently churning out a high-level document to
> > > > introduce the app
> > > > > assessment concept as it relates to WebGoat, and a 
> > basic outline 
> > > > > of
> > > > > topics.
> > > > >  
> > > > > If I can integrate what you've got with that, we can thrash
> > > > out a plan
> > > > > for what lessons are missing/required and hopefully get
> > > > those out to
> > > > > coders.  Sound ok?
> > > > >  
> > > > > Glyn.
> > > > > 
> > > > > -----Original Message-----
> > > > > From: Jeff Williams @ Aspect
> > > > [mailto:jeff.williams@aspectsecurity.com]
> > > > > Sent: 16 December 2002 14:16
> > > > > To: Glyn
> > > > > Cc: 'bill'; mark@curphey.com
> > > > > Subject: Re: WebGoat
> > > > > 
> > > > > 
> > > > > Hi Glyn,
> > > > >  
> > > > > Here are some quick instructions on how to create a new
> > > > lesson. There
> > > > > is a mechanism already in WebGoat for creating categories
> > > > of lessons
> > > > > -- we're just not using it yet.  You'll see it in the
> > > > lesson API.  I
> > > > > also attached a half-done lesson I'm working on that 
> > demonstrates
> > > > > various types of encoding and encryption.  Still need to 
> > > > implement a
> > > > > few encoding types.
> > > > >  
> > > > > --Jeff
> > > > >  
> > > > > 			
> > > > >  
> > > > > Jeff Williams, CEO
> > > > > jeff.williams@aspectsecurity.com
> > > > > (410) 707-1487 (work)
> > > > > (301) 604-4882 (main)
> > > > > (208) 379-1165 (fax)
> > > > >  
> > > > > Aspect Security, Inc.
> > > > > "The Web Application Security Specialists"
> > > > > 9175 Guilford Road, Suite 300, Columbia MD 21046
> > > > > www.aspectsecurity.com
> > > > >  
> > > > >  
> > > > > ----- Original Message -----
> > > > > From: Glyn <mailto:glyng@bigfoot.com>
> > > > > To: Jeff Williams @ Aspect 
> > > > <mailto:jeff.williams@aspectsecurity.com>
> > > > > Cc: 'bill'
> > > > <mailto:bill@owasp.org>  ; mark@curphey.com
> > > > > Sent: Monday, December 16, 2002 6:48 AM
> > > > > Subject: WebGoat
> > > > > 
> > > > > Hi Jeff,
> > > > > 
> > > > > I've been chatting with Bill and Mark about my involvement
> > > > with OWASP,
> > > > > and they've settled on having me help update and structure
> > > > the lessons
> > > > > and documentation for the Goat.
> > > > > 
> > > > > I'm thinking of following the existing WebGoat ideas by
> > > > structuring a
> > > > > number of high-level topics (e.g. input validation, code 
> > > > > insertion)
> > > > > with sub-categories below (e.g. XSS types, SQL insertion).  
> > > > The idea
> > > > > would be to develop users from simple form manipulation 
> > though to
> > > > > using encoding or complex script techniques to bypass 
> > server side 
> > > > > checks.
> > > > > 
> > > > > Obviously this all relies heavily on where you guys are 
> > taking the
> > > > > code
> > > > > - what lessons you have in place, where you see it 
> > > > developing etc.  I'd
> > > > > like to catch up with you and chat about the current status
> > > > of WebGoat
> > > > > and how best to proceed.
> > > > > 
> > > > > Look forward to hearing from you soon,
> > > > > Glyn.
> > > > > 
> > > > > 
> > > > 
> > > > 
> > > 
> > > 
> > 
> > 
> 


