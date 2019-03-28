My 2 cents (having ran pen testing teams on and off for the last 10 years)

Pen testing is a time trial at best and a dog and pony show of the individual testers skills at other times.  I view black box testing of an application as the Turing problem. The number of inputs is equal to the number of outputs and therefore its highly inefficient. Its like finding a needle in a haystack. Like I said just my opinion and I know not a popular one. I have just seen too many apps that one guy would have cleaned up over, but the tester who was assigned was not as skilled or missed a marker. I am not saying its useless, far from it but I am saying there are more effective techniques to test software security and if you can use them then you should. If you have the code then those techniques are available to you.

If you have the code (and the guide is aimed at developers not hackers) I think you should use that position to your advantage (maybe that should be a principle thinking about it). I can see where pen testing maybe appropriate to use during development if you dont have the code to a component (ie using biz objects or cognos or something). Maybe thats the way to approach it, describe that there can be a place for it and its under these conditions. What do think ?

I think its also worth reading Gary McGraws article on the difference between software and applications. This helped me get some clarity on a few things.

What do you think ?

http://www.cigital.com/papers/download/software-security-gem.pdf


---- Glyn <glyng@moiler.com> wrote:
> Looks good.
> 
> I think there is a place for black-box testing alongside code reviews during
> development too.
> 
> For example, this can include testing the data interfaces of discrete
> application components as they are developed, analysing their interaction
> and the traffic flow.  
> 
> This ultimately leads on to deployment testing which is often focussed more
> on the application's interaction with end users than interaction within
> itself.
> 
> Our testing typically loops through the intended operation of the
> app/component, its actual behaviour, and its impact on security as a whole.
> 
> Glyn.
> 
> > -----Original Message-----
> > From: owasp-testing-admin@lists.sourceforge.net 
> > [mailto:owasp-testing-admin@lists.sourceforge.net] On Behalf 
> > Of Mark Curphey
> > Sent: 29 February 2004 01:32
> > To: owasp-testing@lists.sourceforge.net
> > Subject: [OWASP-TESTING] OWASP Testing Project V1.0 - Chapter 
> > 3 - The Testing Framework Explained.doc
> > 
> > I was thinking of something like this for the Framework 
> > Chapter itself.
> > What do you think ?
> > 
> > Essentially presenting a generic SDLC and highlighting 
> > activities that could / should be carried out at each stage 
> > in the dev process. 
> > 
> > Does this make sense?
> > 
> > If so I will fill in the text tonight....
> > 
> > Damn now its out that I am late as well ;-)  <<OWASP Testing 
> > Project V1.0 - Chapter 3 - The Testing Framework Explained.doc>> 
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


