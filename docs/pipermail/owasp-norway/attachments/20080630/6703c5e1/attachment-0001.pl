# General
error.size.toolarge=The input was too large. The specified input was {0} bytes and the maximum is {1} bytes.
error.size.toolarge=For mye inndata. Den spesifiserte mengden inndata var {0} bytes og det maksimale er {1} bytes.
error.comment.removed=The comment field was filtered out for security reasons. The value of the comment field was <u>{0}</u>
error.comment.removed=Kommentarfeltet ble fjernet av sikkerhetsgrunner. Innholdet i kommentarfeltet var <u>{0}</u>

# Tag related
error.tag.notfound=The <b>{0}</b> tag has been filtered for security reasons. The contents of the tag will remain in place.
error.tag.notfound=Taggen <b>{0}</b> har blitt filtrert av sikkerhetsgrunner. Innholdet i taggen vil bli v�rende.
error.tag.removed=The <b>{0}</b> tag is not allowed for security reasons. This tag should not affect the display of the input.
error.tag.removed=Taggen <b>{0}</b> er ikke lovlig av sikkerhetsgrunner. Denne taggen skulle ikke p�virke visningen av inndataene. 
error.tag.filtered=The <b>{0}</b> tag has been filtered for security reasons. The contents of the tag will remain in place.
error.tag.filtered=Taggen <b>{0}</b> har blitt filtrert av sikkerhetsgrunner. Innholdet i taggen vil bli v�rende.
	
# Attribute related
error.attribute.notfound=The <b>{0}</b> tag contained an attribute that we could not process. The <b>{1}</b> attribute has been filtered out, but the tag is still in place.
error.attribute.notfound=Taggen <b>{0}</b> inneholdt et attributt som ikke kunne behandles. Attributtet <b>{1}</b> har blitt filtrert vekk men taggen er fremdeles p� plass.
error.attribute.invalid=The <b>{0}</b> tag contained an attribute that we could not process. The <b>{1}</b> attribute had a value of <u>\"{2}\"</u>. This value could not be accepted for security reasons. We have chosen to remove this attribute from the tag and leave everything else in place so that we could process the input.
error.attribute.invalid=Taggen <b>{0}</b> inneholdt et attributt som ikke kunne behandles. Attributtet <b>{1}</b> hadde verdien <u>\"{2}\"</u>. Denne verdien er ikke lovlig av sikkerhetsgrunner. Dette attributtet er fjernet fra taggen og alt annet er beholdt slik at inndataene kunne behandles.
error.attribute.invalid.filtered=The <b>{0}</b> tag contained an attribute that we could not process. The <b>{1}</b> attribute had a value of <u>\"{2}\"</u>. This value could not be accepted for security reasons. We have chosen to filter the <b>{0}</b> tag in order to continue processing the input.
error.attribute.invalid.filtered=Taggen <b>{0}</b> inneholdt et attributt som ikke kunne behandles. Attributtet <b>{1}</b> hadde verdien <u>\"{2}\"</u>. Denne verdien er ikke lovlig av sikkerhetsgrunner. Taggen <b>{0}</b> er blitt filtrert slik at inndataene kunne behandles.
error.attribute.invalid.removed=The <b>{0}</b> tag contained an attribute that we could not process. The <b>{1}</b> attribute had a value of <u>\"{2}\"</u>. This value could not be accepted for security reasons. We have chosen to remove the entire <b>{0}</b> tag in order to continue processing the input.
error.attribute.invalid.removed=Taggen <b>{0}</b> inneholdt et attributt som ikke kunne behandles. Attributtet <b>{1}</b> hadde verdien <u>\"{2}\"</u>. Denne verdien er ikke lovlig av sikkerhetsgrunner. Hele taggen <b>{0}</b> er blitt fjernet slik at inndataene fortsatt kunne behandles.
	
