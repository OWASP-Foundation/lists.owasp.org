diff --git a/Owasp.CsrfGuard/src/org/owasp/csrfguard/CsrfGuardFilter.java b/Owasp.CsrfGuard/src/org/owasp/csrfguard/CsrfGuardFilter.java
index a4513c6..9f29488 100755
--- a/Owasp.CsrfGuard/src/org/owasp/csrfguard/CsrfGuardFilter.java
+++ b/Owasp.CsrfGuard/src/org/owasp/csrfguard/CsrfGuardFilter.java
@@ -79,8 +79,9 @@ public final class CsrfGuardFilter implements Filter {
                                        if(!location.startsWith("/")) {
                                                location = filterConfig.getServletContext().getContextPath() + "/" + location;
                                        }
-                                       
-                                       String tokenValue = csrfGuard.getTokenValue(httpRequest, location);
+                                       //remove any query parameters from the location
+                                       String locationUri = location.split("\\?", 2)[0];
+                                       String tokenValue = csrfGuard.getTokenValue(httpRequest, locationUri);
                                        redirectResponse.sendRedirect(location, csrfGuard.getTokenName(), tokenValue);
                                } else {
                                        csrfGuard.getLogger().log(String.format("CsrfGuard skipping redirect token injection for location %s", location));
