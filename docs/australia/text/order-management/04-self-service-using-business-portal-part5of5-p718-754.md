# Australia Sales Customer Relationship Management — Self-service using Business Portal / Lead-to-cash foundation apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 718–754 of 1645 | Part 5 of 5

Sections: Self-service using Business Portal (p118); Configure (p119); Lead-to-cash foundation apps (p120); Configure, price, quote apps (p199)

---

<!-- page 718 -->
Once clicked, the image view will open in a dialog box.

A user can move between images with the arrow buttons or by clicking the thumbnails below
the feature image. This carousel displays any label and alt text if provided. A user can close the
dialog box by clicking outside it or by clicking X in the top right.
The calendar display component
Use the calendar display component in ServiceNow CPQ to present time-based configuration
options in a monthly view. Configure sets, fields, and selection settings to let users view, select,
and manage date-specific records directly in the configuration interface.
ServiceNow CPQ native UI allows the administrator to present a calendar display component to
the user to aid in time-based configurations. The calendar displays in the context of a month. The
data underlying the calendar display is a set, with each calendar day represented by one record
in the set.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

718


<!-- page 719 -->
The example below shows a set with 30 records, one for each day, represented as a calendar
display component.

Key elements that support this example include a set with the variable name
availableDates. This set contains the following associated fields:
• selectedDate (Boolean): captures whether the user has selected one or more date/
records
• rawDate (Text): holds the raw date formatted for each set record
• availableDate (Text); holds the date in "MM/DD/YYYY" format for each set record. This is
used to facilitate the human-readable date on the calendar display
• loadSize (Picklist): Options include S, M, and L. This picklist is displayed in each record
(each day on the monthly calendar).
Calendar records (days) can display any number of set-associated fields. The administrator
should apply a practical limit to the number of fields defined, based on users' screen sizes and
responsiveness provided by the application.
The On Configure/Reconfigure enrichment initializes the set with the appropriate size for the
months to be displayed and a JSON element that contains field values for each record. The
following is the output of the On Configure enrichment for the raw calendar above:
{
"availableDates": {
"data": [
{
"availableDate": { "value": "6/1/2024" },
"rawDate": {
"value": "2024-06-01T00:00:00.000Z"
}
}, //skipped interior records for brevity
{
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

719


<!-- page 720 -->
"availableDate": { "value": "6/30/2024" },
"rawDate": {
"value": "2024-06-30T00:00:00.000Z"
}
}
],
"userEdited": false
}
}
Note that the loadSize field was left out of the set JSON because the administrator did not want
to prepopulate the field.
In the blueprint layout, the administrator defines where the set will be displayed and the
subfields that will be displayed in each record/calendar day.

In the Set Properties > Selection Settings, the Admin defines whether the user should be allowed
to select one or multiple days. The Boolean field for selection (in this case, selectedDate) stores
whether a specific set record/calendar day is selected.

The Set Properties > Search Settings help you display the most relevant subset of days for
the user when your calendar lets the user select from more than one month. For this purpose,
Source Field is the day (record) that the Admin wishes to feature in the monthly calendar set.
Target Field is the set-associated field that contains the full range of calendar dates.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

720


<!-- page 721 -->
The Set Properties > Raw Value area contains the JSON output by the selections on the page
above. However, as "calendar" is not currently selectable as a displayType, the administrator
must edit the JSON to define it explicitly.

Multi-language translation
Implement multi-language translation for end-user interfaces. Enable languages and compile
translation files.
ServiceNow CPQ can be set up to display configuration experiences in a user's preferred
language. This article describes how to implement translations in ServiceNow CPQ.

Foundation and scope
ServiceNow CPQ multi-language capability is available on end-user user interfaces (buyside).
The administration platform displays English only.
ServiceNow CPQ supports all left-to-right languages, including those with multi-byte character
sets (e.g., Japanese, Korean).

Note: Right-to-left languages such as Arabic and Hebrew are not currently supported. If
your implementation expects to require translation into a right-to-left language, please log
a support case and we will follow up with you. To log a support case, use the ServiceNow
Support portal . For step-by-step instructions, see Create a case on Now Support for CPQ
Customers .
The base language for all ServiceNow CPQ environments is English. As a result, translations
of custom strings must be furnished with the corresponding English key. Example: If the
administrator enables French and Finnish on an environment, they will need to provide Englishto-French and English-to-Finnish translations.
When multi-language is enabled in ServiceNow CPQ, the app will attempt to serve a
configuration experience according to the end-user's browser locale setting. If the language
defined in the browser locale matches an enabled language in ServiceNow CPQ, the application
will attempt to serve the strings in the requested language. However, if a string is not defined for
the requested language, the application will display the corresponding English equivalent.

Terms used in this article
Static strings: Text ServiceNow CPQ displays to the user that is defined by the application.
Examples include default button labels, basic error messages, text in confirmation boxes, and
hovertext for set controls. Static strings are currently provided in English [en], Finnish [fi], French
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

721


<!-- page 722 -->
[fr], German [de], Italian [it], and Spanish [es]. ServiceNow CPQ will translate static strings into
additional languages as needed.
Custom strings: Field labels, field option labels, product name and description, layout tier
headings, custom messages and similar strings defined by an administrator are "custom".
Base language: the foundational language in a ServiceNow CPQ environment. Choosing your
base language is an important decision, as (1.) all configuration elements—including fields, field
options, layout elements, and custom message text—must be defined in the base language;
and (2.) all translations of custom strings key off of the base language. A ServiceNow CPQ
environment can only have one base language. All environments in your dev stack need to have
the same base language, to enable environment-to-environment migration.
Enabled languages: in addition to the base language, these are the languages you want to
support for your end-users coming to ServiceNow CPQ.

Implementation
1. Log a Support case that describes the languages you intend to translate configuration
experiences into. Request that ServiceNow CPQ Support enable these languages on all
relevant ServiceNow CPQ environments in your development stack. After the new languages
are enabled, continue with step 2.
2. To understand how multi-language translation works in ServiceNow CPQ, we recommend that
you try a small-scale proof-of-concept before embarking on a wholesale translation effort.
◦ Select a picklist field displayed on the end-user layout. Example: In Blueprint1, we will
translate Paint Color [paintColor]. paintColor has label "Paint Color" and options "Blue",
"Yellow", "Green".
◦ For the purposes of this experiment, assume we enabled Spanish [es] in step ʼ1.
You can customize this experiment for one of the languages you enabled in step ʼ1.
In a CSV file, define Spanish [es] translations for the field label and the picklist field

