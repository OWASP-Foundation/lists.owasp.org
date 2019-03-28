In case you missed it. 

----------
From: "Steven M. Christey" <coley@linus.mitre.org>
Date: Wed, 4 Dec 2002 19:47:51 -0500 (EST)
To: secprog@securityfocus.com
Subject: A "straw man" vulnerability auditing checklist


Dana Epp asked:

>Would anyone like to share the sort of materials that resulted from
>education in their workplace? Anyone interested in sharing generic
>security tests they may have developed? Guidelines for code audits and
>reviews (past Fagan-style type inspection)?

Most of my past code audits have been impromptu or accidental, or
focused on specific issues.  However, I recently started some auditing
that required a more comprehensive approach.  I created a checklist of
various vulnerability types, partially as a tie-in to my other work.
The checklist helped me, but it also quickly became daunting with all
the different problems I had to track!

Since I have not seen any explicit checklists such as this, I figured
I'd toss it out and let the moderator decide if it's useful or not ;-)

This list is quite incomplete, as reflected in the version number and
disclaimer.  I am well aware that this is not academic-caliber,
validated, peer-reviewed, reference-checking work; it's a small side
project that is somewhat outside the scope of my daily work.  But
hopefully some people will find it informative.

- Steve


================================================================
Vulnerability Auditing Checklist
================================================================
Version: 0.0000001

Disclaimer: This is a DRAFT document.  The list of categories is
incomplete.  In addition, some categories overlap, and some terms are
wholly invented or ill-defined.  It has not been compared with other
sources.  This document is being publicly posted to facilitate
discussion of code review/testing procedures.


General Unexpected or Malformed Input Problems
----------------------------------------------

1. Buffer Overflows

   1a. Boundary end violation ("classic overflow")

   1b. Boundary beginning violation

   1c. Array index modification

   1d. Length parameter manipulation

   1e. Off-by-one

   1f. Other length calculation error

2. Format strings

3. Syntax/grammar violation

  3a. "Empty" or blank input

  3b. Missing argument

  3c. Extra argument

  3d. Repeated argument

  3e. Missing/repeated/extra separator or delimiter

  3f. Wrong data type

  3g. Incomplete input

  3h. Missing/misplaced special characters (delimiters/etc.)

  3i. Unknown/unrecognizable argument/command/whatever

4. Special character mismanagement

  4a. Shell metacharacters

  4b. Delimiter between fields

  4c.  Delimiter between values

  4d.  Delimiter between records

  4e.  CRLF attacks (line delimiter)

  4f.  Section delimiter (e.g. CRLF between MIME headers and content)

  4g.  End-of-input delimiter (e.g. "." in mail message data)

  4h.  Input terminator

  4i.  Quoting character

  4j.  Escape/meta/control character

  4k.  General separator char

  4l.  Comment char

  4m.  Macro symbol or other char for substitution

  4n.  Variable name leader/terminator (e.g. "$" for env. variable)

  4o.  Wildcard or "completion" character


5. Dependent Field/Value Inconsistency (e.g.: a "length" field for a
   buffer does not reflect the actual length of the buffer; or, two
   fields have values that do not make sense when combined)

6. Null dereference



File/Directory Processing
-------------------------

7. Directory traversal

  7a. ../filename

  7b. /../filename

  7c. /absolute/pathname/here

  7d. /directory/../filename

  7e. directory/../../filename

  7f. ..\filename

  7g. \..\filename

  7h. \absolute\pathname\here

  7i. \directory\..\filename

  7j. directory\..\..\filename

  7k. C:driveletter

  7l. ...

  7m. ....

  7n. \\UNC\share\name\here


8. Link Following

  8a. UNIX symbolic link following

  8b. UNIX hard link

  8c. Windows .LNK

  8d. Windows hard link

9. Windows 8.3 filenames

10. "Virtual" files

   10a. Windows MS-DOS device names

   10b. Windows ::DATA alternate data stream

   10c. Apple ".DS_Store"


Process/Command Execution
-------------------------

11. Shell metacharacters

12. Malicious search path execution (search path can be modified by
    untrusted user to point to malicious program, e.g. UNIX PATH
    environment variable)

13. Program/command argument modification


Canonicalization Errors
-----------------------

14. Encodings

  14a. URL encoding

  14b. Unicode

15. Multiple separators or other characters

16. Case sensitivity

17. Validate-Before-Canonicalize (a program "validates" data before it
    is canonicalized)

18. Validate-Before-Cleanse (program "validates" data before it has
    been cleansed)


Leaks
-----