# CSS related
error.css.import.disabled=Importing of stylesheets has not been enabled.
error.css.import.disabled=Import av stilark er ikke sl�tt p�.
error.css.import.exceeded=The stylesheet located at <b>{0}</b> exceeds the total allowed number of stylesheets to be imported and was not retrieved. The maximum number of imported stylesheets is limited to {1} stylesheets.
error.css.import.exceeded=Stilarket som befinner seg p� <b>{0}</b> g�r ut over det maksimale antallet stilark som kan importeres og ble ikke hentet. Antallet importerte stilark er begrenset til {1}.
error.css.import.failure=The remote stylesheet found within the input, located at <b>{0}</b>, that could not be retrieved. The site may be down or at an unaccessible host. This may not affect the format of the input.
error.css.import.failure=Stilarket som er spesifisert i inndata og som befinner seg p� <b>{0}</b> kunne ikke hentes. Nettstedet kan v�re nede eller befinne seg p� en maskin som er utilgjengelig. Dette kan ha betydning for formatet p� inndataene.
error.css.import.toolarge=The stylesheet located at <b>{0}</b> causes the total input to be too large and was not imported. The maximum size of all input is limited to {1} bytes.
error.css.import.toolarge=Stilarket som befinner seg p� <b>{0}</b> f�rer til at den totale mengden inndata blir for stor. Mengden inndata er begrenset til {1} bytes.
error.css.import.url.invalid=The URL for stylesheet import could not be accepted for security reasons. The url was <u>{0}</u>. 
error.css.import.url.invalid=URL-en for stilark-import kunne ikke aksepteres av sikkerhetsgrunner. URL-en var <u>{0}</u>.
error.css.stylesheet.relative=The <b>stylesheet</b> referenced a relative stylesheet, <u>\"{0}\"</u>, that could not be retrieved.
error.css.stylesheet.relative=<b>Stilarket</b> viser til et relativt stilark, <u>\"{0}\"</u>, som ikke kunne hentes.
error.css.tag.relative=The <b>{0}</b> tag had a style attribute that specified a relative stylesheet reference, <u>\"{1}\"</u>, that could not be retrieved. 
error.css.tag.relative=Taggen <b>{0}</b> har en stilattributt som viser til et relativt stilark, <u>\"{1}\"</u>, som ikke kunne hentes.
error.css.stylesheet.rule.notfound=The <b>stylesheet</b> uses a rule, <u>\"{0}\"</u>, that is not supported. The rule has been removed for security reasons.
error.css.stylesheet.rule.notfound=<b>Stilarket</b> bruker en regel, <u>\"{0}\"</u>, som ikke er st�ttet. Regelen har blitt fjernet av sikkerhetsgrunner. 
error.css.tag.rule.notfound=The <b>{0}</b> tag had a style attribute that uses a rule, <u>\"{1}\"</u>, that is not supported. The rule has been removed for security reasons.
error.css.tag.rule.notfound=Taggen <b>{0}</b> hadde en stilattributt som bruker en regel, <u>\"{1}\"</u>, som ikke er st�ttet. Regelen har blitt fjernet av sikkerhetsgrunner.
error.css.stylesheet.selector.notfound=The <b>stylesheet</b> uses selector, <u>\"{0}\"</u>, that could not be processed. The selector has been removed for security reasons.
error.css.stylesheet.selector.notfound=<b>Stilarket</b> bruker en selektor, <u>\"{0}\"</u>, som ikke kunne behandles. Selektoren har blitt fjernet av sikkerhetsgrunner.
error.css.tag.selector.notfound=The <b>{0}</b> tag had a style attribute that uses a selector, <u>\"{1}\"</u>, that could not be processed. The selector has been removed for security reasons.
error.css.tag.selector.notfound=Taggen <b>{0}</b> hadde en stilattributt som bruker en selektor, <u>\"{1}\"</u>, som ikke kunne behandles. Selektoren har blitt fjernet av sikkerhetsgrunner.
error.css.stylesheet.selector.disallowed=The <b>stylesheet</b> had a selector, <b>\"{0}\"</b>, that could not be allowed for security reasons.
error.css.stylesheet.selector.disallowed=<b>Stilarket</b> hadde en selektor, <b>\"{0}\"</b>, som ikke kunne tillates av sikkerhetsgrunner.
error.css.tag.selector.disallowed=The <b>{0}</b> tag had a style attribute that contained a selector, <u>\"{1}\"</u>, that could not be allowed for security reasons. 
error.css.tag.selector.disallowed=Taggen <b>{0}</b> hadde en stilattributt som inneholder en selektor, <u>\"{1}\"</u>, som ikke kunne tillates av sikkerhetsgrunner.
error.css.stylesheet.property.invalid=The <b>stylesheet</b> had a property, <b>\"{0}\"</b>, that could not be allowed for security reasons.
error.css.stylesheet.property.invalid=<b>Stilarket</b> hadde en egenskap, <b>\"{0}\"</b>, som ikke kunne tillates av sikkerhetsgrunner.
error.css.tag.property.invalid=The <b>{0}</b> tag had a style attribute, <b>\"{1}\"</b>, that could not be allowed for security reasons.
error.css.tag.property.invalid=Taggen <b>{0}</b> hadde en stil attributt, <b>\"{1}\"</b>, som ikke kunne tillates av sikkerhetsgrunner.
