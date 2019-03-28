package lessons;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Cookie;
import org.apache.ecs.Element;
import org.apache.ecs.ElementContainer;
import org.apache.ecs.StringElement;
import org.apache.ecs.html.B;
import org.apache.ecs.html.Comment;
import org.apache.ecs.html.H1;
import org.apache.ecs.html.Input;
import org.apache.ecs.html.P;
import org.apache.ecs.html.TD;
import org.apache.ecs.html.TH;
import org.apache.ecs.html.TR;
import org.apache.ecs.html.Table;
import session.*;


/**
 *  Copyright (c) 2002 Free Software Foundation developed under the custody of the Open Web
 *  Application Security Project (http://www.owasp.org) This software package is published by OWASP
 *  under the GPL. You should read and accept the LICENSE before you use, modify and/or redistribute
 *  this software.
 *
 * @author     Rogan Dawes <a href="http://dawes.za.net/rogan">Rogan Dawes</a>
 * @created    March 30, 2005
 */
public class WeakSessionID extends LessonAdapter {
    /**
     *  Description of the Field
     */
    protected final static String SESSIONID = "WEAKID";
    
    /**
     *  Description of the Field
     */
    protected final static String PASSWORD = "Password";
    
    /**
     *  Description of the Field
     */
    protected final static String USERNAME = "Username";
    
    protected static List sessionList = new ArrayList();
    protected static long seq = Math.round(Math.random() * 10240) + 10000;
    protected static long lastTime = System.currentTimeMillis();
    
    /**
     *  Gets the credits attribute of the AbstractLesson object
     *
     * @return    The credits value
     */
    protected Element getCredits() {
        return new StringElement( "written by Rogan Dawes" );
    }
    
    protected String newCookie() {
        StringBuffer buff = new StringBuffer();
        long now = System.currentTimeMillis();
        seq ++;
        if (seq % 29 == 0) {
            String target = encode(seq++, lastTime + (now - lastTime)/2);
            sessionList.add(target);
            if (sessionList.size()>100)
                sessionList.remove(0);
        }
        lastTime = now;
        return encode(seq, now);
    }
    
    private String encode(long seq, long time) {
        return new String( Long.toString(seq) + "-" + Long.toString(time) );
    }
    
    /**
     *  Description of the Method
     *
     * @param  s  Description of the Parameter
     * @return    Description of the Return Value
     */
    protected Element createContent( WebSession s ) {
        try {
            String sessionid = getCookie( s );
            if ( sessionid != null && sessionList.indexOf(sessionid) > -1) {
                return makeSuccess( s );
            }
            else {
                return makeLogin( s );
            }
        }
        catch ( Exception e ) {
            s.setMessage( "Error generating " + this.getClass().getName() );
            e.printStackTrace();
        }
        
        return ( null );
    }
    
    
    /**
     *  Gets the category attribute of the WeakAuthenticationCookie object
     *
     * @return    The category value
     */
    public Category getCategory() {
        return AbstractLesson.A3;
    }
    
    
    /**
     *  Gets the cookie attribute of the CookieScreen object
     *
     * @param  s  Description of the Parameter
     * @return    The cookie value
     */
    protected String getCookie( WebSession s ) {
        Cookie[] cookies = s.getRequest().getCookies();
        
        for ( int i = 0; i < cookies.length; i++ ) {
            if ( cookies[i].getName().equalsIgnoreCase( SESSIONID ) ) {
                return ( cookies[i].getValue() );
            }
        }
        
        return ( null );
    }
    
    
    /**
     *  Gets the hints attribute of the CookieScreen object
     *
     * @return    The hints value
     */
    protected List getHints() {
        List hints = new ArrayList();
        hints.add( "The server skips authentication if you send the right cookie." );
        hints.add( "Is the cookie value predictable? Can you see gaps where someone else has acquired a cookie?" );
        hints.add( "Try harder, you brute!" );
        
        return hints;
    }
    
    
    /**
     *  Gets the instructions attribute of the WeakAuthenticationCookie object
     *
     * @return    The instructions value
     */
    protected String getInstructions(WebSession s) {
        String instructions = "Try to access an authenticated session belonging to someone else.";
        
        return ( instructions );
    }
    
    
    /**
     *  Gets the menuItem attribute of the CookieScreen object
     *
     * @return    The menuItem value
     */
    protected Element getMenuItem() {
        return makeMenuItem( "Predictable Session Identifier", WebSession.SCREEN, getScreenId() );
    }
    
    
    /**
     *  Gets the ranking attribute of the CookieScreen object
     *
     * @return    The ranking value
     */
    protected Integer getRanking() {
        return new Integer( 90 );
    }
    
    
    /**
     *  Gets the title attribute of the CookieScreen object
     *
     * @return    The title value
     */
    public String getTitle() {
        return ( "How to hijack a session" );
    }
    
    
    /**
     *  Description of the Method
     *
     * @param  s  Description of the Parameter
     * @return    Description of the Return Value
     */
    protected Element makeLogin( WebSession s ) {
        ElementContainer ec = new ElementContainer();
        
        String weakid = getCookie(s);
        
        if (weakid == null) {
            weakid = newCookie();
            Cookie cookie = new Cookie( SESSIONID, weakid );
            s.getResponse().addCookie(cookie);
        }
        
        ec.addElement( new H1().addElement( "Sign In " ));
        Table t = new Table().setCellSpacing( 0 ).setCellPadding( 2 ).setBorder( 0 ).setWidth("90%").setAlign("center");
        
        if ( s.isColor() ) {
            t.setBorder( 1 );
        }
        
        String username = null;
        String password = null;
        
        try {
            username = s.getParser().getStringParameter( USERNAME );
        } catch (ParameterNotFoundException pnfe) {}
        try {
            password = s.getParser().getStringParameter( PASSWORD );
        } catch (ParameterNotFoundException pnfe) {}
        
        if (username != null || password != null) {
            s.setMessage("Invalid username or password.");
        }
        
        TR tr = new TR();
        tr.addElement( new TH().addElement("Please sign in to your account.")
        .setColSpan(2).setAlign("left"));
        t.addElement( tr );
        
        tr = new TR();
        tr.addElement( new TD().addElement("*Required Fields").setWidth("20%"));
        t.addElement( tr );
        
        tr = new TR();
        tr.addElement( new TD().addElement("&nbsp;").setColSpan(2));
        t.addElement( tr );
        
        TR row1 = new TR();
        TR row2 = new TR();
        row1.addElement( new TD( new B( new StringElement( "*User Name: " ) ) ));
        row2.addElement( new TD( new B(new StringElement( "*Password: " ) ) ));
        
        Input input1 = new Input( Input.TEXT, USERNAME, "" );
        Input input2 = new Input( Input.PASSWORD, PASSWORD, "" );
        Input input3 = new Input( Input.HIDDEN, SESSIONID, weakid );
        row1.addElement( new TD( input1 ) );
        row2.addElement( new TD( input2 ) );
        t.addElement( row1 );
        t.addElement( row2 );
        t.addElement( input3 );
        
        Element b = ECSFactory.makeButton( "Login" );
        t.addElement( new TR( new TD( b ) ) );
        ec.addElement( t );
        
        return ( ec );
    }
    
    /**
     *  Description of the Method
     *
     * @param  s  Description of the Parameter
     * @return    Description of the Return Value
     */
    protected Element makeSuccess( WebSession s ) {
        
        getLessonTracker( s ).setCompleted( true );
        
        s.setMessage("Congratulations. You have successfully completed this lesson");
        
        return ( null );
    }
}