19. Information Leak

  19a. Sensitive memory not cleared after use

  19b. Sensitive memory not cleared due to compiler removal

  19c. Command-line arguments visible to other processes

  19d. Environment variables visible to other processes

  19e. State information leak due to inconsistent results (e.g. user
       name enumeration: valid username/wrong pass generates
       "incorrect password," but invalid username generates "incorrect
       user")

  19f. State information leak due to timing differences (e.g. a
       "successful" operation takes more time than an unsuccessful
       one)

  19g. Incomplete removal of temporary resources (e.g. files)

  19h. Application-controlled diagnostic or error messages

  19i. Uncontrolled, external diagnostic or error messages (e.g. the
       programming language leaks information on an error that happens
       in the application)

  19j. Design-intended or configuration-intended leak (information is
       intended for publication, but sensitive)

20. Resource leaks

   20a. UNIX file descriptor leak


Multiple Operation/Action Errors
--------------------------------

21. Duplicate operation

    21a. Double-free

    21b. Double-encoding / double-decoding

22. Improper handler deployment (dispatch error)

23. Inability to handle out-of-order actions (state machine
    violations)

24. Race Condition (non-file link)

    24a. Signal handler race condition

    24b. Other TOCTOU

25. Deadlock


Configuration Errors
--------------------

26. Permissions, ACLs, and ownership

   26a. Bad default or inherited permissions (read, write, execute)

   26b. Bad program-assigned permissions (read, write, execute)

   26c. Ownership of critical resource not verified

27. Default configuration enables insecure feature

    27a. Default password

    27b. Default, non-essential service or component

    27c. Network-based admin capability accessible to arbitrary hosts


Error Condition Identification/Management Errors
------------------------------------------------

28. Handler dispatch error

    28a. Improper handler deployment (the wrong "handler" is assigned
         to process an input, e.g. calling a servlet to reveal source
         code of a .JSP file, or automatically "determines" type even
         if contradictory to an explicitly specified type)

    28b. Missing handler (handler not available or implemented)

    28c. Dangerous handler not cleared/disabled during sensitive
         operations

29. Insufficient logging of security-critical events

30. Incomplete error detection (product does not properly detect or
    check for security-critical error conditions)


GUI Errors
----------

31. Insufficient user warning of "unsafe" actions

32. Interface inconsistency (the user interface, API, or GUI behaves
    inconsistently with what operations are actually performed on the
    system, e.g. checking a security option does nothing, or user
    tells interface "restrict ALL" and it says "restrict SOME")


Product Management Errors
-------------------------

33. Design limitations

   33a. Incomplete specification

   33b. Vague specification

   33c. Support (or lack of support) for security-relevant options

34. Distribution Error

    34a. Debugging code not omitted from production version

35. Patch Error

    35a. Regression error - introduces old vulnerability

    35b. Incomplete vulnerability fix

36. Documentation Error

   36a. Omission of security-critical information

   36b. Error/typo causes user to introduce a vulnerability or risk

37. Developer-introduced back door / Trojan Horse

38. Port Error

    A product is ported to a different environment (e.g. OS) and does
    not consider differences with the original environment - sometimes
    introducing vulnerabilities specific to the new environment

39. Interaction Error

    Two independent products work correctly and according to
    specification, but interact in ways that cause problems.



Technology-Specific Problems
----------------------------

This is probably missing a number of issues in web technologies.

40. Cross-site scripting (XSS)

41. Form field / parameter tampering

42. SQL injection

43. PHP-specific issues (PHP has "special" features without
    equivalents in other languages)

    43a. PHP remote file inclusion/execution

    43b. PHP untrusted external initialization of critical variables

44. Perl null character injection (technically an interaction
    vulnerability, but important to mention specifically)


Other Errors
------------

45. Initialization Error

    45a. Insecure default initialization (e.g. variables or
         permissions)

    45b. Untrusted/externally controlled initialization of trusted
         variables or values

    45c. Non-exit on failed initialization affecting security-critical
         resource (e.g. configuration file format error)

46. Resource exhaustion (memory, application-specific objects, general
    objects)

    46a. Memory leak

    46b. Other incomplete resource release (resource is not "released"
         for re-use or deletion, often as a result of an unusual
         error)

    46c. Asymmetric resource consumption ("untrusted" process can make
         "trusted process" consume more resources than it really needs
         to)

47. Numeric conversion errors

    47a. Integer Signedness Error

    47b. Integer overflow / underflow (value "resets" to maximum or
         minimum, often through incrementing values)

48. Authentication Error

49. Unnecesarily large privilege window (app runs at higher privileges
    longer than it "has to")

50. Capability operating at higher privilege than necessary without
    authentication

51. Infinite loop

52. Incomplete/missing security check for standardized
    algorithm/technique [e.g. the "Basic Constraints" browser cert
    issues]

53. Cryptographic error

    53a. Stores sensitive data in plaintext (passwords, credit cards,
         etc.)

    53b. Does not use peer-reviewed cryptographic algorithms

    53c. Does not perform all required cryptographic steps

54. Insufficient Randomness

    54a. Predictable system state (time, process ID, etc.)

    54b. Insufficiently large space of random values

    54c. Use of "known weak" randomness algorithms

55. Miscellaneous remote code injection (inputs are fed directly into
    an interpreted language which is dynamically evaluated; other
    "classes" such as SQL injection are covered elsewhere)





