Great ideas Bruce, i think that options 2&3 would be cool, we may have a couple of volunteers who can help you here in the coding. If there is anyone else who can help please get in contact.

We are looking to allocate work streams from the feature requests by the end of this week, if any of you would like to volunteer for any particular feature request please let us know. 
ta
bill

---- Bruce Mayhew <bruce.mayhew@aspectsecurity.com> wrote:
> Re: Displaying "cheat" data.
> 
> There are three mechanisms for allowing the user to view additional lesson
> information.
> 
> 1) Lesson Plans
>     - A dynamically loaded html file when the lesson plan button is pressed.
>     - The file name corresponds EXACTLY to the source name with a .html
>         extensions versus the .java extension.
> 
> 2) getInstructions()
>     - A protected method that can be overridden.  Any text returned will
>         be displayed on the lesson screen, above the lesson content,
>         below the navigation/control section.
> 
> 3) getHints()
>     - A list of hints that will return clues to the user, one at.a time.
> 
> If I were to implement a "cheat"  I might make the cheat the last option in
> hints or part of the lesson plan.  I don't believe we need to add another
> mechanism to display lesson data.
> 
> There are many ways to incorporate more data into the lessons.  We should be
> careful not to add additional complexity for flexibility that may never be
> used. Options 2 & 3 require the data to be coded in the source.  We could
> use property files for this, but once a lesson is created how often will
> this data change.
> 
> bruce.
> 
> [... original message deleted ...]
> 
> 
> 
> 