options:
The graphic above is a sample translation upload file. You can find another example on the
Matrix Loader page.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

722


<!-- page 723 -->
3. Save the CSV file and upload via Matrix Loader.

Note: If using a program like Microsoft Excel, you must export in UTF-8 format to support
characters with diacritic marks, such as accent, cedilla, circumflex, diaeresis/umlaut, etc.
4. Deploy the blueprint.
To test the buyside user interface, we recommend using the Chrome browser with the https://
chromewebstore.google.com/detail/locale-switcher/kngfjpghaokedippaapkfihdlmmlafcc?hl=enUS
extension installed. This extension allows you to quickly switch the browser locale to test
localization. Set Locale Switcher to Spanish [es] and open the Blueprint1 configuration. The
paintColor field label and contents should be displayed using the custom translated strings in
ʼ2.
The following graphic shows the English version of the picklist on the buyside UI:

The following graphic shows the Spanish version of the picklist on the buyside UI:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

723


<!-- page 724 -->
The following experiment demonstrates how various custom strings, including those defined in
field options and layouts, are translated, uploaded, and deployed to accomplish an English-toSpanish translation.
1. Compile a list of custom strings that require translation.
2. Export the following CSV files from ServiceNow CPQ administration:
◦ Field Options: every field option label requires translation. In the Field Option CSV file, these
are the strings defined in the name column
◦ Picklist extensions: for each picklist extension that has Extended Information defined, export
the Extension Data CSV file. A translation should be provided for every string in columns B
and greater.
◦ Product Pickers: strings defined in Determination-type Bulk Actions should be translated into
the target language.
◦ Rules:
▪ When action_type = message, action_value requires translation
▪ When action_type = determination and the action affects a text field, many use cases
require translation of the string in action_value
◦ Layout: Translations are needed for:
▪ Tier headings
▪ Columnset headings
▪ Field labels
▪ Help content
▪ Product list column headings
3. Build your translation file. The file should be one of the following formats:
◦ CSV: SampleTranslationUploadFormat_en_to_es.csv
◦ XLIFF: SampleTranslationUploadFormat_en_to_fr.xlf
4. For each string identified in step 1, add an entry to your translation file.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

724


<!-- page 725 -->
5. Upload your file in the Matrix Loader.
6. Deploy the corresponding blueprints.

