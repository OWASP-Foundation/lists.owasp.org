I am pretty sure that unless you are added to the OWASP CVS ACL's privs, it tries to get a lock and you will get an error. 

Try anon pserver for check out. Or better still pull the jar from the dist through web cvs.

---- Andrew van der Stock <avanderstock@b-sec.com> wrote:
> No, ssh using my ajv account at sourceforge. This is via both Tortoise CVS
> and via the normal CVS client under NetBSD.
> 
> Andrew
> 
> -----Original Message-----
> From: Mark Curphey [mailto:mark@curphey.com] 
> Sent: Monday, 12 January 2004 10:15 AM
> To: Andrew van der Stock; 'Abe'
> Cc: owasp-webgoat@lists.sourceforge.net
> Subject: RE: [OWASP-WEBGOAT]Getting an error trying to do CVS sync
> 
> Are you using *anonymous* pserver ?
> 
> ---- Andrew van der Stock <avanderstock@b-sec.com> wrote:
> > I'm getting this as well. I reported this to Ray some time ago, but
> couldn't
> > move forward. Ray suggested we talk to the SF folks. I think that's the
> best
> > bet
> > 
> > Andrew
> > 
> > -----Original Message-----
> > From: owasp-webgoat-admin@lists.sourceforge.net
> > [mailto:owasp-webgoat-admin@lists.sourceforge.net] On Behalf Of Abe
> > Sent: Sunday, 11 January 2004 4:06 PM
> > To: owasp-webgoat@lists.sourceforge.net
> > Subject: [OWASP-WEBGOAT]Getting an error trying to do CVS sync
> > 
> > Hi,
> > 
> >     I was wondering if anyone else was getting this error:
> > 
> > cvs checkout -P webgoat (in directory D:\cvsLocalRoot)
> > ? webgoat/build
> > cvs server: Updating webgoat
> > cvs server: failed to create lock directory for `/cvsroot/owasp/webgoat'
> > (/cvsroot/owasp/webgoat/#cvs.lock): Permission denied
> > cvs server: failed to obtain dir lock in repository
> `/cvsroot/owasp/webgoat'
> > cvs [server aborted]: read lock failed - giving up
> > 
> > ***** CVS exited normally with code 1 *****
> > 
> > I also noticed that all files had ^M at the end of each line.
> > 
> > Does anyone know how I can fix these two problems.
> > 
> > Thanks,
> > Abraham
> > 
> > 
> > 
> > 
> > -------------------------------------------------------
> > This SF.net email is sponsored by: Perforce Software.
> > Perforce is the Fast Software Configuration Management System offering
> > advanced branching capabilities and atomic changes on 50+ platforms.
> > Free Eval! http://www.perforce.com/perforce/loadprog.html
> > _______________________________________________
> > OWASP-WEBGOAT mailing list
> > OWASP-WEBGOAT@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/owasp-webgoat
> > 
> > 
> > 
> > -------------------------------------------------------
> > This SF.net email is sponsored by: Perforce Software.
> > Perforce is the Fast Software Configuration Management System offering
> > advanced branching capabilities and atomic changes on 50+ platforms.
> > Free Eval! http://www.perforce.com/perforce/loadprog.html
> > _______________________________________________
> > OWASP-WEBGOAT mailing list
> > OWASP-WEBGOAT@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/owasp-webgoat
> > 
> > 
> 
> 
> 