Downloading translated strings
To download the translated strings that are saved in a ServiceNow CPQ environment, open
ServiceNow CPQ administration in a browser tab. In another browser tab, open the following URL:
https://{{baseUrl}}/a/translations/v1/translations?
fileType={{fileType}}&codes={{codes}
where {fileType} is either csv or xml, and {codes} is a comma-delimited list of the translated
strings to retrieve. Use 2-letter language codes such as. 'en' and 'fr'. For example, &codes=en,
fr,de

Note: Some characters in the rendered translated string may include diacritic marks
(accents, etc.), and if the wrong character set is used these will appear as a replacement
symbol for unknown character (square with a question mark). To avoid this problem, export
CSV files using the UTF-8 format.
Required permissions for the integration user
The integration user, or refresh token user, must have the following permissions if it does not
already have system administrator permissions.
The refresh token user (or integration user) is the user name that ServiceNow CPQ uses for API
syncing of Configuration Line Data, Configuration Data, and to populate the caches of Product2,
Pricebook, and Pricebook Entries in Salesforce. This sync occurs every 30 minutes for test and
demo sites and every 15 minutes for production sites. Although using a system administrator
as your refresh token user is the simplest and most common route to take when configuring
ServiceNow CPQ, some ServiceNow CPQ customers prefer not to define their refresh token user
with system administrator permissions (usually because of a company-wide security policy). The
following list shows the necessary permissions for non-admin profiles to be set up as refresh
token users when using ServiceNow CPQ with Salesforce CPQ:
• The user must be API enabled
• The LGKConfigurationLineItemc and LGK ConfigurationFieldDatac objects must have Create
access
• The user must have permission to read all fields and objects that are referenced in the SOQL
queries of Salesforce external connections
• The objects Product2, Pricebook2, and PricebookEntry must have Read/View access,
including access to the following fields:
Product2:
◦ Name
◦ Id
◦ ProductCode
◦ Description
◦ IsActive
◦ Family
◦ ExternalId
◦ SBQQ_ExternallyConfigurable_c
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

725


<!-- page 726 -->
◦ QuantityUnitOfMeasure
◦ StockkeepingUnit
Pricebook2:
◦ Id
◦ Name
◦ Description
◦ IsActive
◦ IsStandard
◦ CreatedDate
◦ LastModifiedDate
PricebookEntry:
◦ Id
◦ Pricebook2Id
◦ Product2Id
◦ UnitPrice
◦ IsActive
◦ UseStandardPrice
◦ ProductCode
◦ CreatedDate
◦ LastModifiedDate
◦ CurrencyIsoCode (if using multicurrency)
◦ ProductSellingModelId
Installation and setup guide for environments linked to Salesforce orgs
Step-by-step instructions for setting up ServiceNow CPQ in an environment linked to a
Salesforce org.

Before you begin

Designate a user in the org who will serve as the first ServiceNow CPQ admin user, and note
the user name. This user will need to grant other users access after they have attempted to
access the ServiceNow CPQ Admin once and appear in the User Access list of users. For more
information, see User access.
Provide ServiceNow CPQ Support with the following information:
• The Org ID of your org (found in Setup > Company Information)
• the My Domain URL of the org (found in Setup > My Domain)

Note: Create a support case by using the ServiceNow Support portal

. For step-by-step
instructions, see Create a case on Now Support for ServiceNow CPQ Customers .
The ServiceNow CPQ DevOps team will provision the environment. Once ready, Support will
confirm with your ServiceNow CPQ custom URL.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

726


<!-- page 727 -->
Note: If your Salesforce site was refreshed from another previously ServiceNow
CPQ connected Salesforce site, uninstall the ServiceNow CPQ connected app before
continuing. It holds metadata associated with the ServiceNow CPQ environment connected
to the original Salesforce site. To uninstall, navigate to Setup > Manage Connected Apps >
ServiceNow CPQ Connected App > Uninstall.

Role required: Admin

About this task

If your environment has never had ServiceNow CPQ installed, start at step 1. If you are upgrading
existing packages, start at step 7.

Procedure
1. Navigate to your ServiceNow CPQ custom URL, and click the Settings tab in the navigation
menu.
2. Create a Refresh Token user name.
The user name can be any userʼs username, but ServiceNow CPQ recommends a user with a
system administrator profile.
3. When prompted in the pop-up window, allow access for the ServiceNow CPQ API User
connected app.
If you are using an integration user that is not a system Admin, the following are the necessary
requirements for the integration user (or a permission set associated with that user/profile):
◦ The user must be API enabled
◦ The user will need Create and Edit access for the following objects:
▪ LGK__ConfigurationLineItem__c
▪ LGK__ConfigurationFieldData__c
▪ SBQQ__QuoteLine__c
◦ The user will need Read/View All access to the following objects:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

727


<!-- page 728 -->
▪ Product2
▪ Pricebook2
▪ PricebookEntry
◦ For subscription management, the user with also need Read/View All access to the
ProductSellingModel object.
4. In a new browser, navigate to your ServiceNow CPQ custom URL again and confirm that the
Refresh Token user name was updated correctly.
5. Click reset again to obtain a new refreshToken, or navigate to https://<YourCPQURL>/
refreshToken.
6. Enter Salesforce setup, and search in the Quick Find box for Connected Apps oAuth Usage.
a. Find the ServiceNow CPQ Connected App and click Install.
b. Click Allow.
c. Edit oAuth policies.
Permitted users should be set to Admin approved users are pre-authorized.
d. Scroll to Manage Profiles, and link to the system administrator profile or any other profiles
that will be using ServiceNow CPQ as an admin.
7. Click the gear icon in the upper right and go into the “Setup” page for your SFDC org.
If you are upgrading the ServiceNow CPQ Base Managed Package from one major version
to a newer major version, (for example, from 1.x to 2.x), submit a support case noting this.
ServiceNow CPQ needs to update the package version for your environment in our database.
8. Navigate to Installed Packages.
If you are only upgrading your existing ServiceNow CPQ packages, this is the only step you
must complete.
a. Install the ServiceNow CPQ Base Managed Package and select Install for All Users.
▪ If your org logs in through test.salesforce.com or has sandbox in the My Domain URL of the
org, click here .
▪ If your org logs in through login.salesforce.com, click here
The installation key is CPQ-2025!

.

b. If using with Salesforce CPQ, ensure that Salesforce CPQ is installed and is version 244.2 or
later, install the ServiceNow CPQ Extension for Salesforce CPQ package.
▪ If your org logs in through test.salesforce.com or has sandbox in the My Domain URL of the
org, click here .
▪ If your org logs in through login.salesforce.com, click here
The installation key is CPQ-2025!

.

9. For CPQ usage, navigate to Installed Packages again.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

728


<!-- page 729 -->
a. Find Salesforce CPQ and click Configure.
b. In Additional Settings > External Configurator URL, update to https://<YourCPQURL>/
ui/configure, and click Save.
c. Check the box next to Third Party Configurator, and click Save.
10. Add your domain (https://<YourCPQURL>) to the 'CPQ Admin Custom Settings' object in
Salesforce.
If needed, set a runtime client token to use ServiceNow CPQ with the Salesforce Partner
Community.
11. Click Save.
12. For CPQ usage: Navigate to “App Manager” and find Salesforce CPQ/CPQ/QuoteQuickly.
This item can have different names depending on your org settings.
a. Open the dropdown menu on the right and click Edit.
b. In Available Tabs, find “Configuration Line Items” and “Configuration Field Data Sets”, and
add them to Selected Tabs.
If desired, adjust the order of Selected Tabs to make them more easily accessible.
c. Save.
13. Navigate to “Trusted URLs” and click New Trusted URL.
Give the new URL the following settings, and then click Save.
◦ In the API Name section, give the URL a name, such as "ServiceNow CPQ." (It can be any
name so long as you can reference it later.)
◦ Add your domain to the URL section. (If you want to make sure this setting retain access after
an SFDC refresh, enter https://*cpq to ensure that any cpq site is trusted.
◦ Check Active.
◦ Set the CSP Context to All.
◦ In CSP Directives, check the frame-src (iframe content) and img-src (images) options.
14. Go to the Object Manager and use the Quick Find box in the top right to search for the Product
object, and select the option whose API name is Product2.
a. Navigate to Page Layouts and click Page Layout Assignments.
b. Find the page layout assigned to system administrator or other profiles needing ServiceNow
CPQ Admin access (as determined when setting up ServiceNow CPQ Connected App
above).
c. Select the page layout assigned to the system administrator.
d. Drag View ServiceNow CPQ.io Setup and ServiceNow CPQ.io Enabled to the desired
section of the page layout (usually the top).
15. Navigate to Salesforce CPQ to confirm that the new tabs are visible.
16. In the Product tab, confirm that there is a new view called ServiceNow CPQ View.
17. Test by creating or editing a product and checking ServiceNow CPQ Enabled box, checking
Active Box, and then saving and assigning it a Price Book entry.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

729


<!-- page 730 -->
◦ On the new product’s detail page, follow the Click Here link under View ServiceNow CPQ
Setup to ensure access to ServiceNow CPQ Admin.
◦ If you receive the error "Cannot get Configurable Product. Product <ProductId> is not
available in cache" when you try to access a configurable product, you may have skipped the
refresh token user setup at the top of this page. Create the user and try again.
◦ If you are able, please grant ServiceNow CPQ a user with the email address and we can
verify the setup once you have completed it.
Trouble?
• If you receive the error "Cannot get Configurable Product. Product <ID> is not available in
cache" when you try to access a configurable product, you may have skipped step 2 to create a
Refresh Token user name. Repeat step 2.
• If you receive an "OAuth Error" with the code OAUTH_APPROVAL_ERROR_GENERIC when you
try to access your ServiceNow CPQ URL, your user is blocked by recent changes Salesforce
has made to connected apps. To resolve the problem, add the following text to your Salesforce
My Domain URL, and then click Allow:
◦ For the ServiceNow CPQ Connected App:
/identity/app/AppInstallApprovalPage.apexp?app_id=0Ci5e000000
bn6b&app_org_id=00D5e000005AHE7
◦ For the ServiceNow CPQ API User Connected App:
/identity/app/AppInstallApprovalPage.apexp?app_id=0Ci5e000000
L18c&app_org_id=00D5e000005AHE7
You are then able to follow the complete installation instructions.
Assigning non-Admin user permissions for ServiceNow CPQ in Salesforce
You need to apply certain user permissions in Salesforce in order to use ServiceNow CPQ
properly.
To use ServiceNow CPQ, users need access to certain objects and fields in Salesforce. These
can be assigned using permission sets or by going to Profiles > Select Desired Profile > Object
Settings. Users need read/edit access in the Field Permissions section to the following objects:
For Configuration Attribute:
• Id
• Name
• Target Field Product
• Row Order
• Column Order
• Position (edited)
For Product Feature:
• Id
• Name
• Option Selection Method Configured SKU
• Number
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

730


<!-- page 731 -->
• Min Option Count
• Position (edited)
For Product2:
• Configuration Type
• Has Configuration Attribute Externally Configurable
For QuoteLine:
• Configuration Id
• Committed Configuration Id BomData
• Product
• Incomplete
• DynamicOptionId Quantity
• ListPrice
• OptionLevel
For Product Option:
• Configuration Id
• Committed Configuration Id Bom Data

Note: Users will also need read/edit access in Object Permissions for the Product Option
itself.
For issues specifically with reconfiguration, make sure that the user has the correct field level
security for both the “Configuration Id” (CI) AND the “Committed Configuration Id” (CCI) fields
from the object from which they are entering the configuration. We store the previous CI in the
CCI in case the user cancels from their configuration and needs to revert their changes. These
fields are part of the following objects:
• Configuration Line Item Quote Line
• Product Option
To check whether the user has the necessary permissions for these fields, go to Settings >
Object Manager > [Object] > Fields & Relationships > [Committed Configuration ID/Configuration
ID] > Set Field-Level Security and check whether the "Visible" checkbox is checked for FieldLevel Security for Profile of the user.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

731


<!-- page 732 -->
The full list of objects and fields contained in the ServiceNow CPQ packages can be found by
navigating to SFDC Setup and searching for "Installed Packages". "ServiceNow CPQ Managed
Package" is used for parts of our SFDC Integration and custom objects, while ServiceNow CPQ
Extension for Salesforce CPQ" contains the fields used in the standard user flow.
Selecting one of these packages and clicking "View Components" will show a list of SFDC
objects and fields created by that package along with their name, type, and parent object (if any).
Specifically, the fields in ServiceNow CPQ Extension for Salesforce CPQ are the fields a user
will need to have access to in order to properly configure and reconfigure ServiceNow CPQ enabled products in Salesforce CPQ.
Assigning access permissions to Salesforce objects and fields
Configure permissions for non-Admin users in Salesforce to enable configuration and
reconfiguration with ServiceNow CPQ.
To configure using ServiceNow CPQ, users need access to certain objects and fields in
Salesforce. You can assign permissions by using permission sets or by navigating to Profiles >
Select Desired Profile > Object Settings. Make sure that the user also has read or edit access for
the product option itself (in the Object Permissions section).
Users must have read or edit access to the following objects. You can assign these permissions
in the Field Permissions section.

Configuration attribute
• Id
• Name
• Target field
• Product
• Row order
• Column order
• Position (edited)

Product feature
• Id
• Name
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

732


<!-- page 733 -->
• Option selection method
• Configured SKU
• Number
• Min option count

Product2
• Configuration type
• Has configuration attribute
• Externally configurable

QuoteLine
• Configuration Id
• Committed configuration id
• BomData
• Product
• Incomplete
• DynamicOptionId
• Quantity
• ListPrice
• OptionLevel

Product option
• Configuration Id
• Committed configuration id
• BomData

Field level security
When reconfiguring, make sure that the user has the correct field level security for both the
configuration ID (CI) and the committed configuration ID (CCI) fields for the object from which
they are entering the configuration. CPQ stores the previous CI in the CCI in case the user
cancels their configuration and needs to revert the changes. These fields are part of the following
objects:
• Configuration line item
• Quote line
• Product option
To check whether the user has the correct permissions for both of these fields, go to Settings
> Object Manager >[Object] > Fields & Relationships > [CI or CII] > Set Field-Level Security and
confirm that the field-level security for the user's profile is set to Visible.
The full list of objects and fields contained in the ServiceNow CPQ packages can be found by
navigating to SFDC Setup and searching for "Installed Packages". "ServiceNow CPQ Managed
Package" is used for parts of our SFDC Integration and custom objects, while ServiceNow CPQ
Extension for Salesforce CPQ" contains the fields used in the standard user flow.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

733


<!-- page 734 -->
Selecting one of these packages and clicking View Components shows a list of SFDC objects
and fields created by the package, along with their name, type, and parent object (if any).
Specifically, the fields in "ServiceNow CPQ Extension for Salesforce CPQ" are the fields a user
must have access to in order to properly configure and reconfigure ServiceNow CPQ enabled
products in Salesforce CPQ.
Nested bundling in Salesforce CPQ
Enable nested bundling in Salesforce CPQ to support complex product hierarchies and
configurations.
With some additional configuration, ServiceNow CPQ now supports sending back a nested
bundle structure from ServiceNow CPQ to Salesforce CPQ. This allows you to take advantage of
the BOM hierarchy built in ServiceNow CPQ and have it reflected in the Salesforce CPQ Quote
Line Editor (QLE).

Setup in Salesforce
To enable support for nested bundles, additional setup steps must be completed in the
Salesforce CPQ Package settings. These steps require Salesforce CPQ package version 242
(Spring 2023) or later.
1. Navigate to Setup > Installed Packages > Salesforce CPQ, and then click Configure.

2. On the Additional Settings tab, check the box to enable Nested Bundles for External
Configurator.
3. Click Save to save the changes.
Products that may have other products below them in the BOM hierarchy should be marked
as ServiceNow CPQ Enabled in the Product2 record in Salesforce. This is the same as setting
up configurable products to work with ServiceNow CPQ. The products also need to have a
pricebook entry in the pricebook used for the quote if they are going to be created as quote lines.
The following video explains setting up nested bundle structures in ServiceNow CPQ and
Salesforce CPQ:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

734


<!-- page 735 -->
Nested Bundles Demo

Setup in ServiceNow CPQ
After completing the Salesforce CPQ package setting steps, log a support case to enable nested
bundling in your ServiceNow CPQ instance.

Note: Create a support case by using the ServiceNow Support portal
instructions, see Create a case on Now Support for CPQ Customers

. For step-by-step
.

As with any larger change, the recommendation would be to start in a dev or test environment
and validate that it is working as expected before enabling it in production.
In ServiceNow CPQ, the BOM hierarchy is defined through the parentProduct and
uniqueIdentifier fields on items in the bill of materials. This hierarchy in the product list is
reflected in the Salesforce CPQ quote line editor.

Limitations
Nested bundles from external configurators are limited to four levels, including the topmost
parent. This means you can nest products up to three levels deep inside a ServiceNow CPQ
configuration.

Note: Trying to add the same product to two dynamic nested bundles via an external
configurator in Salesforce CPQ results in an "Attempt to de-reference a null object" error.
For example, suppose Product X is nested inside both the Nested Child 1 dynamic feature
and the Nested Child 2 dynamic feature, when both are children of the Parent dynamic
feature. This configuration results in the error.
Set up user-based or profile-based rules with Salesforce implementation
You can set up a message rule to control access to a field based on the user's role or ID.
Sometimes, system administrators donʼt want to allow every sales representative to access a
particular field. (For example, perhaps that field should be edited later on in the sales cycle by
users with elevated permissions.) In this case, admins might want to lock down certain fields
unless the user accessing the configuration is a Solution Manager or System Administrator.
Or, maybe youʼd want them locked down unless the config is accessed by Jane Doe, your
companyʼs VP of Sales. This article walks through how to set up such rules.

Step 1
First, youʼll want to create a new field on your Quote object in SFDC. This field should be of type
“Formula,” and the Formula Return Type should be “Text.” Make sure to append the “LGK” suffix
to the end of the field name, as this field is going to be twinned into ServiceNow CPQ.

Step 2
When prompted to enter the formula, this is where you must make a design decision. If you
want the rule to be dependent on profile type (for example, System Administrator), enter
$User.ProfileId as the formula:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

735


<!-- page 736 -->
If you want the rule to fire on a specific user ID, replace $User.ProfileId with $User.Id.

Step 3
Add the formula field to the ReferencedFields field data set as you normally would to perform
Field twinning .

Step 4
Write the rule in ServiceNow CPQ. For example, if you wanted a rule to fire on the System Admin
profile, and the System Admin profileʼs ID is 00e8c000002qrLx, you might condition your rule
like this:

Result
In the following screen shots, there are two system administrator users and two rules. One rule is
a message rule that fires when a System Administrator accesses a quote, and the other rule fires
when Jane Doe accesses the quote. This is the output when a System Admin who is not Jane
accesses the configuration:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

736


<!-- page 737 -->
This is the output when Jane Doe (who is also a System Admin) accesses the configuration:

Using ServiceNow CPQ and Salesforce CPQ with community users
When partner and community users cannot authenticate in Salesforce, they can use a Runtime
Client Token to authenticate with ServiceNow CPQ. Follow these setup steps.
Community sites (also known as Digital Experience sites) require different user types than are
normally used in Salesforce platform. Notably, these are for partner or community users that
donʼt have the option to authenticate in Salesforce. Even if the community users have access to
the ServiceNow CPQ Connected App, they need to use it through the Digital Experience site, so
the login flow (which automatically redirects to Salesforce) wonʼt work in this case.
These are the steps to use a Runtime Client Token, along with custom Visualforce pages that are
included as part of the CPQ Extension package, to authenticate with ServiceNow CPQ instead of
the normal login flow.

Audience
This article is for anyone that needs to use ServiceNow CPQ and Salesforce CPQ with a partner
community or in a customer community environment. This page assumes that:
• Basic setup of ServiceNow CPQ and Salesforce is complete.

Note: The Visualforce pages referenced in this page are available only in CPQ
Extension Package version 2.3 or later. CPQ Extension Package Version 2.3 itself requires
the Base Managed Package version 2.2 or later.
• A Digital Experience site that includes Salesforce CPQ quotes is available.
◦ This guide is not necessary if only Salesforce profiles (such as System Administrator,
Standard User, and so on) will be using this site instead of Partner or Community users.
◦ If a Digital Experience site is not already available, note that at the time of this writing:
▪ Salesforce CPQ is not compatible with LWR templates, and Quote objects are only
available on Aura.
▪ Partner/Customer users must have CPQ permission set licenses assigned to them.
▪ Sharing Settings should be enabled to allow access to all the CPQ related objects, such
as: Products, Opportunities, Price Books, Quotes, Product Option, Product Feature, and so
on.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

737


<!-- page 738 -->
ServiceNow CPQ setup
A runtime client is required to authenticate community users. If a runtime client is not already
available, follow these steps to create one:
1. In ServiceNow CPQ Admin, go to Utilities > Runtime Clients and click + New.
2. Provide a name, make sure at least Config is selected under "Permissions", and add the
ServiceNow CPQ siteʼs URL to Origins.
The Origin must be exact: it must include https://, and should have one origin with the
trailing "/" and one without. On https://dev5.dev.logik.io, there should be an Origin of https://
dev5.dev.logik.io and https://dev5.dev.logik.io/.

3. Save.
4. Copy the value using the clipboard icon under “Token” image.png.
You will save this value to Salesforce Settings during Salesforce setup.

Salesforce setup
1. From the Salesforce App Launcher, search for and open the ServiceNow CPQ Admin Custom
Settings page.

2. Next to the Runtime Client Token, click Set, paste the copied token from ServiceNow CPQ
Admin, then Save.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

738


<!-- page 739 -->
3. Go to Security > Session Settings.
4. Under “Clickjack Protection”, select Enable clickjack protection for customer Visualforce pages
with standard headers.
5. Under “Trusted Domains for Inline Frames”, add *.force.com. Set IFrameType to
VisualforcePages.
6. From Setup home, go to Apps > Packaging > Installed Packages.
7. Next to the Salesforce CPQ package (not the ServiceNow CPQ extension for CPQ), click
Configure.

8. Under the Additional Settings tab, set the “External Configurator URL” to /apex/
LGK__CpqConfiguration.
This field may be set to a full URL in ServiceNow CPQ, such https://dev5.dev.logik.io/
ui/configure. The new value /apex/LGK _CpqConfiguration is meant to be compatible with both
Salesforce and Community users, so it can replace the ServiceNow CPQ URL.
Free storage space in a Salesforce org
How to clear up space in a Salesforce test environment that is near its storage limit.
Occasionally, administrators work in a Salesforce test environment that is approaching its
storage limit. If Salesforce complains that you are over your storage allocation, it’s time to free up
space.
One option is to remove records from the ConfigurationBOM table. For managed packages v1.0
or greater, remove Configuration Line Item and Configuration Field Data Sets instead.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

739


<!-- page 740 -->
Warning: These steps delete data. Follow them only in non-production environments.
1. Setup cog in SFDC → Developer Console → Debug [Open Execute Anonymous Window]

2. Paste and execute the following:
delete [SELECT id FROM LGK__ConfigurationBOM__c];
For ServiceNow CPQ managed packages v1.0 or greater, run this delete instruction against the
following objects:
◦ LGK__ConfigurationLineItem__c
◦ LGK__ConfigurationFieldData__c

Note: Salesforce only allows DML statements such as these to run in batches of 10,000
or fewer records at a time. If the record has more than 10,000 records, modify the query in
step 2 with the following, and run the modified query as many times as necessary.
delete [SELECT id FROM LGK__ConfigurationBOM__c LIMIT 10000];
3. Use the following script to clear the Trash:
List<Id> delCLI = new List<Id>(new Map<Id,SObject>([SELECT Id
FROM LGK__ConfigurationLineItem__c ORDER BY CreatedDate ASC
LIMIT 10000]).keySet());
Database.delete(delCLI);
Database.emptyRecycleBin(delCLI);
List<Id> delCFD = new List<Id>(new Map<Id,SObject>([SELECT Id
FROM LGK__ConfigurationFieldData__c ORDER BY CreatedDate ASC
LIMIT 10000]).keySet());
Database.delete(delCFD);
Database.emptyRecycleBin(delCFD);
Alternately, in Salesforce Admin → 9 dot menu → search Recycle Bin, navigate to Recycle Bin
→ Empty Org Recycle Bin.
Quote line unique IDs
You can assign unique IDs to quote lines in Salesforce.
ServiceNow CPQ passes the unique identifier of a product in ServiceNow CPQ back to the
Unique Line ID field on the quote line in Salesforce, allowing users to assign unique IDs to
specific quote lines in Salesforce. This allows users to reference the Unique Line ID field
(LGK_UniqueId_c) after the quote line has been created if a unique identifier was included in the
product action in ServiceNow CPQ.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

740


<!-- page 741 -->
Prerequisites
Have the ServiceNow CPQ Extension for CPQ package version 2.2 or later installed on the org.
Add the Unique Line ID field to the quote line page layout through Setup>Object Manager>Quote
Line>Page Layouts.
Assign a unique identifier to a product in ServiceNow CPQ using a simple or advanced product
action.

How to use
For simple product actions, assign the product unique identifier in the product action. (See the
screenshot above.)
For advanced product actions, assign the ProductList.uniqueIdentifer in your product action
script. For example, if using a set, you can leverage the set index in order to assign a unique ID to
each product added from the set:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

741


<!-- page 742 -->
ProductList.id ="<yourProductCodeOrId>";
ProductList.uniqueIdentifier = cfg.<yourSetFieldForProduct> +
set.<yourSetVariableName>.index;
return ProductList;
Use cases include ramping deals, such as subscription-based pricing that applies discounts
based on the length of the contract. Although the same product, discounts are applied in year 2
or 3 with a unique ID for the same product name. Another use case would be multiple copies of
the same product on quote, with different product extended data.

Use case: Adding extended data to identical product code products in SFDC
using flows
Out of the box, the Configuration Line Item to Quote Line flow created by ServiceNow CPQ is set
up to write the extended information of each product to its respective quote line in the BOM Data
field.

As configured, the flow checks only whether the configuration ID and the product ID match and
return only the first record. This causes the BOM data for the child lines to be identical if the
product IDs are identical.
If you are using the unique ID attribute, you can add another condition to the "Get Records"
section of the flow that checks for the Configuration Line Item field "LGK_UniqueId_c" being
equal to the unique line ID object on the quote line:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

742


<!-- page 743 -->
This correctly writes the BOM data to each unique child line with the correct extended
information.
Display a multi-level BOM in ServiceNow CPQ using simple and advanced product actions
Two ways to display a bill of materials that includes hierarchical relationships.
When a bill of materials (BOM) is represented with hierarchy (such as a parent-child
relationship), some businesses prefer to display the sum of the prices of the children on the
parent line.
For example, when you are building a laptop pricing configurator, you might want to display a
parent product, with supplemental products listed as part of a grouped nested menu. Each of
these components has an additional price and must be grouped together to arrive at the Total
Price of the full BOM.
In the example screenshots below, the Laptop category can be expanded or folded to either
display or hide the sub-products in the final price configuration of the laptop.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

743


<!-- page 744 -->
Image 1: Multi-BOM of laptop hiding sub-products:

Image 2: Multi-BOM expanded to display all sub-products in the BOM:

Configuration
To begin building a bill of materials, navigate to the Rules section of your ServiceNow CPQ
interface and build a new rule. In your rule, add a new product action. From here, add the
products as you normally would when building a product action.
1. Add a simple product action rule.
2. Add your product list in order, as you would for a basic BOM.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

744


<!-- page 745 -->
3. Set a unique identifier for the chosen parent field. This provides the capability to assign a
parent ID and create nested products. In the above example, we have set the Laptop product.
4. For each child product, add the unique identifier for the parent product to the Parent Product
field. For example, LAP_sc_parent is the unique identifier for our Laptop parent product.
We would add LAP_sc_parent to the Parent Product field for our child products.

Advanced
When you have many products that require scripted configuration, you can use the ServiceNow
CPQ Advanced Function layer to create a multi-BOM. For this, follow the same instructions as
above until you begin building your list of products. If you have multiple SKUs and you need the
hierarchy to be correct for each SKU on the BOM, use an Advanced Function to better scale your
configuration.

1. Instead of choosing a simple product action, select the Advanced option and click Create
Advanced Function.
2. In the Help bar, you can find a ProductList.parentProduct option on the right of the page. Click
Insert Example to begin building your script. This lets you dynamically generate a unique
identifier field for your parent products by leveraging the Set Index field.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

745


<!-- page 746 -->
How parent/child relationships function when multiple BOMs are displayed
See how product relationships are displayed in a product list that includes more than one bill of
materials.
If a parent or child product is not displayed in a BOM because it has a different BOM type than
its parent or child product, an effectiveParent propertyis set to determine how to display the
hierarchy.
Parent/child product relationships between products with different BOM types will appear in
the product list similarly to the example below. Here, the parent of Grandchild Product2 is the
child product. Child Product is a manufacturing item, while Grandchild Product2 is a sales item.
Because Child Product is not shown in the sales BOM, Parent Product is shown as the parent
(becoming the effective parent) of Grandchild Product2.

Setting a custom target for a message rule action
You can set a layout element as the target of a message action.
When you set a message action in a rule, you can enter the variable name of a layout element.
The message will be displayed in that element.
Configuration linking overview
Learn how configuration IDs link Configuration Line Items and quote lines in Salesforce. When
a configuration is saved, all related line items share the same configuration ID. The same
ID is added to the parent quote line when the quote is saved, allowing admins to easily pull
configuration details into quotes or related records.
Whenever a configuration session is saved, a collection of Configuration Line Item objects are
created in SFDC that all share the same Configuration Id field.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

746


<!-- page 747 -->
When you save the quote, the quote line for the parent level configurable product will have a
similar Configuration Id field, which should be populated with the same value.

A Salesforce admin can leverage the fact that these values match to pull information from
the Configuration Line Items to the quote (or its associated opportunity/account). For more
information about pulling information to the quote line, see:
• Use case: Configuration line item to quote line flow (if your CPQ Extension for Salesforce CPQ
Package is version 1.8 or later)
• Use case: Using the Salesforce Quote Calculator plugin to integrate data from ServiceNow
CPQ to Salesforce quotes and quote lines (for ServiceNow CPQ Extension Package version 1.7
or earlier)
Embedding the ServiceNow CPQ UI with the ServiceNow CPQ Web Component
By using the ServiceNow CPQ Web Component, you can embed the ServiceNow CPQ UI in a
web page without using an iframe. Because the component's UI is compatible with themes, users
can easily edit the look of the UI.
The ServiceNow CPQ Web Component allows a user to embed the ServiceNow CPQ UI directly
to a web page without an iframe. The UI of the Web Component is compatible with themes to
allow users to easily edit the look of the UI.
To use the Web Component, you must have:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

747


<!-- page 748 -->
• A configurable product associated to a deployed blueprint
• A ServiceNow CPQ runtime token that includes the destination URL as the origin Website URL
white-listed in the GCP properties
Contextual information on the page (such as a SKU in the page URL) is accessible to the Web
Component with minimal customization. The Web Component also:
• Removes the need to use an iframe to embed ServiceNow CPQ UI, avoiding security
restrictions and issues inherent to iframes
• Dispatches native HTML events that can be listened for anywhere on a page
• Reduces integration complexity; for example, its Web component orchestrates API calls for UI
display and configuration
• Provides greater control over ServiceNow CPQ on your site with access to the HTML directly
on the page, more seamlessly integrating with the parent page
• Is compatible with custom themes

Embedding the ServiceNow CPQ Web Component
The Web Component can be added to any page where you can add HTML. The only required
fields to initialize the Web Component are the URL, the runtime token, and the configurable
product ID.

Example
The following sample code includes comments to provide more details on how the Web
Component works and provides examples for reference.
It includes minimal code that can be easily added to a container or embed components. A
Product ID must be manually entered.
<script
src="https://TENANT.SECTOR.logik.io/ui/wc-build/logik-wc.es.js"
type="module"
></script>
<logik-ui
runtime-token="RUNTIME_TOKEN"
tenant-api-url="TENANT.SECTOR.logik.io"
product-id="PRODUCT_ID"
>
</logik-ui>
The following sample code represents a full-page example. It lets the user easily pass multiple
parameters and read a product ID from the page.
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Web Component Sandbox</title>
<script
type="module"
src="https://
renderdraw02.demo01.logik.io/ui/wc-build/logik-wc.es.js"
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

748


<!-- page 749 -->
></script>
</head>
<body>
<logik-ui></logik-ui>
<script>
// Type Definitions
/**
* @typedef {Object} BomProduct
* @property {string} id - Product identifier
* @property {number} price - Unit price of the product
* @property {number} quantity - Quantity of the product
* @property {('SALES'|'MANUFACTURING')} bomType - Type of
BOM
* @property {string} type - Product type (e.g.,
'accessory')
* @property {number} rollUpPrice - Rolled up price
including child products
* @property {number} extPrice - Extended price (price *
quantity)
* @property {number} level - Hierarchy level in the BOM
structure
* @property {{ selected: boolean, disabled: boolean }}
selection - Selection state
* @property {number} extList - Extended list price
* @property {number} list - List price
* @property {string} displayName - Display name of the
product
* @property {string|null} parentProduct - ID of parent
product if nested
*/
/**
* @typedef {Object} BomData
* @property {{
*
products: Array<BomProduct>,
*
total: number,
*
totalPages: number,
*
totalItems: number,
*
errorMessage: string|null,
*
incompletePricing: boolean
* }} newProducts - Updated products in the BOM
*/
/**
* @typedef {Object} LogikConfigurationData
* @property {string} configurationId - The unique
identifier for the configuration
* @property {string} productId - The product identifier
* @property {Object} fields - The current state of all
fields in the configuration
* @property {BomData} [bomData] - Bill of Materials data
(only present in BOM events)
* @property {Object} [quoteData] - Quote data (only
present in Quote events)
*/
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

749


<!-- page 750 -->
/**
* @typedef {Object} QuoteData
* @property {Object} quote - Quote-specific data
* @property {string} quote.SBQQ__PricebookId__c Pricebook identifier
* @property {string} quote.LGK__QueriedEditAccess__c Edit access status
* @property {Object} product - Configured product data
* @property {string} product.configuredProductId - ID of
the configured product
* @property {Object} product.configurationAttributes Configuration attributes
* @property {string}
product.configurationAttributes.LGK__Logik_Id__c - Logik
configuration ID
* @property {Object}
product.configurationAttributes.LGK__Configuration_Data__c Configuration data
* @property {Array}
product.configurationAttributes.LGK__Configuration_Data__c.it
ems - Configuration items
* @property {Object} product.optionConfiguration - Option
configuration data
* @property {Array} product.optionConfiguration.Dynamic Dynamic option configurations
*/
// Configuration
const logikUrl = 'https://renderdraw02.demo01.logik.io';
const runtimeToken = 'YIFFI0dluM7ULhibRGR2GB_3F2npxSn_Zw';
const productId = '01t8c00000RzlKoAAJ';
const fields = [
{ variableName: 'exampleBooleanField', value: true },
{
variableName: 'exampleArrayField',
value: ['alpha', 'delta', 'beta'],
},
{ variableName: 'exampleStringField', value: 'left' },
{ variableName: 'exampleNumberField', value: 21 },
];
/**
* Initializes the Logik UI web component with the
specified configuration parameters.
* @param {string} productId - The unique identifier for
the product. This is a configurable product id in the logik
Admin
* @param {string} runtimeToken - The authentication token
for runtime access. This can be created in the logik Admin
under Runtime Clients. The token must have include an origin
matching the url of the page that is hosting the web component.
* @param {string} tenantApiUrl - This
should be set to the url of your logik tenant. eg
https://example.demo01.logik.io
* @param {string} [assetURL] - Optional URL for asset
resources. If provided, sets the asset-url attribute. Defaults
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

750


<!-- page 751 -->
to the provided tenantApiUrl. You will most likely not need to
set this.
* @param {Array<{
*
variableName: string,
*
value: string | number | boolean | Array<string>
* }>} [fields] - A list of field values to set in the
initial state of the configuration.
* @returns {void}
*/
function initLogikUI(productId, runtimeToken,
tenantApiUrl, assetURL, fields) {
const logikuiEl = document.querySelector('logik-ui');
logikuiEl.setAttribute('product-id', productId);
logikuiEl.setAttribute('runtime-token', runtimeToken);
logikuiEl.setAttribute('tenant-api-url', tenantApiUrl);
if (assetURL) {
logikuiEl.setAttribute('asset-url', assetURL);
}
if (fields) {
logikuiEl.setAttribute('fields',
JSON.stringify(fields));
}
}
// Initialize the component
initLogikUI(productId, runtimeToken, logikUrl, false,
fields);
// Event Listeners
/**
* Event fired when the user cancels the configuration.
After this event is received,
* the configuration will be terminated and the logik-ui
component should be unmounted.
* @event logik-ui:cancel
* @type {CustomEvent}
* @property {Object} detail - An empty object indicating
the configuration was cancelled
*/
window.addEventListener('logik-ui:cancel', function
(event) {
console.log('Cancel event received', event);
});
/**
* Event fired when the user generates a quote. After this
event is received,
* the configuration will be terminated and the logik-ui
component should be unmounted.
* @event logik-ui:quote
* @type {CustomEvent}
* @property {Object} detail - The event details
* @property {QuoteData} detail.data - The quote data
*/
window.addEventListener('logik-ui:quote', function (event)
{
console.log('Quote event received', event);
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

751


<!-- page 752 -->
});
/**
* Event fired when the BOM changes during configuration
* @event logik-ui:bom
* @type {CustomEvent}
* @property {Object} detail - The event details
* @property {LogikConfigurationData} detail.data - The
configuration data with BOM information
*/
window.addEventListener('logik-ui:bom', function (event) {
console.log('BOM event received', event);
});
</script>
</body>
</html>
Configure help popups for layouts
Implement buyside help popups in ServiceNow CPQ.
Help popups give the user more information about a field in a layout. They resemble the
tooltip message display type, but differ in the following ways:
• Tool tips appear only when the condition of a message rule is met, whereas help popups are
always present on the layout
• Tool tips display only plain text, whereas help popups can include hyperlinks, lists, italics, bold
text, newlines, images, and dynamic text
• Tool tips appear on hover, whereas help popup icons must be clicked to display messages

Note: To learn how to display a message that appears as the result of a message rule, see
Change how messages are displayed to the end user.

Popup appearance
The image below shows a popup message that appears when the user clicks its help icon. To
illustrate dynamic text in a help popup, the second image shows additional text that appears as
the result of a selected picklist option.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

752


<!-- page 753 -->
To implement a message popup, add a column header called "help" in cell K1 of your CSV layout.
For a tier, columnset, or field, the format for a help popup is as follows:
{"content":"<help body>","heading":"<help
heading>","trigger":{"type":"icon","url":"<image.url>”,“label”:
“<Label>”}}
To assign the popup a button instead of an icon, use "type":"button". The button resembles the
following:
If you don't specify an image URL, a question mark will appear:
If you don't specify a label, the default value is "Help."

Formatting the popup contents
The following table shows how to control the formatting of the content of a message popup.
Message popup formatting options
Formatting option

Syntax

Output

Notes

Bold

Bold text

[text display in bold]

Can use underscores
instead of asterisks

Italic

Italic text

[text displays in italics] Can use underscore
instead of asterisk

Unordered list

Item\r- Item\rItem

• Item
• Item
• Item

Ordered list

1.Item\r2. Item
1. Item
\r3. Item
2. Item
3. Item

Newline

first
line\nsecond
line

first line
second line

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

753


<!-- page 754 -->
Message popup formatting options (continued)
Formatting option

Syntax

Output

Notes

Link

[link display
[link display text
Javascript will be
text](https://
appears as a clickable sanitized
www.google.com) link]

Image (GIF)

![alt text]
(image url
\"title text\")

Quotes around the
title text must be
escaped

Dynamic text

{{ fieldVariableName }}

Outputs the value of
the selected field in
the text

AgentCard specification
View the definition and field reference for the A2A discovery manifest used by the ServiceNow AI
Agent Studio.
The AgentCard is the A2A discovery manifest that identifies the agent to any conforming
orchestrator. It is served at the agent's well-known discovery endpoint and is what ServiceNow AI
Agent Studio reads when you register the external agent.

AgentCard definition
AgentCard(
name
= "Config Converse A2A Middleware",
description
= "Middleware service that bridges other
agents with Config
Converse using A2A protocol to configure
products based on
context provided by other agents. Provides
industry-standard
A2A protocol interface with JSON-RPC
transport.",
url
= <base_url>,
# your cpq tenant
base URL
version
= "1.0.0",
protocol_version= "0.3.0",
preferred_transport = TransportProtocol.jsonrpc,
default_input_modes =
ConfigConverseAgent.SUPPORTED_CONTENT_TYPES,
default_output_modes=
ConfigConverseAgent.SUPPORTED_CONTENT_TYPES,
capabilities
= capabilities,
skills
= [skill],
security_schemes= {
"bearer": HTTPAuthSecurityScheme(
type
= "http",
scheme
= "bearer",
bearer_format = None,
description
= "Logik phantom token. Obtain from
Logik Admin UI
under Settings -> Runtime Clients.
Token must
have CONFIG permission."
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

754


