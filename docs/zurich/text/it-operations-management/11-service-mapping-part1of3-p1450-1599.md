# Zurich IT Operations Management — Service Mapping

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 1450–1599 of 4823 | Part 1 of 3

Sections: Service Mapping (p1450)

---

<!-- page 1450 -->
Requesting a new certificate form table (continued)
Field

Description

Environment

The environment that you want your certificate
for. Options are:
• Development
• Disaster recovery
• Production
• Sub-Production

Renewal Tracking

Option to enable automatic-renewal of your
certificate. This option only applies if you don’t
select the Renew automatically field.

Renew Automatically

Option to set the automatically renew your
certificate.

How many days before expiry does the
certificate need to be renewed?

Number of days before the expiration of your
certificate, such that you want to renew the
certificate before those days.

Service Mapping
®

The ServiceNow Service Mapping application discovers all application services in your
organization and builds a comprehensive map of all devices, applications, and configuration
profiles used in these application services.
Service Mapping is available as a separate subscription and requires activation by Service
Mapping personnel.

Gain control with service-aware operations
Service Mapping enables IT departments of companies, organizations, and cloud companies
providing platform as a service to create a service-aware view of infrastructure.

Reach time to value quickly
Shorten the mapping process and improve accuracy with out-of-the-box options. Service
Mapping deploys different methods for collecting information about configuration items (CIs) and
organizing them into application services. The available mapping methods are: pattern-based,
tag-based, traffic-based, and discovery based on Predictive Intelligence.

Deliver on your multicloud strategy
Map services across dynamic cloud-based providers with a high degree of accuracy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1450


<!-- page 1451 -->
Explore

Configure

Learn about the various
methods of mapping
application services.

Plan and configure
your implementation.

Use

Reference

Review mapping
application services for
analysis and maintenance.

Get details about
components like roles,
tables, and properties.

Exploring Service Mapping
Service Mapping discovers all service instances in your organization and builds a
comprehensive map of all devices, applications, and configuration profiles used in these service
instances.
Video: Service Mapping Overview
This video provides an overview of Service Mapping on the ServiceNow AI Platform.

Who uses Service Mapping
Service Mapping enables IT departments of companies, organizations, and cloud companies
providing platform as a service to create a service-aware view of infrastructure.

How do you use Service Mapping
A service instance is a set of interconnected applications and hosts that are configured to
offer a service to the organization. Service instances can be internal, like an organization email
system or customer-facing, like an organization website. For example, creating financial reports
through a web-based application requires a computer, web server, application server, databases,
middleware, and network infrastructure. These applications and hosts are all configured to offer
the service of financial reporting.
Typically, IT departments create and maintain an inventory that treats devices and applications
as standalone, independent objects. Connections between the devices and applications are not
included. This is usually referred to as horizontal discovery. This method does not address the
biggest challenge for IT departments, which is understanding the connection and dependencies
between each object.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1451


<!-- page 1452 -->
Service Mapping maps dependencies, based on a connection between devices and
applications. This method is referred to as top-down mapping. The top-down mapping helps you
immediately see the impact of a problematic object on the rest of the service instance operation.
Comparison of horizontal and top-down mapping results

Service instance maps show infrastructure objects and semantic connections between them.
Service Mapping regenerates service instance maps regularly, to keep them updated and
relevant. Any faulty objects are shown along with the devices and applications they affect,
providing a visual clue of the state of the service instance.

How does Service Mapping work
Service Mapping can deploy different methods for creating application services. The main
method of Service Mapping discovering and mapping devices and applications is using
patterns. A pattern is a sequence of operations whose purpose is to detect attributes of devices
and applications and their outbound connections. If your organization uses tags for asset
management, you can use these tags to map service instances. Service Mapping can also
discover devices and applications by following traffic connections between them. This method
is referred to as traffic-based mapping. For more information, see Choose the right method for
discovery and mapping application services.

What to know before you begin
You can use Service Mapping only if the Discovery product is activated and set up.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1452


<!-- page 1453 -->
You must define users and configure credentials to allow Service Mapping and Discovery
access to applications and devices inside your organization network. For more information, see
Configuring Service Mapping.

Service Mapping on the ServiceNow AI Platform
Service Mapping relies on Discovery and the MID Server to discover devices and applications.
Service Mapping uses results of horizontal discovery performed by Discovery. The MID Server
facilitates communication between Service Mapping and devices and applications it discovers.
Data collected and organized by Service Mapping is visible in Event Management, Dependency
Views, and Application Portfolio Management (APM). With Event Management, you can view
events to take actions for recovering your organization application services. Dependency
Views shows relationships between devices and applications in the context of application
services they belong to. When integrated with APM, Service Mapping provides information
about components making up a business application and helps APM users to monitor business
application performance.
Service Mapping supports domain separation. If your ServiceNow AI Platform uses domain
separation, administrators and users can only see and manage application services belonging to
their own domain.
To view a list of Service Mapping plugin dependencies, see Plugins or applications installed with
ITOM Visibility.
Related topics
Application services
Event Management
Dependency Views
Choose the right method for discovery and mapping application services
Service Mapping deploys different methods for collecting information about configuration items
(CIs) and organizing them into application services. The available mapping methods are: patternbased, tag-based, traffic-based, and discovery based on Predictive Intelligence. Learn about the
mapping methods to use the ones that best suit the needs of your organization.

Mapping method

Description

Advantages

Automated Service
Suggestions

Predictive
Intelligence evaluates
connections
between application
fingerprints, CIs,
and processes, and
ranks their relevancy.
Service Mapping uses
this information to
create connections
based on connection
rules. It also
generates connection
suggestions for
servers and load
balancers for you
to decide which

Service Mapping
automatically adds
CI connections and
CIs they lead to based
on connection rules.
You can modify the
default connection
rules or create your
own to enhance this
discovery method.

Disadvantages

When using discovery
based on Predictive
Intelligence to identify
TCP connections
and processes,
deploy it in large onpremise deployments.
Predictive Intelligence
is a machine learning
solution and needs
training. To achieve
Discovery based on
Predictive Intelligence best results using
this discovery
is effective for
method, you must run
mapping multiple
discovery repeatedly.
application services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1453


<!-- page 1454 -->
Mapping method

Description

Advantages

connections to add
or remove from the
service instances.

Pattern-based
discovery

Tag-based discovery

Traffic-based
discovery

Service Mapping
uses patterns to
discover and map
CIs. A pattern is
a sequence of
commands designed
to detect attributes of
a CI and its outbound
connections. A
typical Service
Mapping pattern
consists of separate
algorithms for
identifying CIs
and finding CI
connections.
If your organization
uses tags for asset
management, you can
use these tags to map
service instances.
Discovery and Cloud
Provisioning and
Governance discover
tags assigned to CIs,
and populate the
CMDB with this data.
Service Mapping uses
the tag-related data
from the CMDB to
map services.
Service Mapping
can discover and
map configuration
items (CIs) following
their traffic-based
connections. This
method is referred
to as traffic-based
mapping and
complements patternbased mapping.
Depending on your
configuration, the
behavior of traffic-

Disadvantages

Service Mapping
may erroneously add
or remove dynamic
connections.
Pattern-based
discovery creates
precise and complete
service instances that
reliably represent the
service-aware view of
your organization's IT
infrastructure.

You can effectively
use tags to map
multiple application
services.
Starting with Service
Mapping Plus
version 1.16.3, take
advantage of the
Tag-based Service
Mapping workspace
to efficiently map your
application services. .

Using traffic-based
discovery is like
casting a finer net,
allowing Service
Mapping to find even
those CIs that it failed
to discover using
patterns.

Pattern-based
mapping requires
configuring
credentials, users,
and user permissions
to let Service
Mapping access
applications inside
your organization
private network. This
process may take time
and effort.

Service instances
mapped using tags
might not include
relevant CIs if those
CIs do not have the
correct tags.

While using trafficbased discovery
creates a more
inclusive map, it may
also result in mapping
many redundant CIs
that do not influence
the application
service operation.
It may clutter an
application service
with irrelevant CIs.
Use traffic-based
discovery at the initial
stages of discovering
an application service

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1454


<!-- page 1455 -->
Mapping method

Description

based discovery
varies.

Advantages

Disadvantages

and disable it once
you completed
discovery and finetuned the application
service.

Service Mapping with Agent Client Collector
Agent Client Collector enables the discovery and mapping of application services without
requiring you to set up credentials for the MID Server.
Using Agent Client Collector, you can deploy both top-down and machine learning-based
Service Mapping and benefit from a simplified approach to mapping application services.
For information on configuring Service Mapping to work with Agent Client Collector, see
Configure Agent Client Collector for use with Service Mapping.
CMDB-based mapping
Using data stored in the Configuration Management Database (CMDB), you can run top-down
discovery and map your organization's application services without having to access a MID
Server.
Top-down discovery begins with an IP address and retrieves the associated host. It then tries
to locate an available MID Server. If a MID Server isn’t available and CMDB-based mapping is
active, it is initiated. This feature uses incoming traffic already registered in the CMDB to pinpoint
the target process running on an identified IP address and searches for an application linked to
it. The application is then mapped as a node on the service map.
If an application isn’t identified, CMDB-based mapping uses Application Dependency Mapping
(ADM) logic to classify and create an application linked to the target process within the CMDB.
If ADM is unable to classify the application, it creates a simple application in the Application
[cmdb_ci_appl] table in the CMDB. For more information, see Application Dependency Mapping
(ADM) for Discovery.
For information on configuring Service Mapping for CMDB-based mapping, see Configure
Service Mapping to work with the Configuration Management Database (CMDB).
Automated Service Suggestions
Automated Service Suggestions simplifies the processing of mapping application services
or adding to an existing service by providing application service candidates using machine
learning. Mapped services provide key information to help you make data-driven decisions,
prioritize services, and respond to situations.
Using machine learning (ML), Service Mapping quickly identifies potential application
fingerprints based on discovered processes. It evaluates the relationship between these
fingerprints and configuration items (CIs) and creates meaningful connections. These
connections are used to create an application service map, a visual representation of a service.
Automated Service Suggestions further simplifies the mapping process by using the ML
information to calculate entry points, efficiently identifying where to begin mapping an
application service. It also generates a list of application service candidates. Each candidate
includes an entry point as well as a set of previously identified resources to include in the service
map. You can then select a candidate to create a new application service or to add to an existing
service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1455


<!-- page 1456 -->
Service Fingerprints
Service Fingerprints complements Automated Service Suggestions by identifying unique,
classified components of identified application service candidates. Presenting these
components facilitates the selection of the most suitable suggested application service. You
can view components of an application in your actual environment, including details such as
product, product category, publisher, and description. Use this information to search for specific
components you want to discover or to make informed decisions about which candidates to
convert into application services.
To use Service Fingerprints, you must download and install ITOM Content Service from the
®
ServiceNow Store and opt in to ITOM Content Service. For more information, see ITOM Content
Service.

Domain separation with Automated Service Suggestions
Automated Service Suggestions supports domain separation starting with version 1.9.0. No
support is currently offered for on-premise instances. Reach out to product management for
further information.
Related topics
Exploring Service Mapping
Service Mapping Workspace
Application service readiness dashboard in configurable workspace
Map application services based on Automated Service Suggestions
Discovery based on Predictive Intelligence
Service Mapping uses data processed by Predictive Intelligence to generate suggestions for
traffic-based connections.

Connection suggestions generated using Predictive Intelligence
Predictive Intelligence evaluates connections between application fingerprints, CIs, and
processes, and ranks their relevancy. Service Mapping uses this information to create
connections based on connection rules. It also generates connection suggestions for servers
and load balancers for you to decide which connections to add or remove from the service
instances. The confidence level indicates the likelihood of this connection being part of the
service instances.
• High - Commonly a connection to an internal component that is only used by this specific
component or application.
• Medium - Commonly a connection to a middleware component used by multiple services,
such as IBM MQ or Oracle WebLogic Server.
• Low - Commonly a connection to an application deployed on numerous servers in the
organization, typically for monitoring purposes, such as Tivoli Enterprise Monitoring Agents or
MID Server.
• Very low - Commonly a connection to a central application used by the entire organization, for
example, Microsoft Active Directory or Okta.
If Predictive Intelligence is enabled, Service Mapping automatically adds connections to service
instances based on connection rules. These suggestions are generated using traffic-related
data from the Configuration Management Database (CMDB) and the analysis of application
fingerprints, CIs, and processes by Predictive Intelligence.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1456


<!-- page 1457 -->
Connection rules based on connection suggestions
Connection rules enhance the connection suggestions generated using Predictive Intelligence.
Each rule contains a condition that describes an aspect of a traffic-based connection. The fields
available in conditions come from the Connection Suggestion [sa_ml_connection_suggestion]
table, which is only populated when you run top-down discovery. You can base your rules directly
on the connection suggestions. For example, create a rule for any connection with confidence
level High. Alternatively, if you know which CIs must be part of the service instances, you can
choose fields that point at these CIs.
When Service Mapping adds a connection based on connection rules, it performs the following
actions:
1. Associating the connection rule with the connection suggestion.
2. Changing the connection suggestion Decision attribute to Added By Rule.
3. During service rediscovery, adding one level of the actual CI connections to relevant
application services.
Every time application services are rediscovered, Service Mapping adds only one level of CI
connections. You may want to change the frequency in your discovery schedules to complete
mapping of the application services using connection rules.
Service Mapping evaluates only active connection rules and only for connection suggestions
that have the Undecided decision attribute. The system applies the rules using the following
algorithm:
1. Service Mapping checks local rules for a CI connection. If multiple rules are relevant for the
same CI connection, Service Mapping uses the Order attribute for the sequence: It evaluates
the rules from least to greatest Order value. By default, Service Mapping checks only 20 local
rules.
2. If a connection suggestion matches the connection rule condition, Service Mapping adds this
connection to the relevant application service.
3. If Service Mapping finds no match for local rules, the system starts evaluating and applying
global rules in ascending order using the Order attribute. By default, the system checks only
20 global rules.
4. If a connection suggestion matches the rule condition, the system adds it to all application
services. If a rule is configured to exclude suggested connections from certain services, the
system does not apply this rule to these services.
5. Every time Service Mapping rediscovers application services of the manual or discovered
type, it validates automatically added traffic-based connections against the active connection
rules. That way the system ensures that application services contain only relevant connections
based on the current and active connection rules.
6. If a rule is no longer valid, Service Mapping changes the decision attribute for its
corresponding connection suggestion to Undecided. Service Mapping also removes the
association between the connection rule and the connection suggestion. Unless Service
Mapping can apply a different connection rule to CI connections that became irrelevant,
Service Mapping removes them from the application services.
If necessary, you can modify the number of the local or global connection rules that the system
uses in the algorithm, as described in Properties installed with Service Mapping.

Enabling discovery based on Predictive Intelligence
Discovery based on Predictive Intelligence works at the product level. The
sa_ml.connection_suggestions.active property controls this feature. If traffic© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1457


<!-- page 1458 -->
based discovery was enabled in your deployment prior to the Quebec release and you used it to
discover at least one application service, discovery based on Predictive Intelligence is disabled
by default.
Related topics
Add CIs to multiple application services using connection rules
Add CIs for single application services using connection rules
Add or remove CIs for multiple application services using connection suggestions
Add or remove CIs for single application services using connection suggestions
Pattern-based discovery in Service Mapping
Pattern-based discovery is the main method of Service Mapping collecting data about devices
and applications used in application services. After Service Mapping collects data, it then
creates a map of application services and stores the collected data in the CMDB.
ServiceNow applications refer to devices and applications that comprise a service instance as
configuration items (CIs).
Service Mapping uses patterns to discover and map CIs. A pattern is a sequence of commands
designed to detect attributes of a CI and its outbound connections. A typical Service Mapping
pattern consists of two types of algorithms for identifying CIs and finding CI connections.
The starting point of any discovery process is an entry point. An entry point is a point where
clients access a service instance. For example, to map your electronic mailing service instance,
define an IP address or host name of the email server as an entry point. The discovery and
mapping process begins from Discovery performing the horizontal discovery to identify the host.
Once the host discovery is complete, Service Mapping starts the top-down discovery to find and
map applications running on this host.
Service Mapping uses MID Servers to communicate with CIs in your organization. MID Servers
are located inside your organization network and Service Mapping can communicate with them
without traversing firewalls.

Note: Currently, pattern operations do not support multi-languages. If values returned
from pattern operations are not in English, the returned data cannot be parsed properly and
the pattern discovery will fail.
The discovery and mapping process consists of the following interactions:
1. An administrator defines an service instance with an entry point for an application CI.
Service Mapping creates a record for the new service instance in the Mapped Application
Service [cmdb_ci_service_discovered] table.
2. The device hosting the application is identified.
a. Service Mapping checks if the device hosting this application CI exists in the CMDB.
b. If the device hosting this application CI does not exist, Service Mapping triggers Discovery to
detect host.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1458


<!-- page 1459 -->
c. Discovery creates the first set of probes for port discovery, referred to as Shazzam probes,
and places them as a discovery request in the External Communication Channel (ECC)
queue.
d. The MID Server checks the ECC queue and retrieves the discovery request assigned to it.
e. The MID Server runs the probes against the host and discovers open ports.

f. The MID Server passes information on the host ports to the ECC queue.
g. Discovery checks the ECC queue and receives information on the host ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1459


<!-- page 1460 -->
h. These steps are repeated for other types of probes: classification, identification, and
exploration.
i. Discovery adds the host to the CMDB.

j. During the host discovery using probes, Service Mapping checks the ECC queue if this
process is complete. When the host discovery is complete, Service Mapping checks
whether this host exists in the CMDB.

Note: For the detailed description of the horizontal discovery flow, refer to Horizontal
discovery process flow with probes and sensors.
3. Once the host is found in the CMDB, Service Mapping discovers the application running on
this host.
a. Service Mapping creates an application discovery request for the IP address of the entry
point. It then writes the request in the ECC queue and assigns a MID Server to the request.
b. The MID Server checks the ECC queue and retrieves the discovery request assigned to it.
c. The MID Server starts running identification sections of the patterns associated with the
classifier to find the match for the entry point. When the identification section matches the
entry point, the pattern discovers a CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1460


<!-- page 1461 -->
d. The MID Server starts running connectivity sections of the pattern to find outgoing
connections of the newly discovered CI.
e. The MID Server passes information on the discovered CI, its attributes, and connections to
the ECC queue.
f. Service Mapping checks the ECC queue and receives information on the newly discovered
CI.
Whenever Service Mapping checks the ECC queue and receives information on a
discovered CI, it checks these tables for any data on outbound connections related to
the CI: the cmdb_tcp and sa_flow_connection tables. If these two tables contain unique
data that patterns did not discover, Service Mapping enriches the information about the CI
connections and adds them to the map.
g. Service Mapping writes the information into the CMDB and adds this CI to the service
instance map.

h. Service Mapping creates the discovery requests for all applications to which the newly
discovered CI connects. Mapping is complete after Service Mapping maps a CI that either
does not have any outbound connections or is marked as a boundary. A boundary makes
Service Mapping stop discovery from this point and not follow outgoing connections.
4. The system regularly runs the service recomputation to query the CMDB for the latest CI
changes, add data for network and storage paths, and apply CI impact rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1461


<!-- page 1462 -->
Related topics
The ECC queue for Discovery
Horizontal discovery process flow with probes and sensors
Traffic-based discovery in Service Mapping
Tag-based discovery in Service Mapping
If your organization uses tags, or establishes them in a local ServiceNow instance, you can use
these tags to map application services.
A tag is a label that consists of a key-value pair. Your organization might use tags to categorize
its assets and to enhance query and reporting capabilities. Discovery and Cloud Provisioning
and Governance can discover tags used by all major cloud providers and container ecosystems.
Once the tags are discovered, Service Mapping can create application services based on
these tags. Typically organizations use tagging in virtualized, hyper-converged, or multi-cloud
infrastructures.
Example of using tagging in organization infrastructure
Segment

Technology providers

What is tagged

Cloud

Amazon Web Services (AWS),
Azure, Google Cloud Platform
(GCP), IBM Cloud Platform

IaaS, PaaS, FaaS, CaaS
resources

Hyper-converged

Nutanix

Virtual machines

Containers

Kubernetes, OpenShift
Container Platform, AWS ECS

Containers

Virtualization

VMware vCenter

Virtual machines

Unlike other mapping methods, tag-based mapping does not require configuring credentials
or providing users with elevated rights. You can effectively use tags to map multiple service
instances.

Tag-based discovery stages
The tag-based discovery and mapping process consists of the following stages:
1. Discovery and Cloud Provisioning and Governance discover tags for cloud and resource
configuration items (CIs) and then populate data for discovered tags into the Key Value
[cmdb_key_value] table.
2. The administrator creates CI tag categories and defines tag keys that the categories contain.
Tag categories contain tags with similar use. For example, if your organization has production
and staging environments, you could create "production" and "staging" tag values.
3. The administrator creates a tag-based service family and selects tag categories to use for its
mapping. CIs that have more than one tags assigned to them, can be part of multiple services.
◦ Only CIs with discovered tag keys for the selected tag categories become part of application
services.
◦ The administrator can narrow the criteria by defining specific tag values in addition to tag
categories.
◦ Service Mapping uses only CIs that have the matching values to create application services.
◦ CIs that have more than one tag assigned to them can be a part of multiple services.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1462


<!-- page 1463 -->
Note: When creating a service family for mapping services based on tags in domainseparated environment, you must pick the relevant leaf domain.
4. Service Mapping queries the CMDB for CIs with tag values that match the tag definitions for
this tag-based service family.
5. Service Mapping creates service candidates based on the defined tags.
Service Mapping populates tag-based services based on this service family only with CIs
belonging to the leaf domain to which the service family belongs.
6. The administrator selects the service candidates to map and starts the mapping process.
7. Service Mapping adds new application services to the Tag-Based Application Service
[cmdb_ci_service_by_tags] table.

Important: Service instances mapped using tags might not include relevant CIs if
those CIs do not have the correct tags.

8. Service Mapping maps application services by creating connections between tagged CIs
based on CI relationships. The Traversal Rules for Application Services [svc_traversal_rules]
table contains information used for creating tag-based application services.

Note: Service Mapping includes CIs that are part of these relationships even if these
CIs do not have tags assigned to them.

Creating tag-based services
You can create single tag-based application services using the Common Service Data Model
(CSDM) flow as described in populate application services using tags .
For information about how to create multiple tag-based services, see Map application services
using tags with classic Service Mapping.
Related topics
Tag-based discovery configuration
Tag Governance
Tag-based discovery for the Service Mapping Workspace
If your organization uses tags for asset management, you can use the Service Mapping
workspace to manage these tags and create tag-based application services.
A tag is a label that consists of a key-value pair, used to categorize and organize assets within
your organization. Tags enhance query and reporting capabilities, making it easier to manage
and track resources. Unlike other mapping methods, tag-based mapping does not require
configuring credentials or providing users with elevated rights. You can effectively use tags
to map multiple service instances. Discovery and Cloud Provisioning and Governance can
automatically detect tags from all major cloud providers and container ecosystems. Once these
tags are discovered, Service Mapping can leverage them to create and manage application
services. This approach is useful for resource management in virtualized, hyper-converged, and
multi-cloud environments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1463


<!-- page 1464 -->
For information about the traditional tag-based discovery process, see Tag-based discovery in
Service Mapping. Tag-based discovery for the Service Mapping workspace operates differently
and consists of the following stages:

Note:
Access to tag-based service mapping in the Service Mapping workspace requires the
installation of Service Mapping Plus version 1.16.3.
1. Discovery and Cloud Provisioning and Governance discover tags for cloud and resource
configuration items (CIs) and then populate data for discovered tags into the Key Value
[cmdb_key_value] table.
2. The administrator creates CI tag categories and defines tag keys that the categories contain.
Tag categories contain tags with similar use. For example, if your organization has production
and staging environments, you could create "production" and "staging" tag values.

Note: Starting with version 1.7.0, Tag Governance offers five predefined categories that
you can use without modification. Administrators can also modify these categories or add
new ones.
3. The process begins with the selection of a tag category from the available categories or a
category that the administrator creates.
◦ Only CIs with discovered tag keys for the selected tag categories become part of application
services.
◦ The administrator can narrow the criteria by defining specific tag values in addition to tag
categories.
◦ Service Mapping uses only CIs that have the matching values to create application services
with the service family being created automatically.
4. Service Mapping queries the CMDB for CIs with tag values that match the tag definitions for
the selected categories.
5. Service Mapping creates service candidates based on the defined tags.
6. The administrator selects the service candidates to map, starts the mapping process, and
names the tag-based service family. This record is saved so the administrator can return at any
time to monitor or continue the process later.
7. Service Mapping adds new application services to the Tag-Based Application Service
[cmdb_ci_service_by_tags] table.

Important: Service instances mapped using tags might not include relevant CIs if
those CIs do not have the correct tags.

8. The tag-based service content is calculated on demand either when the map is first viewed or
initiated manually.
Service Mapping maps application services by creating connections between tagged CIs
based on CI relationships. The Traversal Rules for Application Services [svc_traversal_rules]
table contains information used for creating tag-based application services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1464


<!-- page 1465 -->
The Manual CI Exclusions/Inclusions [svc_manual_ci_exclusions_inclusions] table can filter
out CI classes, helping to prevent them from being added by tags or traversal rules.

Note: Service Mapping includes CIs that are part of these relationships even if these
CIs do not have tags assigned to them.
Related topics
Tag-based mapping in the Service Mapping Workspace
Map your application services using tags in the Service Mapping Workspace
Traffic-based discovery in Service Mapping
Service Mapping can discover and map configuration items (CIs) following their traffic-based
connections. This method is referred to as traffic-based mapping and complements patternbased mapping.

What is traffic-based mapping
Traffic-based mapping can be seen as an enhancement to pattern-based mapping. While
pattern-based mapping relies on predefined rules and patterns to identify connections, trafficbased mapping analyzes network traffic to automatically discover connections between CIs in
your environment. This approach allows Service Mapping to find those CIs not discovered using
patterns alone.
Depending on your configuration, the behavior of traffic-based discovery can vary. If Predictive
Intelligence is enabled, Service Mapping automatically adds connections to service instances
based on connection rules. These suggestions are generated using traffic-related data from the
Configuration Management Database (CMDB) and the analysis of application fingerprints, CIs,
and processes by Predictive Intelligence.
If discovery based on Predictive Intelligence isn't enabled, Service Mapping automatically adds
traffic-based connections using data from the CMDB to the service instances. However, to keep
your service instances well-organized, you might need to manually remove connections to
irrelevant CIs.
Typically, if the connection suggestions feature is turned off, you use traffic-based discovery at
the initial stages of discovering application services. To maintain a clean, organized service map,
you can opt to turn off traffic-based discovery after you have completed the discovery and finetuning of your application services. For more information, see Fine-tune application services to
implement owner requests.
Connections created only through traffic-based discovery aren’t removed. However, if patternbased discovery runs after traffic-based discovery has run, it might create duplicate connections
between CIs. To avoid duplicates, the system removes any connections that were created by
traffic-based discovery if they’re also created by pattern-based discovery.

Traffic-related data from the CMDB
The system uses commands and network flow logs to collect traffic-related data and saves it in
the CMDB tables. Service Mapping retrieves this data from the tables to detect CI inbound and
outbound connections.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1465


<!-- page 1466 -->
Tables containing data collected using traffic-based methods
Table

Source

Used by Service Mapping to

Flow Connector
[sa_flow_connection]

Netflow and VPC logs

Discover dependencies, add
connections during top-down
discovery.

Flow Services IP/Port and
Statistics [sa_flow_service]

Netflow and VPC logs

Discover all services listening
on ports. In a base system,
Service Mapping does not use
data from this table.

Flow Server Communication
[sa_flow_server_comm]

Netflow and VPC logs

Discover services
communicating to other
services. In a base system,
Service Mapping does not use
data from this table.

TCP Connection [cmdb_tcp]

netstat and lsof commands

Discover connections during
top-down discovery.

In base systems, which are the default or standard configurations, traffic-based discovery
relies solely on TCP-related data collected using the netstat, ss, and lsof commands.
Discovery based on Netflow and VPC logs requires additional configuration. To enhance trafficbased discovery, you can configure Service Mapping to collect data from Netflow and VPC logs.
Service Mapping also accesses the TCP connection data collected by improved Application
Dependency Mapping (ADM), which Discovery performs as part of horizontal discovery. See
Application Dependency Mapping (ADM) for Discovery to learn more about this process.

Enabling traffic-based discovery in the system
Traffic-based discovery using commands is available in Service Mapping for use at any level.
You can enable it at different levels ranging from the most global to the most specific. For more
information, see Enable traffic-based discovery for an application service.
Product level
By default, traffic-based discovery in Service Mapping is turned off. The Traffic
based discovery (sa.traffic_based_discovery.active) property
controls traffic-based discovery at this level. Enabling traffic-based discovery at the
product level facilitates the discovery of all CIs in your environment. However, more
specific rules at the service instance, CI type, or specific CI levels can override
these settings.

Important: You can’t enable traffic-based discovery at other levels unless
it’s enabled at the product level.
The connection suggestions feature works at the product level. The
sa_ml.connection_suggestions.active property controls this feature.
If you enabled traffic-based discovery before the Quebec release and used it to
discover at least one application service, the connection suggestions feature is
turned off by default.
Service instance level
You can enable traffic-based discovery for an individual service instance. In this
case, Service Mapping uses traffic-based discovery for all CIs that make up this
service instance. However, if traffic-based discovery is turned off for some CI types

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1466


<!-- page 1467 -->
or specific CIs, those CIs aren’t discovered using this method, even if the service
instance is set to use traffic-based discovery.
For example, you enable traffic-based discovery for a specific service instance
that includes a Tomcat server, a MySQL database, and a web application. Service
Mapping uses traffic-based discovery to discover the Tomcat server, the MySQL
database, and the web application.
CI type level
You can create a discovery rule to include or exclude a CI type from traffic-based
discovery. This rule takes precedence over the setting that you choose for an
individual service instance.
For example, you enable traffic-based discovery for a specific service instance that
includes a Tomcat server, a MySQL database, and a web application. You create a
CI type rule that excludes all Tomcat servers from traffic-based discovery. Service
Mapping uses traffic-based discovery to discover the MySQL database and the web
application since there are no rules to exclude them.
Specific CI level
You can create a discovery rule to include or exclude a specific CI type from trafficbased discovery. This rule takes precedence over the setting that you choose for an
individual service instance or any rules for CI types.
For example, you enable traffic-based discovery for a specific service instance that
includes a Tomcat server, a MySQL database, and a web application. You create a
CI type rule that excludes all Tomcat servers from traffic-based discovery. However,
you also create a discovery rule enabling traffic-based discovery for a specific
Tomcat server. Service Mapping uses traffic-based discovery to discover the MySQL
database, the web application, and that specific Tomcat despite the CI type rule
excluding all Tomcat servers.
See Enable traffic-based discovery for CI types or specific CIs to learn more about
creating rules for CI types or specific CIs.
Related topics
Pattern-based discovery in Service Mapping
Add or remove CIs for multiple application services using connection suggestions
Add or remove CIs for single application services using connection suggestions
Remove CIs not belonging to application services
Data collection and discovery using Netflow
Data collection and discovery using VPC Flow Logs
Discovery of application services on cloud using Service Mapping
Service Mapping in cloud environments provides critical visibility into application dependencies
and connections. By identifying how different application components interact within IaaS and
PaaS environments, your organization can gain better insight into its application services and
improve overall service management.

IaaS and PaaS environments
To navigate the discovery process effectively, you must first understand the fundamental
differences between Infrastructure as a Service (IaaS) and Platform as a Service (PaaS)
environments.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1467


<!-- page 1468 -->
• IaaS - IaaS gives organizations virtual computing resources over the internet, enabling them
to manage and deploy their own apps and operating systems. In IaaS, Service Mapping uses
a similar discovery process as in private networks, identifying hosts and applications through
patterns.
• PaaS - PaaS offers a complete platform for building, launching, and running applications,
removing the need for organizations to manage hardware or servers directly. In PaaS,
Service Mapping must use cloud platform tools and service accounts to identify devices and
applications.

Performing Discovery in IaaS and PaaS Environments
The discovery process in IaaS environments mirrors that used for private networks.
1. Locating hosts - Service Mapping starts by using Discovery to locate hosts.
2. Identifying applications and connections - Patterns are used to identify applications and the
connections between those applications and the discovered hosts.
3. Top-down discovery - Service Mapping performs top-down discovery to map the relationships
and connections between devices and applications. It then creates a comprehensive map of
the application service.
In contrast to IaaS environments, PaaS environments require a distinct discovery process.
1. Using cloud platform tools and service accounts - The process begins with a dedicated
service account configured for the cloud environment hosting the application service. Service
Mapping and Discovery use this service account to access devices and applications. To learn
more about setting up an account, see Set up a cloud service account.
2. Horizontal discovery - Discovery performs horizontal discovery in two steps:
a. Probes are used to help identify infrastructure devices. See Horizontal discovery process
flow with probes and sensors for detailed information about the four phases of discovery
using probes.
b. Patterns help find the applications and services running on those devices. See Patternbased discovery in Service Mapping and Horizontal discovery process flow with patterns to
learn more about discovery using patterns.
3. Top-down discovery - Service Mapping then performs top-down discovery, creating a
comprehensive map of the application service.

Discovery methods for cloud environments
Service Mapping/Discovery
Approach

IaaS (Virtual
Machines, Servers)

PaaS (Functions,
Databases, Queues)

Top-down service mapping

Supported (Requires Not supported (or
OS credentials or
rarely supported)
deep agent access) by cloud metadata
discovery alone

Access to the OS
layer to trace live
connections

Tag-based mapping

Supported (Using
collected tags from
the cloud resources
and containers)

Availability
of organized
metadata (tags)

Machine Learning (ML)based mapping

Supported (Requires Supported, but
capturing running
requires deep
processes and
discovery (Only

Supported and
highly applicable
(Uses cloud-native
tagging/metadata)

Key requirement
difference

Access to
application
process data

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1468


<!-- page 1469 -->
Service Mapping/Discovery
Approach

IaaS (Virtual
Machines, Servers)

PaaS (Functions,
Databases, Queues)

network traffic,
thus requires deep
discovery)

available when using
methods that access
the underlying
OS/container
runtime)

Key requirement
difference

Consider an e-commerce application hosted on a cloud provider. In an IaaS environment,
Service Mapping identifies virtual machines, databases, and their connections, providing a
comprehensive view of the application's infrastructure. In a PaaS environment, it uses cloud
platform tools to map application components like managed databases, revealing critical
dependencies that impact performance and reliability. This visibility enables better resource
management, remediation, and optimization of the application service.
Related topics
Discovery for cloud environment
Service Mapping flow
Learn about high-level tasks users having different roles perform in Service Mapping.
In Service Mapping, users collaborate to map, review, and monitor an organization's application
services.

Note: For a complete list of Service Mapping roles, see Components installed with
Service Mapping.
A typical Service Mapping workflow has the following stages:
1. The administrator performs basic obligatory configurations to set up Service Mapping. See
Configuring Service Mapping for more details.
2. The administrator maps organization application services in bulk. In addition, the administrator
may map some application services individually. See Map multiple application services
suggested by classic Service Mapping for more information about mapping services in bulk.
3. The administrator fixes application service errors in bulk, as described in Fix application
service errors in bulk.
4. The administrator reviews the results of the initial mapping, resolving errors in individual
application services. See Fix errors in individual application service maps for more details.
5. The administrator sends fixed application services to the application service owner for review.
See Send application service maps for review for more information.
6. The service instance owner checks that the service instance maps are complete and all
major components comprising it are correctly represented. If necessary, the owner leaves
comments, referred to as reject messages, on service instance maps for the Service Mapping
administrator to implement. See Review application service maps.
7. The administrator uses the feedback from the application service owner to fine-tune the
application service maps, and then resends them to the owner for review. For more information
about fine-tuning an application service map, see Fine-tune application services to implement
owner requests.
8. If the revised service instance maps are satisfactory, the service instance owner approves
them. If not, the owner requests further fixes, which the administrator must address. See
Review application service maps.
9. The administrator finalizes the application services by configuring access and setting
advanced attributes, such as criticality. To learn more, see Application service completion.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1469


<!-- page 1470 -->
10. After the service instance definition is complete, the Service Mapping user can view
application service maps. To learn more about maintaining the application services using
Service Mapping, see Application service analysis and maintenance using classic Service
Mapping.
Service Mapping flow

In addition to these tasks, there may be a need to customize patterns that Service Mapping
uses to discover devices and applications forming application services. Users must have the
pd_admin role to customize patterns. In the base system, the service_mapping_admin role
contains the pd_role. Customizing patterns requires basic knowledge of programming.
Related topics
Control user access to application services
Tag-based mapping in the Service Mapping Workspace
The Tag-based service mapping dashboard offers an intuitive way to manage tag-based
services. Use the widgets, data visualizations, and list navigation to review and update your
services, or create new tag-based services in a few steps. The dashboard enhances the
Service Mapping Workspace, offering an efficient and user-friendly interface for organizing and
optimizing your service mappings.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1470


<!-- page 1471 -->
Prerequisites
Access to tag-based service mapping in the Service Mapping workspace requires the installation
of Service Mapping Plus version 1.16.3.

Required role
service_mapping_admin

Access
To open the dashboard, navigate to Workspaces > Service Mapping, then select the Tag-based
service mapping (

) icon from the navigation pane.

Key metrics
Selecting a widget in this section redirects you to the list for more detailed information.
Tag-based service maps
The number of service maps created using tag-based service mapping.
Service families with categories
The number of service families created to store service candidates and service
maps.
Tag categories
The number of tag categories, which group tags that have a related use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1471


<!-- page 1472 -->
Report
Title

Type

Description

Total number of tag-based
service maps vs. service
candidates

Two-variable line graph

A chart that shows the tagbased service candidates
and the tag-based service
maps created on a given day
over a 30-day period. Use this
information to evaluate the
actual number of services
mapped as compared to the
number of service candidates
created.

List navigation
The List navigation pane displays tag-based service mapping

information.
Display tag-based information and access tag-based actions through the following pages:
Tag-based service maps
• View or delete existing service maps.
• Initiate the flow to create a tag-based service.
Tag-based families with categories
• View service families that have at least one selected category.
• Select a service family to view detailed information including mapped services
and service candidates.
• Initiate the flow to create a tag-based service.
Tag categories
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1472


<!-- page 1473 -->
• View or delete existing tag categories.
• Select a tag category to view detailed information, including tag keys.
• Initiate the flow to create a tag category.

Domain separation
When creating a service family for mapping services based on tags in domain-separated
environment, you must pick the relevant leaf domain. Service Mapping populates tag-based
services based on this service family only with CIs belonging to the leaf domain to which the
service family belongs. If you have domain separation without Performance Analytics domain
support, you can't see data visualization for the total number of tag-based service maps versus
service candidates. You’re then redirected to install the Performance Analytics Domain Support
plugin.
For more information about domain separation and Service Mapping, see Domain separation
and Service Mapping.
About the tag-based application service form
The tag-based application service form provides a centralized location for viewing detailed
information about a selected tag-based service, including its configuration and its associated
configuration items.
The tag-based application service form offers a comprehensive view of a tag-based application
service. With actionable buttons and multiple tabs, you can manage and troubleshoot your tagbased application services and their associated configuration items (CIs).

Access
To access the tag-based application service form:
1. Navigate to Workspaces > Service Mapping > .
2. Select the Tag-based Service Mapping icon

from the navigation pane.

3. Select the Tag-based service maps tile.
4. Select the desired tag-based service to view the tag-based application service form.

Details tab
The Details tab displays basic information about the selected tag-based application service,
including the service family and tag categories associated with the service. Use this tab to
update the basic information about an application service, such as the description, the criticality,
or the operational status.

Service CIs tab
The Service CIs tab lists the configuration items (CIs) that are part of the selected tag-based
application service. The svc_by_tags.max_ci_limit property controls number of CIs
listed in this tab. Currently, the list is limited to the first 1,000 CIs that match the criteria for the
tag-based service.

Note: This list filters out manual endpoints, ensuring that only relevant CIs are displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1473


<!-- page 1474 -->
Tagged CIs tab
The Tagged CIs tab lists all CIs that meet the criteria for a tag-based application service, up to
4,000. The sa.it_service.list_cis_max_count property controls this limit. This list
includes CIs belonging to the application service (also listed on the Service CIs tab) and up
to 3,000 additional CIs. This tab is useful for building new tag-based application services or
troubleshooting existing services with a preview of relevant CIs. However, no CIs beyond the
4000 limit are displayed.
Traversal rules in Service Mapping
Traversal rules identify and map relationships between configuration items to create
comprehensive application service maps. They connect relevant configuration items based on
predefined relationships, promoting accurate service mapping and visualization.
Traversal rules facilitate comprehensive service mapping by identifying related configuration
items (CIs) through specific relationships that exist in the Configuration Management Database
(CMDB). These rules support the mapping of related CIs even when they aren’t directly tagged,
providing a more accurate service map.

Components of traversal rules
When configuring traversal rules, it’s essential to add them in the correct order, as tag-based
discovery uses these rules to identify CIs that can be mapped.
The Service Mapping administrator (service_mapping_admin) manages traversal rules in the
Traversal Rules for Application Services [svc_traversal_rules] table. When configuring these
rules, the following key components are considered:
• Parent Type: The CI class that serves as the starting point for mapping related configuration
items that belong to the Child class as specified by the traversal rule.
• Relationship: The specific association or link between the Parent CI and Child CI that
determines how they’re related in the service mapping context. The direction of the traversal
depends on the Is Reverse setting.
• Child Type: The CI class that contains the related configuration items being mapped from the
Parent CI class as specified by the traversal rule.
• Priority Level: The level that specifies the order in which traversal rules are applied, with lower
numbers taking precedence over higher numbers.
• Is Reverse: A flag that determines the direction of traversal for the relationship between Parent
CI and Child CI. When selected, the mapping process starts from the Child CI instead of the
Parent CI.

Note: To promote accurate mapping, configure traversal rules with the correct priority
levels, as tag-based discovery relies on these rules to identify mappable CIs.

Configuring traversal rules
Service Mapping includes predefined traversal rules, simplifying the initial configuration. These
rules provide a starting point for your tag-based service mapping setup. For details on the
specific predefined rules, see Predefined traversal rules for application services in Service
Mapping.
In addition to these predefined traversal rules, you can configure custom traversal rules to meet
your organization's specific needs. For detailed instructions on how to configure traversal rules,
including information on the required fields and settings, see Traversal Rules for Application
Services form completion.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1474


<!-- page 1475 -->
By default, you can only have five traversal rules participate in tag-based discovery. However, you
can adjust this limit by configuring the sys_property svc_traversal.rules.active
system property to enable more active traversal rules.

Configuring Service Mapping
You get started with Service Mapping by configuring roles, credentials, and MID Server
connections.
Setting up Service Mapping is the first stage in the Service Mapping workflow.
Service Mapping workflow

Service Mapping is part of the ServiceNow AI Platform and deploys some of its platform-wide
mechanisms and features. At the same time, there are some configurations that are specific to
Service Mapping only.

Warning: The Service Mapping setup for the Advance Release is different from the
standard Service Mapping setup.
Perform the following tasks in the exact order they are listed below:
1. Request Service Mapping.
2. Install Service Mapping Plus.
3. Install and configure MID Server. MID Servers, which are located in the enterprise private
network, facilitate communication between servers on the network and some ServiceNow
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1475


<!-- page 1476 -->
applications, such as Service Mapping, and Discovery. For more information, see MID Server
configuration for Service Mapping.
4. Verify that Discovery is set up and runs horizontal discovery as expected.
5. Configure credentials required for host discovery.
6. Configure credentials required for Service Mapping to access applications inside your
organization private network. See Prerequisites for performing top-down discovery using
Service Mapping.
7. If your organization network contains load balancers running on a Linux host, create a
discovery behavior for load balancers.
8. Grant the following Service Mapping roles to relevant users:
service_mapping_admin
Sets up the Service Mapping application. Maps, fixes, and maintains service
instances. Also performs advanced configuration and customization of the
product. Assign this role to application administrators.
service_mapping_user
Views maps for operational service instances to plan change or migration, as
well as analyze the continuity and availability of services. Assign this role to
application users.
sm_app_owner
Provides information necessary for successful mapping of a service instance.
Once a service is mapped, this user reviews the results and either approves it
or suggests changes. Assign the sm_app_owner role to users who own service
instances and are familiar with the infrastructure and applications that make up
the services.
9. Verify that Service Mapping is set up properly.
10. If your organization has a ServiceNow deployment with customized Discovery or CMDB
attributes, perform additional configuration described in KB0647574: Preparing customized
ServiceNow deployments to work with Service Mapping .
In addition to the obligatory setup configurations described here, you may need to perform
additional configurations after you complete the initial mapping process. For more information,
see Advanced Service Mapping configuration.
Request Service Mapping
Service Mapping is available under the ITOM Visibility subscription and requires activation by
ServiceNow personnel.

Before you begin

Role required: none
To purchase a subscription, contact your ServiceNow account manager. The account manager
can arrange to have the plugin activated on your organization's production and subproduction
instances, generally within a few days.
If you don't have an account manager, decide to delay activation after purchase, or want to
evaluate the product on a subproduction instance without charge, follow these steps.
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1476


<!-- page 1477 -->
About this task

The following plugins are activated automatically when the Service Mapping plugin
(com.snc.service-mapping) is activated:
• Discovery (com.snc.discovery)

Note: If you're activating the Discovery plugin for the first time in the Zurich release,
install the Discovery (com.snc.discovery) plugin first, then install the Discovery and
Service Mapping Patterns (com.sn_itom_pattern) plugin version 1.0.52 for Cloud
Discovery to work. You can then upgrade to Zurich.
• Pattern Designer (com.snc.pattern.designer)
• Cloud Provisioning and Governance Core (com.snc.cloud.core)
• Performance Analytics – Content Pack – Service Mapping (com.snc.servicemapping.pa.content)
• Event Management and Service Mapping Core (com.snc.service-watch)

Note: The Event Management and Service Mapping Core (com.snc.service-watch)
plugin is different from the Event Management plugin (com.glideapp.itom.snac).

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1477


<!-- page 1478 -->
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Related topics
Credentials required for host discovery
Install Service Mapping Plus
You can install the Service Mapping Plus application (sn_sm_scoped_app) if you have the admin
®
role. The application installs related ServiceNow Store applications and plugins if they are not
already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with Service Mapping Plus:
• Scheduled jobs
• Tables
For more information, see Components installed with Service Mapping Plus.
To view a list of Service Mapping plugin dependencies, see Plugins or applications installed with
ITOM Visibility.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Service Mapping Plus application (sn_sm_scoped_app) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
MID Server configuration for Service Mapping
Configure Service Mapping and MID Servers to work together.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1478


<!-- page 1479 -->
What is the MID Server
The Management, Instrumentation, and Discovery (MID) Server is a Java application that runs
as a Windows service or UNIX daemon on a server. MID Servers, which are located in the
enterprise private network, facilitate communication between servers on the network and some
ServiceNow applications, such as Service Mapping, and Discovery.

Note: If the Service Mapping (com.sn_itom_pattern) plugin is activated on the instance
and a language plugin (for example, Spanish) is also activated, make sure that the MID
Server language is also set to English/None on the user record.

MID Server selection criteria
Most environments require multiple MID Servers, with Service Mapping using the relevant MID
Server for discovery. MID Servers have the following selection criteria that Service Mapping can
use to choose the relevant MID Server:
• Application — defines what application a MID Server works with. Set it to Service Mapping to
reserve this MID Server exclusively to Service Mapping discovery requests. Alternatively, set it
to ALL to allow any ServiceNow application to use this MID Server.
• Capability — defines the network capability. For Service Mapping, set this parameter to ALL or
any combination of SSH, WMI, SNMP, and Cloud Provisioning and Governance . See Configure
MID Server capabilities .
• IP range — limits operation of this MID Server to this IP range. Service Mapping does not
choose this MID Server for a discovery request whose endpoint is outside this IP range. See
Configure an IP address range for the MID Server .

Note: For information on how to bypass MID Server configuration based on IP range,
see Fine-tune Service Mapping with MID affinity and IP reuse.
Service Mapping selects a MID Server using the following algorithm:
• Service Mapping chooses the MID Server whose selection criteria best match the parameters
of the discovery request.
• If there are no MID Servers with matching selection criteria, Service Mapping chooses the
default MID Server.
• If there are no MID Servers with matching selection criteria or default MID Server, Service
Mapping cannot start the discovery process.
While by default Service Mapping uses this algorithm in all deployments upgraded from Istanbul
or Jakarta, it can support both new and legacy algorithms for selecting a MID Server. For more
information, see Choose MID Server selection algorithm.

Default MID Servers for Service Mapping
In addition to selection criteria, you can configure one of the MID Servers as the default server
that Service Mapping uses. If there are no MID Servers with matching application, capability, or
IP range, Service Mapping uses the default MID Server. See Configure a default MID Server for
each application .

Using PowerShell for discovery
MID Servers can use PowerShell to directly communicate with Windows servers using both WMI
and WinRM protocols. For Windows services using the WinRM protocol, the PowerShell process
establishes a secure PSSession (PowerShell Remoting session) that stays open until the MID
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1479


<!-- page 1480 -->
Server finishes querying a Windows server. For Windows servers using the WMI protocol, the
PowerShell process sends every PowerShell command with credentials.
If you do not configure MID Servers to use PowerShell and PowerShell Remoting, MID Servers
use WMI.
ServiceNow now supports PowerShell 3.0 up to 5.1.

MID Server credential-less discovery with Nmap
If the MID Server does not have sufficient credentials to access a device or application, it can
run Network Mapper (Nmap) commands to collect basic information without using credentials.
Credential-less discovery with Nmap requires additional configuration as described in Install and
uninstall Nmap on a MID Server .
ServiceNow applications refer to devices and applications that comprise a service instance as
configuration items (CIs).

Placing MID Servers
The number of MID Servers that you require and where you place them depends on your
organization needs. If you want to map devices and applications inside your private network,
place the MID Servers inside the private network. If you want to map devices and applications
located in the DMZ, place the MID Servers both in the DMZ and inside the private network.
Placing MID Servers inside private network

In deployments where domain separation is enabled and domains are configured to form a
hierarchy, MID Servers must be placed in the lowest domain level, a "leaf domain".

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1480


<!-- page 1481 -->
Placement of MID Servers in domain-seprated environments

Once MID Servers MID Servers are installed, configure them to work with Service Mapping for
the best discovery results.
Related topics
Pattern-based discovery in Service Mapping
MID Server connection prerequisites
Credential-less Discovery with Nmap
Credential-less Application Discovery
Multiple MID Server deployments
MID Server installation
MID Server properties used by Service Mapping
Choose MID Server selection algorithm
Service Mapping supports the new and the legacy algorithms for selecting a MID Server for a
discovery request. Depending on your organization needs, you can choose which algorithm to
enable.

Before you begin

Role required: admin or service_mapping_admin

About this task

Service Mapping selects a MID Server using the following algorithm:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1481


<!-- page 1482 -->
• Service Mapping chooses the MID Server whose selection criteria best match the parameters
of the discovery request.
• If there are no MID Servers with matching selection criteria, Service Mapping chooses the
default MID Server.
• If there are no MID Servers with matching selection criteria or default MID Server, Service
Mapping cannot start the discovery process.
By default, Service Mapping uses this algorithm in all fresh installs and deployments upgraded
from Istanbul or Jakarta.
In upgraded deployments, Service Mapping selects a MID Server using a legacy algorithm:
• Service Mapping chooses the MID Server whose application criteria is set to
ServiceMapping or to ALL.
• By default, Service Mapping selects the MID Server whose IP range matches the IP in the
discovery request.
• If Service Mapping cannot find a MID Server with the matching IP range and matching
application, it assigns the discovery request to the default MID Server.
• If there is no default MID Server and none of the MID Servers have IP ranges configured for
them, Service Mapping uses a random MID Server.
• If there is no default MID Server and no IP range matches the IP in the discovery request,
Service Mapping cannot start the discovery process.
By default, Service Mapping uses the legacy algorithm in all deployments upgraded to Istanbul
and earlier.

Procedure
1. Navigate to Service Mapping > Administration > Properties.
2. To enable the new algorithm for deployments upgraded to Istanbul and earlier:
a. Clear the Enable Legacy MID selection algorithm check box.
b. Click Save.
c. Configure MID Server selection criteria as described in MID Server configuration for Service
Mapping.
3. To enable the legacy algorithm for the Zurich deployment:
a. Select the Enable Legacy MID selection algorithm check box.
b. Click Save.
c. Configure MID Server selection criteria as described in MID Server configuration for Service
Mapping in upgraded deployments.
MID Server configuration for Service Mapping in upgraded deployments
For ServiceNow deployments upgraded from earlier versions to Istanbul, Service Mapping uses
the legacy algorithm to choose a MID Server for a discovery request.
MID Servers have the following selection criteria that Service Mapping in upgraded deployments
uses to choose a MID Server for a discovery request:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1482


<!-- page 1483 -->
• Application — defines what application a MID Server works with. Set it to Service Mapping to
reserve this MID Server exclusively to Service Mapping discovery requests. Alternatively, set it
to ALL to allow any ServiceNow application to use this MID Server.
In earlier releases, you could configure MID Servers to work only with Service Mapping by
using the Capability parameter. If you had MID Servers with this configuration, during the
upgrade to Istanbul the application parameter is automatically set to ServiceMapping for
them.
• IP range — limits operation of this MID Server to this IP range. Service Mapping does not
choose this MID Server for a discovery request whose endpoint is outside this IP range.
In addition to the IP range, you can configure one of the MID Servers as the default server that
Service Mapping uses. For operational information, see Configure a default MID Server for
Service Mapping for upgraded deployments.
In upgraded deployments, Service Mapping selects a MID Server using a legacy algorithm:
• Service Mapping chooses the MID Server whose application criteria is set to
ServiceMapping or to ALL.
• By default, Service Mapping selects the MID Server whose IP range matches the IP in the
discovery request.
• If Service Mapping cannot find a MID Server with the matching IP range and matching
application, it assigns the discovery request to the default MID Server.
• If there is no default MID Server and none of the MID Servers have IP ranges configured for
them, Service Mapping uses a random MID Server.
• If there is no default MID Server and no IP range matches the IP in the discovery request,
Service Mapping cannot start the discovery process.
The new algorithm for selecting MID Servers uses an extra selection criteria: capability. It allows
Service Mapping to take a network protocol into consideration. For information about updated
selection criteria and the new MID Server selection algorithm, see Choose MID Server selection
algorithm.
While by default Service Mapping uses the legacy algorithm in upgraded deployments, it can
support both new and legacy algorithms for selecting a MID Server. If necessary, you can enable
the new MID Server selection algorithm for your upgraded deployment. For more information,
see Choose MID Server selection algorithm.
Related topics
Configure an IP address range for the MID Server
Configure a default MID Server for Service Mapping for upgraded deployments
In deployments upgraded to Istanbul or earlier, Service Mapping uses the default MID Server
when it cannot find a MID Server with the matching IP range. Configuring a default MID Server
improves the discovery process.

Before you begin

Role required: service_mapping_admin
Perform this procedure only for deployments upgraded to Istanbul or earlier. For fresh installs,
perform Configure a default MID Server for each application .
Ensure that you know the name of the MID Server you want to configure as the default MID
Server for Service Mapping.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1483


<!-- page 1484 -->
About this task

In upgraded deployments, Service Mapping selects a MID Server using a legacy algorithm:
• Service Mapping chooses the MID Server whose application criteria is set to
ServiceMapping or to ALL.
• By default, Service Mapping selects the MID Server whose IP range matches the IP in the
discovery request.
• If Service Mapping cannot find a MID Server with the matching IP range and matching
application, it assigns the discovery request to the default MID Server.
• If there is no default MID Server and none of the MID Servers have IP ranges configured for
them, Service Mapping uses a random MID Server.
• If there is no default MID Server and no IP range matches the IP in the discovery request,
Service Mapping cannot start the discovery process.

Procedure
1. Navigate to System Properties by entering sys_properties.list in the navigation filter.
2. Click New.
3. Configure values for the new property as follows:

Property

Description

Name

Enter mid.server.sm_default.

Description

Enter a free text description of the use of this
MID Server.

Type

Select string.

Value

Enter the name of the MID Server you want to
configure as the default for Service Mapping.

4. Click Update.
Related topics
MID Server configuration for Service Mapping
Prerequisites for performing top-down discovery using Service Mapping
Learn about credentials, users, and user permissions you must configure to let Service Mapping
access and discover applications inside your organization private network.
Configure the relevant requirements to enable successful top-down discovery:
Host credentials
Service Mapping uses credentials of the hosts to access applications running
on this host. Typically, host credentials are enough for top-down discovery. For
example, to discover the HP Service Manager Application Server, configure only
credentials for accessing the server hosting this application, SSH credentials, or
Windows credentials.
Applicative credentials
To discover some applications, Service Mapping needs separate credentials from
credentials of the host on which such applications run. This type of credentials is
referred to in ServiceNow as applicative credentials. For example, to discover the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1484


<!-- page 1485 -->
ABAP SAP Central Services (ASCS), configure applicative credential in addition to
the host credentials.
Elevated rights for Unix-based hosts
For Unix-based hosts, configure on MID Servers, you must provide a user with sudolevel credentials on all Unix-based hosts in your organization. For example, if the
server hosting ASCS is Unix-based, provide a user with elevated rights to be able to
run discovery commands against this Unix-based server.
SNMP community credentials
Configure SNMP community credentials to allow Service Mapping and Discovery
to query network devices using the SNMP protocol. For example, configure SNMP
community credentials for A10 Networks Thunder ADC.
Users or user permissions
You may need to provide additional users or user permissions to run certain
commands or access certain directories. For example, for ASCS, provide a user with
permissions to run SOAP on RFC read table function.
The ServiceNow AI Platform provides a centralized way of configuring credentials for Discovery,
Service Mapping, and other applications. It allows you to configure credentials for hosts and
applications only once. If you have already configured host-related credentials for another
application, you do not need to do it again for Service Mapping.
You can assign credentials to specific MID Servers or keep credential generic so all MID Servers
can use them. MID Servers retrieve commands and credentials from the ServiceNow instance
and apply them to discover CIs inside organization private network.
Assigning credentials to the MID Server that uses them to access CIs

Use the following guidelines to decide for which MID Server to create credentials:
• If all CIs, belonging to the same CI type, share a credential, you do not need to specify a MID
Server for it. In that case, it is used on all MID Servers by default.

Note: Specifying the MID Server when configuring credentials is optional.
• If CIs of the same type and on the same network have different credentials, configure these
credentials and define order in which Service Mapping uses them when trying to connect to
these CIs.
In addition to generic credentials, you configure on MID Servers, you must configure sudo-level
credentials on all Unix-based hosts in your organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1485


<!-- page 1486 -->
If the MID Server does not have sufficient credentials to access a device or application, it can
run Network Mapper (Nmap) commands to collect basic information without using credentials.
Credential-less discovery with Nmap requires additional configuration as described in Install and
uninstall Nmap on a MID Server .
Review the list of credentials necessary to discover hosts and applications supported in the
base system.

Application

CI type

Configure this

AIX OS

AIX Server
[cmdb_ci_aix_server]

Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.

IBM z/OS

IBM zOS server Server
[cmdb_ci_ibm_zos_server]

• Run the USS service on the
port 22 on the z/OS server.
• On the ServiceNow AI
Platform, configure SSH
credentials .
• Provide the user with the
following permissions:
◦ To write into the /tmp
directory.
◦ To see all user processes.
◦ To run REXX scripts.
On the ServiceNow AI
Platform, configure SSH
credentials .
Provide the user with the
following permissions:
• To write into the /tmp
directory.
• To see all user processes.
• To run REXX scripts.

HP-UX OS

HPUX Server
[cmdb_ci_hpux_server]

Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
On the ServiceNow AI
Platform, configure SSH
credentials .

Linux OS

Linux Server
[cmdb_ci_linux_server]

Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1486


<!-- page 1487 -->
Application

CI type

Configure this

On the ServiceNow AI
Platform, configure SSH
credentials .
Solaris OS

Solaris Server
[cmdb_ci_solaris_server]

Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.

Windows OS

Windows Server
[cmdb_ci_windows_server]

On the ServiceNow AI
Platform, configure a domain
user for accessing the
Windows OS as described in
Windows credentials .
Provide all necessary
credentials and permissions
as described in Credentials
required for host discovery.

A10 Load Balancing

A10 Load Balancer
[cmdb_ci_lb_A10]

Configure applicative
credentials .
Configure SNMP credentials

Windows Active Directory
Domain Services

Active Directory
Domain Controller
[cmdb_ci_ad_controller]

.

On the ServiceNow AI
Platform, configure a domain
user for accessing the
Windows OS as described in
Windows credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

AWS DynamoDB

DynamoDB Global Table
• On the AWS Console,
[cmdb_ci_dynamodb_global_table]
provide a user with the
following permissions:
AmazonDynamoDBReadOnly
Access and
AWSLambdaInvocationDynamoDB.
• On the ServiceNow AI
®
Platform , configure AWS
credentials, using a secret
key and an access key.

Amazon Web Services (AWS)
Elastic Load Balancing

Load Balancer Service
[cmdb_ci_lb_service]

Configure Amazon Web
Services
credentials.
On the ServiceNow AI
Platform, create a service
account. Set the Account ID
to the Amazon ELB account
ID as it appears in the AWS
Management Console.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1487


<!-- page 1488 -->
Application

CI type

Amazon Web Services (AWS)
API Gateway

Configure this

Configure Amazon Web
Services
credentials.
On the ServiceNow AI
Platform, create a service
account. Set the Account
ID to the Amazon account
ID to which API Gateway
belongs. Use the Account
ID as it appears in the AWS
Management Console.
Provide a user with
permissions to run the
apigateway:GET function for
just the GET action in API
Gateway.
Ensure to place the MID
Server on the virtual machine
that is part of the service
account that you are planning
to discover.

Amazon Web Services (AWS)
Elastic Compute Cloud (EC2)

Windows Server
[cmdb_ci_windows_server]
or Linux Server
[cmdb_ci_linux_server]

(If hosted on a Unix server), on
the ServiceNow AI Platform,
configure SSH credentials .
(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .
On the ServiceNow AI
Platform, create a service
account. Set the Account
ID to the Amazon account
ID to which API Gateway
belongs. Use the Account
ID as it appears in the AWS
Management Console.
Ensure to place the MID
Server inside the Amazon
cloud.

Amazon Web Services (AWS)
Relational Database Service
(RDS)

Cloud DataBase
[cmdb_ci_cloud_database]

Configure Amazon Web
Services
credentials.
On the ServiceNow AI
Platform, create a service
account. Set the Account ID
to the Amazon account ID to
which RDS belongs. Use the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1488


<!-- page 1489 -->
Application

CI type

Configure this

Account ID as it appears in the
AWS Management Console.
Ensure to place the MID
Server inside the Amazon
cloud.
Amazon Web Services (AWS)
Lambda

Cloud Function
[cmdb_ci_cloud_function]

Configure Amazon Web
Services
credentials.
On the ServiceNow AI
Platform, create a service
account. Set the Account
ID to the Amazon account
IT to which AWS Lambda
belongs. Use the Account
ID as it appears in the AWS
Management Console.
Ensure to place the MID
Server on the virtual machine
that is part of the service
account that you are planning
to discover.
Provide a user with
permissions to run
the ListFunctions API
with the Resource:
arn:aws:lambda:region:accountid: function:function-name.
Provide a user with
permissions to run the
GetFunction API with the
Resource: ‘*’.

Apache Tomcat

Tomcat
[cmdb_ci_app_server_tomcat]

Give the user elevated rights
to execute Service Mapping
commands requiring a
privileged user.
(If hosted on a Unix server), on
the ServiceNow AI Platform,
configure SSH credentials .
(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1489


<!-- page 1490 -->
Application

CI type

Configure this

Apache Tomcat WAR

Tomcat WAR
Give the user elevated rights
[cmdb_ci_app_server_tomcat_war]
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on UNIX), on the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .
Apache Web Server

Apache Web Server
(If hosted on UNIX) Give
[cmdb_ci_apache_web_server] the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
On the server hosting the
Apache Web Server, give the
user permission to execute
the following command:
$APACHEHOME/bin/
httpd –V.
On the server hosting the
Apache Web Server, verify
that the $APACHEHOME/bin/
envvar file is configured with
the correct native library path.
(If hosted on UNIX), on the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
App TNS Service

[cmdb_ci_appl_ora_tns]

Give the user elevated rights
to run Service Mapping
commands requiring a
privileged user.
(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1490


<!-- page 1491 -->
Application

CI type

Configure this

domain user for accessing the
Windows OS as described in
Windows credentials .
(If hosted on Linux or UNIX),
on the ServiceNow AI
Platform, configure SSH
credentials .
F5 BIG-IP Global Traffic
Load Balancer Service
Manager (GTM) and F5 BIG-IP [cmdb_ci_lb_service]
Local Traffic Manager (LTM)

• To successfully discover
the load balancer pool
members, set the display
service names option
(bigpipe.displayservicenames)
of the load balancer to false
on the F5 load balancer.
• For F5 Load Balancer
pattern:
◦ Configure SNMP
credentials
on the
ServiceNow AI Platform.
◦ (Optional) If there
are iRules or SNMP
community credentials
are not enough for
discovering outgoing
connections, configure
SSH credentials .

Note: If you do not
want to use SSH
credentials, you can
use the REST API to
create a connection
to F5 BIG-IP devices.
Service Mapping uses
the SSH credentials to
retrieve connections
that are not from CMDB.
Discovering connections
using the SSH protocol
is a failover mechanism
for the SNMP-based
discovery.
• For F5 Load Balancer SSH
pattern:
◦ Configure SSH
credentials .
◦ Verify permissions for the
following SSH commands:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1491


<!-- page 1492 -->
Application

CI type

Configure this

▪ list auth
partition all
▪ list sys globalsettings
▪ show sys
hardware
▪ list sys db
failover.state
▪ list net self
one-line
▪ show sys macaddress | grep
interface
▪ show net
interface fieldfmt
▪ show net self
| grep -e 'Mac
Address' 'IP:'
▪ list ltm pool |
grep -e 'pool'
'mode'
▪ list ltm pool /
<partition_name>/
* | grep -e
'pool' 'mode'
▪ show ltm pool
| grep -e
'Ltm::' 'Total
Connections'
▪ show ltm pool /
<partition_name>/
* |grep -e
'Ltm::' 'Total
Connections'
▪ list sys db
bigpipe.displayservicenames
| grep value
▪ show /net
vlan | grep -e
'Interface Name'
'Mac' 'Tag'
▪ show ltm virtual
detail | grep
-e 'Server:'
'State' 'Pool:'
'Destination'
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1492


<!-- page 1493 -->
Application

CI type

Configure this

'Total
Connections'
▪ show ltm
virtual detail /
<partition_name>/
* | grep -e
'Server:'
'State' 'Pool:'
'Destination'
'Total
Connections'
▪ show gtm wideip
| grep -e
'WideIp' 'State'
▪ list wideip a /
<partition_name>/
* | grep -e
'WideIp' 'State'
▪ show gtm wideip
all | grep -e
'WideIp' 'State'
▪ list gtm wideip
▪ list gtm wideip
all
• For F5REST pattern:
◦ For horizontal discovery
using Discovery, provide
read-only permissions to
run the following APIs:
▪ "https://" +
$ipAddress +
"/mgmt/tm/ltm/
pool"
▪ "https://" +
$ipAddress +
"/mgmt/tm/sys/
global-settings"
▪ "https://" +
$ipAddress +
"/mgmt/tm/sys/
hardware"
▪ "https://" +
$ipAddress +
"/mgmt/tm/sys/
failover"
▪ "https://" +
$ipAddress +

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1493


<!-- page 1494 -->
Application

CI type

Configure this

"/mgmt/tm/net/
self"

▪ "https://"
+ $ipAddress
+ "/mgmt/
tm/ltm/virtual?
$select=destination,mask,vla
▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
interface"
▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
interface/stats"
▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
trunk"
▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
vlan"
▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
vlan/"+<vlan id>
+"/interfaces"
▪ "https://" +
$ipAddress +
"/mgmt/tm/gtm/
wideip"
▪ "https://" +
$ipAddress +
"/mgmt/tm/cm/
traffic-group/"
▪ "https://" +
$ipAddress +
"/mgmt/tm/cm/
device"
◦ Create basic
authentication
credentials.
• For F5 REST OAuth 2.0
authentication pattern:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1494


<!-- page 1495 -->
Application

CI type

Configure this

◦ Verify read-only
permission for the
following APIs:
▪ "https://" +
$ipAddress +
"/mgmt/shared/
authn/login"
▪ "https://" +
$ipAddress +
"/mgmt/tm/ltm/
pool"
▪ "https://" +
$ipAddress +
"/mgmt/tm/sys/
global-settings"
▪ "https://" +
$ipAddress +
"/mgmt/tm/sys/
hardware"
▪ "https://" +
$ipAddress +
"/mgmt/tm/sys/
failover"
▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
self"

▪ "https://"
+ $ipAddress
+ "/mgmt/
tm/ltm/virtual?
$select=destination,mask,vla
▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
interface"
▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
interface/stats"
▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
trunk"
▪ "https://" +
$ip_address +
"/mgmt/tm/net/
vlan"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1495


<!-- page 1496 -->
Application

CI type

Configure this

▪ "https://" +
$ipAddress +
"/mgmt/tm/net/
vlan/"+<vlan id>
+"/interfaces"
▪ "https://" +
$ipAddress +
"/mgmt/tm/gtm/
wideip"
▪ "https://" +
$ipAddress +
"/mgmt/tm/cm/
traffic-group/"
▪ "https://" +
$ipAddress +
"/mgmt/tm/cm/
device"
◦ Create basic
authentication
credentials.
◦ Create a credential
alias
for the basic
authentication credential.
◦ Create a serverless
discovery schedule.
• For top-down discovery
using Service Mapping,
provide permissions to run
the following APIs:
◦ https://"
get_attr
{"managementIP"}"/
mgmt/
tm/ltm/"get_attr
{"irule"}
◦ https://"
get_attr
{"managementIP"}"/
mgmt/tm/ltm/
virtual/
~Common~"get_attr
{"vip_name"}

◦ https://"
get_attr
{"computer_system.managementIP
mgmt/tm/ltm/
pool/"get_attr
{"pool_name"}"/
members?
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1496


<!-- page 1497 -->
Application

CI type

Configure this

• (Optional) For top-down
discovery with Service
Mapping, configure
applicative credentials .
• (Optional) For top-down
discovery with Service
Mapping, provide a user
with permissions to run the
following commands:
◦ bigpipe commands (for
BIG-IP LTM F5 or BIG-IP
GTM F5 version 9)
◦ bigpipe and Traffic
Management Shell
(TMSH) commands (for
BIG-IP LTM F5 or BIG-IP
GTM F5 version 10)
◦ Traffic Management Shell
(TMSH) commands (for
BIG-IP LTM F5 or BIG-IP
GTM F5 version 11)
◦ Traffic Management
Shell (TMSH) advanced
commands (for BIG-IP
LTM F5 or BIG-IP GTM F5
version 10, 11, and 12)
◦ The show cm

traffic-group –
get command for
discovering F5 BIG-IP
Device Service Clustering

• (Optional) For top-down
discovery with Service
Mapping, give the user
elevated rights to be able
to run Service Mapping
commands requiring a
privileged user.
BMC CTRL-M Enterprise
Manager

Control-M
[cmdb_ci_appl_controlm]

Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1497


<!-- page 1498 -->
Application

CI type

Configure this

(If hosted on a Linux or UNIX
server) (Optional) on the
ServiceNow AI Platform,
configure SSH credentials .
BMC CTRL-M Gateway

Control-M
[cmdb_ci_appl_controlm]

Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .
(If hosted on a Linux or UNIX
server) (Optional) on the
ServiceNow AI Platform,
configure cc.

BMC IT Asset Management
(ITAM)

ITAM Asset Center
[cmdb_ci_appl_itam]

On the ServiceNow AI
Platform, configure a Windows
OS user with permissions
to access the ITAM registry
as described in Windows
credentials .

CA Identity Manager
Provisioning Server

CA Identity Manager
Provisioning Server
[cmdb_ci_appl_ca_id_man]

On the ServiceNow AI
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Cadebill Interconnect

inter connect
[cmdb_ci_inter_connect]

On the ServiceNow AI
Platform, configure Windows
credentials .

Cadebill Interconnect
Instance

Interconnect Instance
On the ServiceNow AI
[cmdb_ci_interconnect_instance]
Platform, configure Windows
credentials .

Cisco Application Control
Engine ACE (on Cisco CSM)

ACE [cmdb_ci_lb_ace]

On the ServiceNow AI
Platform, configure applicative
credentials .
On the ServiceNow AI
Platform, configure SSH
credentials .
On the ServiceNow AI
Platform, configure SNMP
community credentials
as described in SNMP
credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1498


<!-- page 1499 -->
Application

CI type

Configure this

Cisco CallManager

Cisco CallManager
(If hosted on a Linux or UNIX
[cmdb_ci_appl_cisco_call_man] server) (Optional) on the
ServiceNow AI Platform,
configure SSH credentials .
(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .

Cisco Global Site Selector
(GSS)

Load Balancer Service
[cmdb_ci_lb_service]

Configure SNMP community
credentials as described in
SNMP credentials .
On the ServiceNow AI
Platform, configure SSH
credentials .
Provide a user who has
permissions to run query
on the domain list, DNS rule
output, and VIP answer to get
the outgoing connections of
GSS.

Citrix Delivery Controller

Delivery Controller
• Configure Windows
[cmdb_ci_appl_delivery_controler]
administrative credentials
to access the host machine.
• Make sure that PowerShell
for Discovery is installed
on your MID Servers. The
patterns used for Citrix
discovery require the
ability to run PowerShell
commands.
• For OS users, make sure
you can execute “GetXDSite.” The Citrix Studio
Admin should provide
permissions.
• (Optional) For top-down
discovery with Service
Mapping, on Citrix Delivery
Controller, install the
Citrix.Broker module.
• (Optional) For topdown discovery with
Service Mapping, a user
with permission to run
PowerShell commands.
• (Optional) (Optional) For
discovering using the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1499


<!-- page 1500 -->
Application

CI type

Configure this

WinRM protocol, see
Configure WinRM trusted
hosts on MID Server .
Citrix Usage Collector

Citrix Collector
• Configure applicative
[cmdb_ci_appl_citrix_collector]
credentials .
• Configure a user with
permissions to run
PowerShell commands on
the Citrix server.
• (If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing
the Windows OS as
described in Windows
credentials .

Note: To use this
credential later
for XenAPP, set
the Credential
alias attribute to
cmdb_ci_appl_citrix_xenapp.
To use this credential
later for Citrix, set
the Credential
alias attribute to
cmdb_ci_appl_citrix_collector.
• To discover Epic, provide
permission to run afarm
command.
• Provide a user with
permissions to read and
query the Citrix repository:
◦ For versions 4.5 and later,
a PowerShell script from
the XenApp server.
◦ For versions earlier
than 4.5, a Microsoft
Visual Basic Script
(VBScript) from the Citrix
Presentation Server
• (If hosted on a Unix server)
On the ServiceNow AI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1500


<!-- page 1501 -->
Application

CI type

Configure this

Platform, configure SSH
credentials .

Note: To use this
credential later for
XenAPP, set the

Credential
alias attribute to
cmdb_ci_appl_citrix_xenapp.
To use this credential
later for Citrix, set
the Credential
alias attribute to
cmdb_ci_appl_citrix_collector.
Citrix Presentation Server/
Citrix XenApp

Note: Citrix XenApp

Citrix XenAPP or
Presentation Server
[cmdb_ci_appl_citrix_xenapp]

is the new name for
Presentation Server
beginning with the
XenApp 5 release.

Citrix Netscaler

• On the ServiceNow AI
Platform, configure a
domain user for accessing
the Windows OS as
described in Windows
credentials .
• (Optional) To discover using
the WinRM protocol, see
Configure WinRM trusted
hosts on MID Server

Citrix Netscaler
[cmdb_ci_lb_netscaler]

• Configure SNMP
credentials .

Note: You also have
the option of using
SSH credentials .
However, if the
payload size of the
data that is returned to
the instance is large,
the discovery process
can fail. In this case,
use SNMP credentials
instead.
• (Optional) Provide a user
with the read access to the
NS.conf configuration file
if you do not want to provide
SNMP or SSH credentials.
• Use basic authentication
credentials for discovery via
REST.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1501


<!-- page 1502 -->
Application

CI type

Configure this

Service Mapping uses the
SSH credentials to retrieve
connections that are not
from CMDB. Discovering
connections using the
SSH protocol is a failover
mechanism for the SNMPbased discovery.
Citrix Netscaler Global Server
Load Balancer

Load Balancer Service
[cmdb_ci_lb_service]

• Configure SNMP
credentials .

Note: You also have
the option of using
SSH credentials .
However, if the
payload size of the
data that is returned to
the instance is large,
the discovery process
can fail. In this case,
use SNMP credentials
instead.
• (Optional) Provide a user
with the read access to the
NS.conf configuration file
if you do not want to provide
SNMP or SSH credentials.
• Use basic authentication
credentials for discovery via
REST.
Connect APK

Connect-It Service
[cmdb_ci_appl_connectit]

(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .
(If hosted on a Linux or Unix
server) on the ServiceNow
AI Platform, configure SSH
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

EMC Documentum

Documentum DocBase
(If hosted on a Windows
[cmdb_ci_appl_doc_docbroker] server) On the ServiceNow AI
Platform, configure Windows
credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1502


<!-- page 1503 -->
Application

CI type

Configure this

(If hosted on a Linux or Unix
server) (Optional) on the
ServiceNow AI Platform,
configure SSH credentials .
Epic

epicd app server
[cmdb_ci_epicd_app_server]
epic agent
[cmdb_ci_epic_agent]
epic cache
[cmdb_ci_epic_cache]

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Linux or Unix
server) (Optional) on the
ServiceNow AI Platform,
configure SSH credentials .

epicd
[cmdb_ci_endpoint_epicd]
FormEngine

Oracle Forms Engine
[cmdb_ci_appl_ora_forms]

Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on Unix server) on
the ServiceNow AI Platform,
configure SSH credentials .

Google Cloud Platform

Cloud Service Account
• Provide a read-only user
[cmdb_ci_cloud_service_account]
with permission to use the
following API elements.
• On the ServiceNow AI
Platform, configure Google
API credentials.

HAProxy

HAProxy Load Balancer
[cmdb_ci_lb_haproxy]

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Linux or Unix
server) (Optional) on the
ServiceNow AI Platform,
configure SSH credentials .

HP Operations Manager

HP Operations Manager
(If hosted on a Windows
[cmdb_ci_appl_hp_operations] server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1503


<!-- page 1504 -->
Application

CI type

Configure this

HP Service Manager
Application Server

HP Service Manager
[cmdb_ci_appl_hp_service]

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Linux or Unix
server) (Optional) on the
ServiceNow AI Platform,
configure SSH credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

HP Service Manager Index

HP SM Index Server
[cmdb_ci_appl_hp_index]

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Linux or Unix
server) On the ServiceNow
AI Platform, configure SSH
credentials .

HP Service Manager
Knowledge Base

HP SM KnowledgeBase
[cmdb_ci_appl_hp_sm_kb]

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .

HP Quality Center

HP Quality Center
[cmdb_ci_appl_hp_qc]

On the ServiceNow AI
Platform, configure Windows
credentials .

HP UCMDB

HP uCMDB
On the ServiceNow AI
[cmdb_ci_app_server_hp_ucmdb]
Platform, configure Windows
credentials .

IBM Cloud Platform

Cloud Service Account
On the ServiceNow AI
[cmdb_ci_cloud_service_account]
Platform, configure the IBM
Credentials for accessing the
IBM account.

IBM WebSphere Message
Broker

IBM WebSphere
Message Broker
[cmdb_ci_appl_ibm_wmb]

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on Unix server) On
the ServiceNow AI Platform,
configure SSH credentials
for a user with permissions to
run the following commands:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1504


<!-- page 1505 -->
Application

CI type

Configure this

• "source " + $directory +
"/mqsiprofile”
• "echo $MQSI_VERSION “
• $directory +
"/mqsireportbroker " +
$name
• $directory + "/mqsibrowse
" + $name + " -t
BROKERRESOURCES “
Set the Credential
alias attribute to
[cmdb_ci_appl_ibm_wmb].
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
IBM CTRL-M Server

Control-M
[cmdb_ci_appl_controlm]

(If hosted on Unix) Give the
user elevated rights to be
able to run Service Mapping
commands requiring a
privileged user.
(If hosted on Windows),
on the ServiceNow AI
Platform, configure Windows
credentials .

IBM CICS Transaction
Gateway CTG

IBM CTG
[cmdb_ci_appl_ibm_ctg]

Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

IBM Customer Information
Control System (CICS)

IBM CICS
[cmdb_ci_appl_ibm_cics]

(If hosted on Unix) Give the
user elevated rights to be
able to run Service Mapping
commands requiring a
privileged user.
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

IBM DB2

DB2 Instance
[cmdb_ci_db_db2_instance]

• (If hosted on Linux) Give the
user elevated rights to be
able to run Service Mapping

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1505


<!-- page 1506 -->
Application

CI type

Note: Starting with
CMDB CI Class Models
version 1.69.0, the label
has been renamed to
DB2 Subsystem.

Configure this

commands requiring a
privileged user.
• (If hosted on Windows), on
the ServiceNow AI Platform,
configure Windows
credentials .
Set the tag attribute to
[cmdb_ci_db_db2_instance].
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
(Optional) To discover
connections to IBM DB2,
configure SSH credentials
for a user with permissions
to run the following
commands:
◦ db2 list
tablespaces
◦ "db2cmd /c /w /i db2 -tvf
"+$ script_name
• (If hosted on z/OS) Provide
the user with the following
permissions:
◦ To write into the /tmp
directory.
◦ To see all user processes.
◦ To run REXX scripts.
◦ To read into the db2
folder.
• (If hosted on z/OS) On the
ServiceNow AI Platform,
configure SSH credentials

IBM J2EE EAR

[cmdb_ci_app_server_ws_ear]

.

(If hosted on Linux only)
Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on Windows),
on the ServiceNow AI
Platform, configure Windows
credentials .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1506


<!-- page 1507 -->
Application

CI type

Configure this

IBM PowerHA SystemMirror
for AIX discovery

Configure a UNIX user
• Cluster Resource Group
with permissions to run all
[cmdb_ci_cluster_resource_group]
commands defined in the
• UNIX Cluster Resource
official IBM documentation.
[cmdb_ci_unix_cluster_resource]
• UNIX Cluster Node
[cmdb_ci_unix_cluster_node]
• AIX Server
[cmdb_ci_aix_server]
• UNIX Cluster
[cmdb_ci_unix_cluster]
• Cluster Virtual IP
[cmdb_ci_cluster_vip]

IBM Tivoli Access Manager
WebSEAL or IBM Security
Access Manager (ISAM)
appliance

Webseal
(For ISAM appliance only)
[cmdb_ci_app_server_webseal] Configure applicative
credentials
for the user
with permissions to run the
following REST commands:
• /reverseproxy – for
retrieving data about
the reverse proxy and
instances.
• /wga/reverseproxy/"+
${junctionstable[].instance}+"/
junctions – for getting
junctions per each instance.
• /wga/reverseproxy/"
+ $instance_name +
"/junctions?junctions_id="
+ $junction_name – for
getting forwarding URLs for
the entry point junction.
(For ISAM appliance only)
Ensure that the system can
use the cURL commands for
discovery:
• On the MID Server used for
ISAM appliance discovery,
define the PATH variable to
contain the cURL package
installation
for the relevant
MID Server users.
• Configure permissions to
run the curl.exe file for
the relevant MID Server
user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1507


<!-- page 1508 -->
Application

CI type

Configure this

(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on Windows),
on the ServiceNow AI
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
IBM Virtualization and
Hardware Management
Console (HMC)

• HMC server
• IBM frame
• Logical partition (LPAR)
instance
An LPAR is virtual machine
equivalent of IBM.
• LPAR resource

• Verify that the following
applications are up to date:
◦ Discovery and Service
Mapping Patterns
◦ CMDB CI Class Models
• Verify you have permissions
for the following HMC
commands:
◦ lssyscfg
◦ lshmc
◦ lshwres
◦ lssysconn
-r all -F
type_model_serial_num:ipaddr
• Verify you have permissions
for the following AIX (LPAR)
command: lparstat -i.

Note: The
lparstat -i
command is in
addition to the
commands required
for AIX server
discovery. For more
information on AIX
server discovery, see
AIX server discovery.
For a list of the AIX
commands, see
Service Mapping
commands requiring a
privileged user.
• Configure SSH credentials
on the ServiceNow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1508


<!-- page 1509 -->
Application

CI type

Configure this

AI Platform. For more
information, see SSH
credentials .
IBM WebSphere Application
Server

IBM Websphere
(If hosted on Unix only) Give
[cmdb_ci_app_server_websphere]
the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on Windows),
on the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on z/OS) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on z/OS) Provide
the user with the following
permissions:
• To write into the /tmp
directory.
• To see all user processes.
• To run REXX scripts.
• To run commands using
oeconsol.
• To run the command
that brings info on the
WebSphere Application
Server task: "oeconsol
'D OMVS,A=ALL' |
grep "+$taskname.
• To read content of the
WAS installation folder
and the permission to read
was.env.file where the
installation variables are
situated.
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
IBM WebSphere DataPower

Data Power
SNMP credentials
[cmdb_ci_app_server_datapower]
SNMP
credentials

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1509


<!-- page 1510 -->
Application

CI type

Configure this

are necessary
for using the
following SNMP
queries:
• For horizontal
discovery of
the Data Power
Hosting Server
[cmdb_ci_datapower_server]:
◦ 1.3.6.1.2.1.1.1
◦ 1.3.6.1.2.1.1.5
◦ 1.3.6.1.2.1.4.20.1
◦ 1.3.6.1.2.1.2.2.1
◦ 1.3.6.1.4.1.14685.3.1.196.1
◦ 1.3.6.1.4.1.14685.3.1.11.1
◦ 1.3.6.1.4.1.14685.3.1.112.1
• For top-down
discovery of
the Data Power
[cmdb_ci_datapower_server]:
◦ 1.3.6.1.2.1.1.1
◦ 1.3.6.1.2.1.1.5
◦ 1.3.6.1.4.1.14685.3.1.11.1
Applicative credentials
Together
with SNMP
credentials,
applicative
credentials
are required
to discover
DataPower
application
domains,
otherwise known
as logical CIs.
In addition,
SNMP and
applicative
credentials are
used for topdown discovery
of applicative
relationships
(corresponding
application
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1510


<!-- page 1511 -->
Application

CI type

Configure this

DataPower
domain).
User with permissions to
run SOAP
Permissions
to run SOAP
queries are
necessary
for top-down
discovery of the
DataPower Web
Service and MQ
connection.
IBM WebSphere Message
Broker Flow

WMB Flow
[cmdb_ci_appl_wmb]

(If hosted on a Unix server)
Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
Provide an IBM WebSphere
Message Broker OS user
with permissions to run the
WebSphere Message Broker
service.
(If hosted on Windows),
on the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials
for a user with permissions to
run the following commands:
• "source " + $directory +
"/mqsiprofile”
• "echo $MQSI_VERSION “
• $directory +
"/mqsireportbroker " +
$name
• $directory + "/mqsibrowse
" + $name + " -t
BROKERRESOURCES “
Set the Credential
alias attribute to
[cmdb_ci_appl_ibm_wmb].
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1511


<!-- page 1512 -->
Application

CI type

Configure this

IBM WebSphere Message
Broker

IBM WebSphere
Message Broker
[cmdb_ci_appl_ibm_wmb]

(If hosted on Unix) Give the
user elevated rights to be
able to run Service Mapping
commands requiring a
privileged user.
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
Set the Credential
alias attribute to
[cmdb_ci_appl_ibm_wmb].
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
Provide an IBM WebSphere
Message Broker OS user
with permissions to run the
WebSphere Message Broker
service.

IBM MQ (formerly IBM
WebSphere MQ)

IBM MQ Manager (formerly
IBM WebSphere MQ)
[cmdb_ci_appl_ibm_wmq]

(If hosted on Unix) Give the
user elevated rights to be
able to run Service Mapping
commands requiring a
privileged user.
Configure applicative
credentials
for a user
with permissions to run the
following commands:
• (If hosted on a Windows
server) "echo display
QMSTATUS ALL | runmqsc
-e " + $queue_manager – for
getting the queue manager
(QM) status.
• (If hosted on a Windows
server) "echo display
QMGR ALL | runmqsc -e
" + $queue_manager –
for getting the complete
information about QM.
• (If hosted on a Unix server)
"echo \" display QMSTATUS
ALL \" | runmqsc " +
$queue_manager – for
getting the QM status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1512


<!-- page 1513 -->
Application

CI type

Configure this

• (If hosted on a Unix
server) "echo \" display
QMGR ALL \" | runmqsc
" + $queue_manager –
for getting the complete
information about QM.
• (If hosted on a Unix server)
"echo \" display queue("
+ $entry_point.queue
+ ") \" | runmqsc " +
$queue_manager – for
getting the information
about the EP queue.
(If hosted on Windows),
on the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server)
configure SSH credentials

.

While configuring
OS credentials, set
the Credential
alias attribute to
cmdb_ci_appl_ibm_wmq.
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
(Optional) To find IBM MQ
connections, configure
SSH credentials for a user
with permissions to run the
following commands:
• "echo \" display queue("+
$entry_point.queue
+") \" | runmqsc "+
$queue_manager
• "echo \" display QMSTATUS
ALL \" | runmqsc "+
$queue_manager
• echo \" display QMGR
ALL \" | runmqsc "+
$queue_manager
(If hosted on z/OS) On the
ServiceNow AI Platform,
configure SSH credentials

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1513


<!-- page 1514 -->
Application

CI type

Configure this

(If hosted on z/OS) Provide
the user with the following
permissions:
• To write into the /tmp
directory.
• To see all user processes.
• To run REXX scripts.
• To run commands using
oeconsol.
• To run MQ commands.
IBM MQ Queue (formerly IBM
WebSphere MQ Queue)

IBM MQ Queue (formerly
(If hosted on a Unix server)
IBM WebSphere MQ Queue)
Give the user elevated rights
[cmdb_ci_appl_ibm_wmq_queue]
to be able to run Service
Mapping commands requiring
a privileged user.
Configure applicative
credentials
for a user
with permissions to run the
following commands:
• dspmq – for getting
information about the queue
manager.
• "echo \" display queue("
+ $entry_point.queue
+ ") \" | runmqsc " +
$queue_manager –
for getting the queue
information.
• "echo \" display clusqmgr(*)
conname \" | runmqsc "
+ $queue_manager – for
getting all cluster queue
manager (QM) lines.
• "echo \" display qstatus("
+ $entry_point.queue
+ ") TYPE(HANDLE)
OPENTYPE(INPUT)
CONNAME PID \" | runmqsc
" + $queue_manager – for
getting the queue status
information.
(If hosted on Unix server) on
the ServiceNow AI Platform,
configure SSH credentials
for a user with permissions to
run the following commands:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1514


<!-- page 1515 -->
Application

CI type

Configure this

• dspmq
echo \" display queue("+
$entry_point.queue
+") \" | runmqsc "+
$queue_manager
• (Optional) "echo \" display
qcluster("+$rqmname
+") \" | runmqsc "+
$queue_manager
• (Optional) "echo \"
dischl(*) CHLTYPE(SDR)
CONNAME XMITQ
WHERE(XMITQ EQ "+
$xmit_name+")\" | runmqsc
"+$queue_manager
• (Optional) "echo \"
display clusqmgr(*)
conname \" | runmqsc "+
$queue_manager
• (Optional) "echo \"
display qstatus("+
$entry_point.queue
+") TYPE(HANDLE)
OPENTYPE(INPUT)
CONNAME PID \" | runmqsc
"+$queue_manager
While configuring
OS credentials, set
the Credential
alias attribute to
cmdb_ci_appl_ibm_wmq.
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
(If hosted on Windows),
on the ServiceNow AI
Platform, configure Windows
credentials
for a user
with permissions to run the
following commands:
• dspmq
echo \" display queue("+
$entry_point.queue
+") \" | runmqsc "+
$queue_manager
• (Optional) "echo \" display
qcluster("+$rqmname
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1515


<!-- page 1516 -->
Application

CI type

Configure this

+") \" | runmqsc "+
$queue_manager
• (Optional) "echo \"
dischl(*) CHLTYPE(SDR)
CONNAME XMITQ
WHERE(XMITQ EQ "+
$xmit_name+")\" | runmqsc
"+$queue_manager
• (Optional) "echo \"
display clusqmgr(*)
conname \" | runmqsc "+
$queue_manager
• (Optional) "echo \"
display qstatus("+
$entry_point.queue
+") TYPE(HANDLE)
OPENTYPE(INPUT)
CONNAME PID \" | runmqsc
"+$queue_manager
While configuring
OS credentials, set
the Credential
alias attribute to
cmdb_ci_appl_ibm_wmq.
Configuring this attribute
allows you later to use the
credential for this CI in
patterns..
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
IBM WebSphere Portal

Websphere Portal
(If hosted on Linux only)
[cmdb_ci_appl_websphere_portal]
Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1516


<!-- page 1517 -->
Application

CI type

Configure this

Interconnect Web Service

Inter connect
[cmdb_ci_inter_connect]

(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .

Jboss

JBoss
[cmdb_ci_app_server_jboss]

Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on Unix server) on
the ServiceNow AI Platform,
configure SSH credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Jboss Module

Jboss module
(If hosted on a Unix server)
[cmdb_ci_app_server_jb_module]
Give the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
JRun

Jrun
[cmdb_ci_app_server_jrun]

(If hosted on Unix only) Give
the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1517


<!-- page 1518 -->
Application

CI type

Configure this

see Configure WinRM trusted
hosts on MID Server .
JRun WAR Inc

Jrun WAR
(If hosted on Unix only) Give
[cmdb_ci_app_server_jrun_war] the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
Microsoft Azure Web Sites

Cloud WebServer
[cmdb_ci_cloud_webserver]

On the ServiceNow AI
Platform, add an Azure
service principal and set up
a cloud account for Azure.
Set the account Id to the
Azure Service Principal as it
appears at the Microsoft Azure
Console.

Microsoft Azure Load Balancer Load Balancer Service
[cmdb_ci_lb_service]

On the ServiceNow AI
Platform, configure add an
Azure service principal and
set up a cloud account for
Azure. Set the account Id to
the Azure Service Principal
as it appears at the Microsoft
Azure Console.

Microsoft Azure SQL
Database

Cloud Database Rule
[cmdb_ci_cloud_database]

On the ServiceNow AI
Platform, add an Azure
service principal and set up
a cloud account for Azure.
Set the account Id to the
Azure Service Principal as it
appears at the Microsoft Azure
Console.

Microsoft Dynamic CRM

Dynamic CRM Component
On the ServiceNow AI
[cmdb_ci_appl_ms_dynamic_crm]
Platform, configure a domain
user for accessing the
Windows OS as described in
Windows credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Microsoft BizTalk
Orchestration

BizTalk Orchestration
[cmdb_ci_appl_biztalk_orch]

On the ServiceNow AI
Platform, configure a domain
user for accessing the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1518


<!-- page 1519 -->
Application

CI type

Configure this

Windows OS as described in
Windows credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Microsoft BizTalk Server

BizTalk [cmdb_ci_appl_biztalk] On the ServiceNow AI
Platform, configure a domain
user for accessing the
Windows OS as described in
Windows credentials .

Microsoft Exchange BackEnd
Server

ExchangeBackEndServer
On the ServiceNow AI
[cmdb_ci_exchange_backend] Platform, configure Windows
credentials .
Configure credentials required
for host discovery for a
Windows server.
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Microsoft Exchange FrontEnd
Server

ExchangeFrontEndServer
On the ServiceNow AI
[cmdb_ci_exchange_frontend] Platform, configure Windows
credentials .
Configure credentials required
for host discovery for a
Windows server.
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Microsoft FAST Search Server

Fast Search
[cmdb_ci_appl_fastsearch]

Create a user with the
permission to read the
following files:
• install_directory
+"\etc\VERSION.xml
• and
install_directory
+"\etc\CSConfig.xml
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Microsoft Exchange Hub
Transport Server
Microsoft Exchange Mailbox

ExchangeHub
[cmdb_ci_exchange_hub]

• On the ServiceNow AI
Platform, configure a
domain user for accessing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1519


<!-- page 1520 -->
Application

CI type

Configure this

the Windows OS as
described in Windows
credentials . Use the
Microsoft Exchange
Server administrator's
user name and password
as Windows credentials.
For example, user name:
local\administrator and
password: Are1300.

Note: If you configure
Windows credentials
for a user different
from the Microsoft
Exchange Server
administrator, Service
Mapping uses trafficbased discovery that
results in mapping all
Microsoft Exchange
clients.

Exchange MailBox
[cmdb_ci_exchange_mailbox]
Microsoft Exchange CAS

Exchange Client
Access Server
[cmdb_ci_exchange_cas]

• (For Exchange CAS 2010
and 2013, 2016) On the
ServiceNow AI Platform,
configure applicative
credentials , setting the CI
type to Exchange Mailbox.

Warning: Do not
confuse the Exchange
Mailbox CI type with
the Exchange Mailbox
Server CI type.
Service Mapping uses these
applicative credentials to
access the of/Servers/
Servers.slab folder on
the Key Exchange Admin
Center (EAC). Service
Mapping also uses the
applicative credentials to
run the following PowerShell
commands against the MID
Servers:
◦ Get-ExchangeServer
◦ Get-ExchangeServer
◦ Get-MailboxServer
◦ GetClusteredMailBoxServerStatus
◦ Get-ExchangeServer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1520


<!-- page 1521 -->
Application

CI type

Configure this

◦ Get-StorageGroup
◦ Get-MailboxDatabase

• (For Microsoft Exchange
CAS 2010 and 2016)
On the Windows Server
hosting Microsoft
Exchange CAS, install the
Microsoft.Exchange.Management.PowerShel
module.

• (For Microsoft Exchange
CAS 2007) On the Windows
Server hosting Microsoft
Exchange CAS, install the
Microsoft.Exchange.Management.PowerShel
module.
• (For Microsoft Exchange
CAS 2007, 2010) On the
ServiceNow AI Platform,
upload the rctrlx tool
for running PowerShell
commands as described in
Upload the rctrlx.exe file to
MID Servers.
• (For Microsoft Exchange
CAS 2007 and 2010)
Provide an Exchange
Mailbox OS user with the
rights to run Exchange
services on Windows and
has permission to query
Exchange repository:
On the ServiceNow
AI Platform, configure
Windows credentials
setting the Credential
alias attribute to
[cmdb_ci_exchange_mailbox].
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
• (Optional) For discovering
using the WinRM protocol,
see Configure WinRM
trusted hosts on MID
Server .
• Verify that you know the
entry point necessary for
discovering the Microsoft
Exchange Server. Use the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1521


<!-- page 1522 -->
Application

CI type

Configure this

URL for the Outlook web
access in the following
format:
http(s)://
<hostname>:<port>/
owa
For example, http(s)://
myhost:<443>/owa
Microsoft Identity Integration
Server

IIFP [cmdb_ci_directory_iifp]

On the ServiceNow AI
Platform, configure Windows
credentials .

Microsoft Internet Information
Services (IIS)

Microsoft iis Web Server
On the ServiceNow AI
[cmdb_ci_microsoft_iis_web_server]
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Microsoft Internet Information
Services (IIS) Virtual Directory

IIS Virtual Directory
[cmdb_ci_iisdirectory]

On the ServiceNow AI
Platform, configure the
following credentials:
• Windows credentials
• applicative credentials
Verify read access to the
following files:
• web.config:
Possible locations
$entry_point.path
+ "Web.config" or
$entry_point.path +
"\Web.config"
• machine.config:
possible location "dir
\"C:\Windows
\Microsoft.NET\"

• (Optional) To find
ADO.NET connections,
set the Credential
alias attribute to
[cmdb_ci_iisdirectory].
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1522


<!-- page 1523 -->
Application

CI type

Configure this

• (Optional) For discovering
using the WinRM protocol,
see Configure WinRM
trusted hosts on MID
Server .
Microsoft Message Queuing
(MSMQ)

MSMQ [cmdb_ci_appl_msmq] On the ServiceNow AI
Platform, configure Windows
credentials .

Microsoft .NET Framework

.NET Application
[cmdb_ci_appl_dot_net]

On the ServiceNow AI
Platform, configure Windows
credentials .
(Optional) To find
ADO.NET connections,
set the Credential
alias attribute to
[cmdb_ci_iisdirectory].
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
Provide an IIS Virtual Directory
OS user with the rights to run
the IIS service on Windows.
Configure applicative
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Microsoft SharePoint

SharePoint
[cmdb_ci_appl_sharepoint]

On the ServiceNow AI
Platform, configure the
following credentials:
• Windows credentials
• Set the Credential
alias attribute to
[cmdb_ci_appl_sharepoint].
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
• Configure WMI Query
access to the remote
Sharepoint server.
• (Optional) To find Windows
SharePoint connections,
configure Windows
credentials for a user with

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1523


<!-- page 1524 -->
Application

CI type

Configure this

permissions to run http get
request to the SharePoint
Central Administration URL.

Provide a SharePoint OS user
with permissions:
• To run SharePoint services
on Windows
• To log into the SharePoint
Admin page
To use two separate
credentials with different
permissions, configure
credentials as covered in
Prerequisites for performing
top-down discovery /
Service Mapping discovery
to Sharepoint system
[KB0813083]
article in the
Now Support Knowledge
Base.
Microsoft SQL Database

MySQLClusterDataNode
Provide the following user or
[cmdb_ci_db_mysql_clusternode]
users:
• For discovering Microsoft
Biztalk using SQL queries,
provide a user and
credentials for Microsoft
BizTalk.
• For discovering licensing
information on Microsoft
SQL Server, provide a
user and credentials for
accessing Microsoft SQL
Database.
Refer to the product
documentation for operational
information.
Credentials for host discovery
as described in Windows
credentials .
Configure applicative
credentials .

MongoDB

Mongo Config Server
(If hosted on a Windows
[cmdb_ci_appl_mongo_config_serv]
server) On the ServiceNow AI
Platform, configure Windows
credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1524


<!-- page 1525 -->
Application

CI type

Configure this

(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
Provide a user with
permissions to run Mongo
commands described in
Service Mapping commands
not requiring a privileged user.
MySQL Cluster MGM Node

MySQLClusterMGMNode
(If hosted on Unix only) Give
[cmdb_ci_db_mysql_clustermgnode]
the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
On the ServiceNow AI
Platform, configure Windows
credentials .

Nginx

Nginx Web Server
[cmdb_ci_nginx_web_server]

(If hosted on Unix only) Give
the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
Configure applicative
credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

OpenText Documentum

Documentum DocBase
[cmdb_ci_appl_doc_docbase]

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .

Oracle Application Server

Oracle iAS
(If hosted on a Windows
[cmdb_ci_app_server_ora_ias] server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
(If hosted on Unix) Configure
applicative credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1525


<!-- page 1526 -->
Application

CI type

Configure this

Oracle Advanced Queue
Queue

Advanced Queue Queue
[cmdb_ci_appl_ora_queue]

(If hosted on Unix) Configure
applicative credentials for
Service Mapping.
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

Oracle Clusterware

UNIX Cluster
See Oracle database
[cmdb_ci_unix_cluster],
discovery.
UNIX Cluster Node
[cmdb_ci_unix_cluster_node],
UNIX Cluster Resource
[cmdb_ci_unix_cluster_resource],
Cluster Virtual IPs
[cmdb_ci_cluster_vip]

Oracle Concurrent Server

Oracle Concurrent Server
[cmdb_ci_appl_ora_conc]

.

(If hosted on Unix only) Give
the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Oracle Database

Oracle Instance
[cmdb_ci_db_ora_instance]

(If hosted on Unix only) Give
the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1526


<!-- page 1527 -->
Application

CI type

Configure this

(If hosted on Unix) Configure
applicative credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Oracle Database 12c

Oracle PDB Instance
• Configure Applicative
[cmdb_ci_db_ora_pdb_instance]
credentials .
• For Windows, configure
Windows credentials
• For Unix, configure SSH
credentials
• For the Oracle database,
configure Oracle database
discovery
• Provide a user with
permissions to run queries
on the following tables:
◦ V$DATAFILE
◦ V$TEMPFILE​
◦ V$LOG
◦ DBA_FREE_SPACE
◦ V$DATABASE
◦ V$PDBS
◦ V$PARAMETER

Oracle Database Advanced
Queuing

Advanced Queue Queue
[cmdb_ci_appl_ora_queue]

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
Provide an Oracle instance
user with permission to run
the sqlplus command as
described in Service Mapping
commands not requiring a
privileged user.

Oracle Discoverer Engine

Oracle Discoverer Engine
[cmdb_ci_appl_ora_disc]

(If hosted on Unix only) Give
the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1527


<!-- page 1528 -->
Application

CI type

Configure this

(If hosted on Unix) Configure
applicative credentials .
(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Oracle Discoverer UI

Oracle Discoverer UI
[cmdb_ci_appl_ora_disc_ui]

(If hosted on Unix) Configure
applicative credentials for
Service Mapping.
On the ServiceNow AI
Platform, configure a domain
user for accessing the
Windows OS as described in
Windows credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on Unix only) Give
the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Oracle E-Business Suite

Oracle ESB
[cmdb_ci_appl_ora_ebs]

(If hosted on Unix) Configure
applicative credentials .
On the ServiceNow AI
Platform, configure a domain
user for accessing the
Windows OS as described in
Windows credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(Optional) For discovering
using the WinRM protocol,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1528


<!-- page 1529 -->
Application

CI type

Configure this

see Configure WinRM trusted
hosts on MID Server .
Oracle Form UI

Oracle Forms UI
[cmdb_ci_appl_ora_forms_ui]

(If hosted on a Windows
server) On the ServiceNow
AI Platform, configure a
domain user for accessing the
Windows OS as described in
Windows credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Oracle Fulfillment Server

Oracle Fulfillment Server
[cmdb_ci_appl_ora_fs]

(If hosted on Unix) Configure
applicative credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Oracle GlassFish Server

GlassFish
[cmdb_ci_appl_glassfish]
GlassFish WAR
[cmdb_ci_appl_glassfish_war]

• (If hosted on a Windows
server) On the ServiceNow
AI Platform, configure
Windows credentials .
• (If hosted on a Linux or UNIX
server) (Optional) on the
ServiceNow AI Platform,
configure SSH credentials .
• (Optional) For discovering
using the WinRM protocol,
see Configure WinRM
trusted hosts on MID
Server .

Oracle HTTP Server

Oracle HTTP Server
[cmdb_ci_appl_ora_http]

(If hosted on Unix) Configure
applicative credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(Optional) For discovering
using the WinRM protocol,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1529


<!-- page 1530 -->
Application

CI type

Configure this

see Configure WinRM trusted
hosts on MID Server .
Oracle iAS Web Module

Oracle iAS Web module
(If hosted on Unix) Configure
[cmdb_ci_app_server_ora_ias_m]
applicative credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

Oracle Metric Client

.

Oracle Metric Client
(If hosted on Unix) Configure
[cmdb_ci_appl_ora_metric_client]
applicative credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

Oracle Metric Server

.

Oracle Metric Server
(If hosted on Unix) Configure
[cmdb_ci_appl_ora_metric_svr] applicative credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Oracle MySQL Server

MySQL Instance
Provide the following user or
[cmdb_ci_db_mysql_instance] users:
• For discovering Microsoft
Biztalk using SQL queries,
provide a user and
credentials for Microsoft
BizTalk.
• For discovering licensing
information on Microsoft
SQL Server, provide a
user and credentials for
accessing Microsoft SQL
Database.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1530


<!-- page 1531 -->
Application

CI type

Configure this

Configure applicative
credentials .
(If hosted on Linux) Give
the user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(If hosted on a Linux server)
On the ServiceNow AI
Platform, configure SSH
credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Oracle Net Listener

Oracle Notification Server

Oracle Database Listener
[cmdb_ci_db_ora_listener]
Oracle Notification Server
[cmdb_ci_appl_ora_notif_svr]

(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials
(If hosted on Unix) Configure
applicative credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

Oracle OACORE Server

Oracle OACORE Server
[cmdb_ci_appl_ora_oacore]

.

.

(If hosted on Unix) Configure
applicative credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
Oracle OAFM Server

Oracle OAFM Server
[cmdb_ci_appl_ora_oafm]

(If hosted on Unix) Configure
applicative credentials .
(If hosted on Unix) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1531


<!-- page 1532 -->
Application

CI type

Configure this

Oracle PeopleSoft

Peoplesoft Application Server
[cmdb_ci_appl_peoplesoft]

(If hosted on Unix) On the
ServiceNow AI Platform,
configure SSH credentials

.

Provide a user with
permissions to run commands
described in Service Mapping
commands not requiring a
privileged user.
Oracle Process Manager

Oracle Process Manager
[cmdb_ci_appl_ora_pm]

(If hosted on Unix) Configure
applicative credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Oracle Report Server

Oracle Report Server
[cmdb_ci_appl_ora_report]

(If hosted on Unix) Configure
applicative credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .
Oracle Tnslsnr Engine

Oracle TNS Listener Engine
[cmdb_ci_appl_ora_tnslsnr]

(If hosted on Unix) Configure
applicative credentials .
(If hosted on Linux) On the
ServiceNow AI Platform,
configure SSH credentials

.

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1532


<!-- page 1533 -->
Application

CI type

Configure this

Oracle Tuxedo and Oracle
Tuxedo Portal

Tuxedo
[cmdb_ci_appl_tuxedo]
and Tuxedo Portal
[cmdb_ci_appl_tuxedo_portal]

• On the ServiceNow AI
Platform, configure SSH
credentials .
• (Optional) For discovering
using the WinRM protocol,
see Configure WinRM
trusted hosts on MID
Server .
• (If hosted on Unix) Provide a
user with the elevated rights
for running commands
described in Service
Mapping commands
requiring a privileged user.

Oracle WebLogic Module

Oracle iAS Web module
(If hosted on Unix) Configure
[cmdb_ci_app_server_ora_ias_m]
applicative credentials .

Oracle WebLogic Server
(version 10.3)

Weblogic
(If hosted on Unix) Configure
[cmdb_ci_app_server_weblogic] applicative credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Oracle WebLogic On-demand
Router Load Balancer

Websphere ODR LB
(If hosted on Unix) Configure
[cmdb_ci_app_server_ws_odr] applicative credentials for
Service Mapping.
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .

Radware Alteon NG

Alteon Load Balancer
[cmdb_ci_lb_alteon]

On the ServiceNow AI
Platform, configure SNMP
credentials .

Radware AppDirector

Radware Load Balancer
[cmdb_ci_lb_radware]

On the ServiceNow AI
Platform, configure SNMP
credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1533


<!-- page 1534 -->
Application

Red Hat Cluster Suite

CI type

Configure this

Cluster Virtual IPs
[cmdb_ci_cluster_vip]

On the ServiceNow AI
Platform, configure SSH
credentials .

UNIX Cluster
[cmdb_ci_unix_cluster]
UNIX Cluster Node
[cmdb_ci_unix_cluster_node]

Provide a user with
permissions to read these
files:
• /etc/cluster/
cluster.conf

UNIX Cluster Resource
• /etc/hosts
[cmdb_ci_unix_cluster_resource]
Provide a user with elevated
rights for running this
command: clustat –x.
PostgreSQL Database

PostgreSQL Instance
(If hosted on Unix) Configure
[cmdb_ci_db_postgresql_instance]
applicative credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
(For hosted on Unix only)
Give this user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

Pivotal RabbitMQ

RabbitMQ Cluster
(If hosted on Unix) Configure
[cmdb_ci_appl_rabbitmq_cluster]
applicative credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1534


<!-- page 1535 -->
Application

CI type

Configure this

SAP Business Object XI
Schedule

SAP BO BOXIScheduleRouter On the ServiceNow AI
[cmdb_ci_appl_sap_bo_scheduler]
Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
seew Configure WinRM
trusted hosts on MID Server

SAP Crystal Management
Server

.

SAP Business Objects CMS
On the ServiceNow AI
server [cmdb_ci_appl_sap_bo] Platform, configure Windows
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

SAP Central Instance/
SAP Central Services (SCS)/
SAP Development
Infrastructure/
SAP Evaluated Receipt
Settlement (ERS)/

SAP CI Application
[cmdb_ci_appl_sap_ci]/
SAP SCS Application
[cmdb_ci_appl_sap_scs]/
SAP DI Application
[cmdb_ci_appl_sap_di]/

SAP Java Connector/

SAP ERS Application
[cmdb_ci_appl_sap_ers]/

SAP NetWeaver Dialog
Instance/

SAP JC Application
[cmdb_ci_appl_sap_jc]/

ABAP SAP Central Services
(ASCS)

SAP DI Application
[cmdb_ci_appl_sap_di]/
SAP ASCS Application
[cmdb_ci_appl_sap_ascs]

• (If hosted on a UNIX
server) On the ServiceNow
AI Platform, configure
applicative credentials
and SSH credentials . The
SSH credentials are used
to create connections from
SAP Central Instance (CI)
to other applications and
devices. In addition, provide
the user elevated rights to
be able to run commands
requiring a privileged
user: Service Mapping
commands requiring a
privileged user.
• (If hosted on a Windows
server) On the ServiceNow
AI Platform, configure
Windows credentials
to
create connections from
SAP CI to other applications
and devices.
• (Optional) For discovering
using the WinRM protocol,
see Configure WinRM
trusted hosts on MID
Server .
• (Optional for top-down
discovery by Service
Mapping) Provide a user
with permissions to run
SOAP on RFC read table
function.
• (Optional for topdown discovery by

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1535


<!-- page 1536 -->
Application

CI type

Configure this

Service Mapping) If your
organization deploys SAP
Digital Business Services
using web services and you
want to map all connected
services, perform the
following actions:
◦ Configure applicative
credentials for a user with
permissions to access the
following tables: CVERS,
DBCONS, and RFCDES.
◦ Ensure that you have
the web service URL. For
information on how to
create web services, see
https://blogs.sap.com/
2012/10/24/how-tocreate-web-servicesabap-based/ .
SAP HANA Database

SAP Hana Db
[cmdb_ci_appl_sap_hana_db]

(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

SAP Sybase DB

Sybase Instance
[cmdb_ci_db_syb_instance]

(If hosted on Unix) Configure
applicative credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
(For hosted on Unix only)
Give this user elevated rights
to be able to run Service
Mapping commands requiring
a privileged user.
(Optional) For discovering
using the WinRM protocol,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1536


<!-- page 1537 -->
Application

CI type

Configure this

see Configure WinRM trusted
hosts on MID Server .
SQL Server Analysis Services
(SSAS)

SQL Server Analysis Services
[cmdb_ci_db_mssql_analysis]

On the ServiceNow AI
Platform, configure Windows
credentials .

SQL Server Integration
Services (SSIS) Job

SQL Server Integration
Services Job
[cmdb_ci_db_mssql_int_job]

On the ServiceNow AI
Platform, configure Windows
credentials .

SQL Server Integration
Services (SSIS)

SQL Server
On the ServiceNow AI
Integration Services
Platform, configure Windows
[cmdb_ci_db_mssql_integration]credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

SQL Server Reporting
Services (SSRS)

SQL Server
Provide an SSRS OS user with
Reporting Services
permissions to run the SSRS
[cmdb_ci_db_mssql_reporting] Service.
Configure credentials for a
user with permissions to run
http get request to the entry
point URL.
(If hosted on a Unix server) On
the ServiceNow AI Platform,
configure SSH credentials .
Set the Credential
alias attribute to
[cmdb_ci_db_mssql_reporting].
Configuring this attribute
allows you later to use the
credential for this CI in
patterns.
(Optional) To discover
connections to report
datasources, configure
credentials for a user with the
permission to run http post
request to the entry point URL.
Configure applicative
credentials .
(Optional) For discovering
using the WinRM protocol,
see Configure WinRM trusted
hosts on MID Server .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1537


<!-- page 1538 -->
Application

CI type

Configure this

Sun iPlanet Web Server

Iplanet Web Server
Configure applicative
[cmdb_ci_iplanet_web_server] credentials .
On the ServiceNow AI
Platform, configure SSH
credentials .

Sun Directory

Sun LDAP Server
Configure applicative
[cmdb_ci_sun_ldap_dir_server] credentials .
On the ServiceNow AI
Platform, configure SSH
credentials .

Sun JES

JES
[cmdb_ci_email_server_jes]

Configure applicative
credentials .
On the ServiceNow AI
Platform, configure SSH
credentials .

Symantec Enterprise Vault

Enterprise Vault
On the ServiceNow AI
[cmdb_ci_email_server_ent_vault]
Platform, configure Windows
credentials .

TIBCO ActiveMatrix
BusinessWorks/

ActiveMatrix Business Works
[cmdb_ci_appl_tibco_matrix]/

TIBCO ActiveMatrix
BusinessWorks Process/

ActiveMatrix Business
Works Process
[cmdb_ci_appl_tibco_matrix_proc]/
• (If hosted on a Windows
server) On the ServiceNow
EMS Queue
AI Platform, configure
[cmdb_ci_appl_tibco_queue]/
Windows credentials .

TIBCO EMS Queue/
TIBCO Enterprise Message
Service (EMS)/

• (If hosted on Unix)
Configure applicative
credentials
for the Tibco
EMS.

Tibco Enterprise
• (If hosted on a Unix server)
Message Service
On the ServiceNow AI
[cmdb_ci_appl_tibco_message] Platform, configure SSH
credentials .
• (Optional) For discovering
using the WinRM protocol,
see Configure WinRM
trusted hosts on MID
Server .
TIBCO ActiveMatrix Adapter

Tibco Adapter
(If hosted on a Unix server) On
[cmdb_ci_appl_tibco_adapter] the ServiceNow AI Platform,
configure SSH credentials .
(If hosted on a Windows
server) On the ServiceNow AI
Platform, configure Windows
credentials .

Veritas Enterprise Vault

Enterprise Vault
(If hosted on a Windows
[cmdb_ci_email_server_ent_vault]
server) On the ServiceNow AI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1538


<!-- page 1539 -->
Application

CI type

Configure this

Platform, configure Windows
credentials .

Resolving credential-related issues
If there are discovery issues caused by incorrectly configured or missing credentials, resolve
them as explained in the KB article: Credentials & Permissions troubleshooting on Discovery,
Service Mapping, Orchestration
Credentials required for host discovery
There are credentials and permissions that Service Mapping requires for discovering hosts.
Prior to discovering applications, Service Mapping accesses hosts that applications run on and
discovers them. Make sure that you provide all necessary credentials to allow host discovery.
The ServiceNow AI Platform provides a centralized way of configuring credentials for Discovery,
Service Mapping, and other applications. It allows you to configure credentials for hosts and
applications only once. If you have already configured host-related credentials for another
application, you do not need to do it again for Service Mapping.

Credentials required for discovery of hosts running on UNIX or Linux
Discovery, Orchestration, and Integration Hub explore UNIX and Linux devices by using SSH
credentials to execute commands over Secure Shell (SSH).
To provide sufficient permissions, configure one of the following UNIX and Linux credentials:
• Non-root user and password and using the ‘sudo’ utility to run selected commands as root
• Root user and password
For information on commands requiring sudo-level rights, see Service Mapping commands
requiring a privileged user and Commands that require root privileges for Discovery and
Orchestration .
To access Unix-based hosts with non-root credentials, provide the read access to the following
files and directories:
• /etc/*release
• /etc/bashrc
• /etc/profile
• /proc/cpuinfo
• /proc/vmware/sched/ncpus
• /var/log/dmesg
• APD directory

Credentials required for discovery of hosts running on Windows servers
To provide sufficient permissions, configure one of the following Windows credentials:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1539


<!-- page 1540 -->
• A domain user with local administrator access on the target Windows hosts.
• A domain administrator.

Note: You may need domain administrator credentials only in some cases. For example,
when discovering domain controllers.
Configure MID Server to use Windows credentials

.

(Optional) For discovering using the WinRM protocol, see Configure WinRM trusted hosts on MID
Server .

Resolving credential-related issues
If there are discovery issues caused by incorrectly configured or missing credentials, resolve
them as explained in the KB article: Credentials & Permissions troubleshooting on Discovery,
Service Mapping, Orchestration
Service Mapping commands requiring a privileged user
Service Mapping uses commands requiring elevated rights to discover and map Unix-based
hosts in your organization. In addition to configuring necessary credentials, configure servers in
your organization to allow Service Mapping to run these commands with elevated rights.
You do not run these commands directly. Service Mapping uses commands requiring elevated
rights as part of the following processes:
• host detection
• process identification on port
• discovering CIs using patterns
Some of these commands do not require elevated rights, unless directories that Service
Mapping must access are protected. For more information, see Service Mapping commands not
requiring a privileged user.

Operating system commands requiring elevated rights
AIX commands requiring elevated rights
Command

Parameter

Description

cat

file-name

Shows the file content.

ls

-F-1

Lists the directory content.

-1HF
-w 1
-1
procwdx

Process_id

Gets working directory of a
process.

rmsock

Socketname tcpcp

Finds process listening on a
specific port.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1540


<!-- page 1541 -->
AIX commands requiring elevated rights (continued)
Command

Parameter

Description

lsof

-Pnl +M -i

Shows files or connections
associated with the process.

lstat

Various options

Fetches information about a link.

ps

eww

Fetches environment variables
for the process on AIX.

HP-UX commands requiring elevated rights
Command

Parameter

Description

cat

file-name

Shows the file content.

ls

-F-1

Lists the directory content.

-1HF
-w 1
-1
pfiles

Process_id

Shows files or connections
associated with the process.

lsof

-Pnl +M -i

Shows files or connections
associated with the process.

Solaris commands requiring elevated rights
Command

Parameter

Description

cat

File_name

Shows the file content.

ls

ls -F-1

Lists the directory content.

ls -1HF
ls -w 1
ls -1
e-l

Fetches file attributes used for
file caching decision.

pargs

-e

Gets the executable directory.

pargs

-a

Gets the process.

lsof

-Pnl +M -i

Shows files and connections
associated with the process.

netstat

-anu

Lists the open ports. Required
for Solaris version 11.2 or later.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1541


<!-- page 1542 -->
Solaris commands requiring elevated rights (continued)
Command

Parameter

Description

Ifconfig

Ifconfig -a

Shows interface information
(need sudo to get the MAC
addresses).

pwdx

Process_id

Gets the process information.

pargs

-e process_id

Gets the process information.

ps

-eo user, pid, ppid,
comm, args

Gets the process list.

inetadm

-l or without params

Handles the case of
application using the inet
daemon.

Linux commands requiring elevated rights
Commands

cat

Parameter

Description

File_name

Shows information about file
content.

scsi
tr '\\n'
/proc
/proc/cpuinfo
sys
sys/hypervisor
sys/hypervisor/
compilation
sys/hypervisor/
compilation/compiled
by
cut

-d

Shows the entire output of a
file.

-f1
dmidecode

-t 17
-s bios-vendor

Shows information about
hardware of the Linux server
in a readable format.

-t 1
-t 2
-t 3
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1542


<!-- page 1543 -->
Linux commands requiring elevated rights (continued)
Commands

Parameter

lshw

ls

Description

Shows information about
hardware of the Linux server
in a readable format.

ls -F-1

Lists directory content.

ls -1HF
ls -w 1
ls -1
ls -l
netstat

-ltnup

Shows the open network
connections.

-ltnp
-ntup
-an
Isof

-Pnl +M -i

Note: Used in some

Shows files and connections
associated with the process.

cases as an alternative
to netstat.

ss

-ltnup

Shows the open network
connections.

-ntup
-an
stat

--format="%Y"

Shows the modification time
of the file.

-L file_name
fdisk

-l

Displays all disk partitions

Application commands requiring elevated rights
Service Mapping uses some of these commands in patterns.
Apache Web Server (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

netstat

Various options

Lists open ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1543


<!-- page 1544 -->
Apache Web Server (on UNIX) (continued)
Command

Parameter

Description

ss

Various options

Lists open ports.

ls

Various options

Lists files and folders in the
specified folder.

Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

netstat

Various options

Lists the open ports.

ss

Various options

Lists open ports.

find

-name

This command is used only
for creating the web services
connections.

Apache Tomcat (on UNIX)

Finds specific strings in files
and folders.

Apache Tomcat WAR (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

version.sh/
version.bat

-

Gets the Tomcat version.

netstat

Various options

Lists the open ports.

ss

Various options

Lists open ports.

find

-name

This command is used in
connection sections of
the pattern for discovering
Apache Tomcat WAR
connections.
Finds specific strings in files
and folders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1544


<!-- page 1545 -->
App TNS Service (on UNIX)
Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

grep

Various options

Extracts strings from the
output.

BIG-IP Global Traffic Manager (GTM) F5 (on F5 BIG-IP)
Command

Parameter

Description

ping

-a -c 1
[url[1].host]

Gets the host IP.

BMC CTRL-M Enterprise Manager (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

BMC CTRL-M Gateway (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

find

Various options

This command is used only to
create connections to Control
M Server.
Finds file and folder paths.

Citrix Netscaler (on Citrix Netscaler)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

show

Various options

Retrieves Netscaler IP
address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1545


<!-- page 1546 -->
EMC Documentum Broker (on UNIX)
Command

Parameter

find

Various options

Description

Finds connections to
Docbase.

FormEngine (on UNIX)
Command

Parameter

Description

grep

Various options

(On Unix only) Extracts strings
from the output.

ls

Various options

(On Unix only) Lists files and
folders in the specified folder.

cat

-

(On Unix only) Shows the file
content.

IBM Customer Information Control System (CICS) (on UNIX)
Command

Parameter

Description

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

grep

Various options

Extracts strings from the
output.

Command

Parameter

Description

grep

Various options

(For Unix only) Extracts strings
from the output.

find

Various options

(For Unix only)

IBM CTRL-M Server (on UNIX)

Finds file and folder paths.

IBM CICS Transaction Gateway CTG (on UNIX or Windows)
Command

Parameter

Description

grep

Various options

(For Unix only) This command
is used only to create CICS
connections. Extracts strings
from the output.

cat

-

(For Unix only) This command
is used only to create CICS
connections. Displays the file
content in the output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1546


<!-- page 1547 -->
IBM CICS Transaction Gateway CTG (on UNIX or Windows) (continued)
Command

Parameter

Description

find

Various options

(For Unix only) This command
is used only to create CICS
connections. Finds specific
strings in files and folders.

Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

cat

-

Displays the file content in the
output.

Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

find

-name

Finds files and folders in the
specified folder.

IBM DB2 (on Linux)

IBM J2EE EAR (on Linux)

IBM WebSphere Application Server (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

-name

This command is used only
for creating the Web Services
connections.

find

-type

Finds files and folders for the
specific name.

IBM WebSphere Portal (on UNIX)
Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1547


<!-- page 1548 -->
IBM WebSphere Portal (on UNIX) (continued)
Command

Parameter

Description

cat

-

Shows the file content.

netstat

Various options

Lists the open ports.

ss

Various options

Lists open ports.

IBM WebSphere Message Broker Flow (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

ps

-ef

Gets the process information.

netstat

Various options

Lists the open ports.

ss

Various options

Lists open ports.

IBM WebSphere Message Broker (on UNIX)
Command

Parameter

Description

ps

-ef

Gets the process information.

netstat

Various options

Lists the open ports.

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

IBM MQ (on UNIX) — formerly IBM WebSphere MQ
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

IBM MQ Queue (on UNIX) — formerly IBM WebSphere MQ Queue
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1548


<!-- page 1549 -->
Jboss Module (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

Command

Parameter

Description

ls

Various options

(On Unix only) Lists files and
folders in the specified folder.

grep

Various options

Extracts strings from the
output.

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

find

Various options

(For Windows only) Finds
specific strings in files and
folders.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

grep

Various options

Extracts strings from the
output.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

Jboss (on UNIX and Windows)

JRun (on UNIX)

JRun WAR Inc (on UNIX)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1549


<!-- page 1550 -->
Microsoft Exchange Client Access Server (CAS), Microsoft Exchange Hub Transport Server,
Microsoft Exchange Mailbox (on Windows)
Command

Parameter

Get-ExchangeServer

-status -Identity "+ Extracts the list of Microsoft
$hostname+"| export- Exchange hosts and role
clixml $env:TEMP
\exchange_pwrshell_output.xml

Get-ExchangeServer

format-table
Extracts the list of Microsoft
-autosize
Exchange hosts and role in
-HideTableHeaders
table format
Name,Fqdn,IsMailboxServer

Get-MailboxServer

format-list

Getformat-table
ClusteredMailBoxServerStatus
-Property
OperationalMachines

Description

Extracts the list of Microsoft
Exchange Mailbox servers.
Extracts information about
Microsoft Exchange Mailbox
clusters.

Get-ExchangeServer

format-table
Extracts information on
-autosize
Microsoft Exchange Hub
-HideTableHeaders
Transport servers
Name,Fqdn,IsHubTransportServer

Get-StorageGroup

-server "+$hname
+" | select
SystemFolderPath |
Export-Csv out.csv
-notype;cat out.csv

Get-MailboxDatabase

| select
Extracts information about the
LogFolderPath
Microsoft Exchange Mailbox
| formatdatabase.
table -autosize
-hideTableHeaders;
Get-MailboxDatabase
| select
EdbFilePath| formattable -autosize
-hideTableHeaders;GetMailboxDatabase
| select
TemporaryDataFolderPath|
format-table
-autosize
-hideTableHeaders

Extracts information about
storage and exports it into a
file.

MySQL Server (on Linux)
Command

Parameter

Description

grep

Various options

(On Unix only) Extracts strings
from the output.

netstat

Various options

Lists open ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1550


<!-- page 1551 -->
MySQL Server (on Linux) (continued)
Command

Parameter

Description

ss

Various options

Lists open ports.

ps

--pid=[process.pid]
--no-headers -o "
%U : %p : %a”

Gets the userid parameter
value.

MySQL Cluster MGM Node (on Linux)
Command

Parameter

Description

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

ps

--pid=[process.pid]
--no-headers -o "
%U : %p : %a”

(On Unix only) Gets the userid
parameter value.

Command

Parameter

Description

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

ps

--pid=[process.pid]
--no-headers -o "
%U : %p : %a”

Gets the userid parameter
value.

ls

[IncludeTabletmp[].files]
This command is used if

Nginx (on UNIX)

necessary to create HTTP
connections.
Lists files and folders in the
specified folder.

cat

[IncludeTabletmp[].files]
This command is used if
necessary to create HTTP
connections.
Shows the file content.

Oracle E-Business Suite (on UNIX)
Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

grep

Various options

Extracts strings from the
output.

export

-

Sets variables.

echo

Various options

Prints strings in the output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1551


<!-- page 1552 -->
Oracle E-Business Suite (on UNIX) (continued)
Command

Parameter

Description

sqlplus

Various options

Creates the connection to the
Oracle instance.

awk

Various options

Manipulates the output.

netstat

Various options

Gets open ports.

Oracle Advanced Queue Queue (on UNIX)
Command

Parameter

Description

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

Oracle Concurrent Server (on UNIX)
Command

Parameter

Description

grep

Various options

(For Unix only) Extracts strings
from the output.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

awk

Various options

(For Unix only) Manipulates
the output.

ls

Various options

(For Unix only) Lists files and
folders in the specified folder.

cat

-

(For Unix only) Displays the file
content in the output.

find

Various options

Finds specific strings in files
and folders.

Oracle Discoverer Engine (on UNIX)
Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

grep

Various options

Extracts strings from the
output.

cat

-

Shows the file content.

Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

Oracle Discoverer UI (on UNIX)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1552


<!-- page 1553 -->
Oracle Discoverer UI (on UNIX) (continued)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

cat

-

Shows the file content.

Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Oracle Form UI (on UNIX)

Oracle Fulfillment Server (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Oracle HTTP Server (on UNIX)

Oracle Metric Client (on UNIX)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1553


<!-- page 1554 -->
Oracle OACORE Server (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Oracle OAFM Server (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

ps

-ef

Gets the process information.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

Oracle Database (on UNIX)

Oracle iAS Web Module (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

(For Unix only) Lists files and
folders in the specified folder.

cat

-

(For Unix only) Shows the file
content.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1554


<!-- page 1555 -->
Oracle Process Manager (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Oracle Report Server (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Oracle Tnslsnr Engine (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Oracle WebLogic Module (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

-name

This command is used only
for creating the Web Services
connections.

find

-type

Finds files and folders for the
specific name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1555


<!-- page 1556 -->
Oracle WebLogic Server (version 10.3) (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Oracle WebLogic On-demand Router Load Balancer (on UNIX)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

ls

Various options

Lists files and folders in the
specified folder.

cat

-

Shows the file content.

Command

Parameter

Description

grep

Various

Extracts strings from the
output

ls

Various

Lists files and folders on the
given folder.

cat

-

Displays the file content in the
output.

find

-name

Oracle Tuxedo (on UNIX)

This command is used
only to create web service
connections.
Finds files and folders for
specific name.

netstat

Various

Gets open ports.

ss

Various options

Lists open ports.

ps

-ef

(For Unix only) Gets process
attributes.

Oracle Tuxedo Portal (on UNIX)
Command

Parameter

Description

grep

Various

Extracts strings from the
output

ls

Various

Lists files and folders on the
given folder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1556


<!-- page 1557 -->
Oracle Tuxedo Portal (on UNIX) (continued)
Command

Parameter

Description

cat

-

Displays the file content in the
output.

PostgreSQL Database (on UNIX)
Command

Parameter

Description

ls

[IncludeTabletmp[].files]
This command is used only to
create the HTTP connections.
Lists files and folders in the
specified folder.

Rabbit MQ (on UNIX)
Command

Parameter

Description

ps - ef

ps -ef | grep "+
Gets the parent process.
$process.parentProcessId
+" |egrep -v -e grep
-e beam

Red Hat Cluster Suite (on Linux)
Command

Parameter

Description

clustat

-x

Displays the cluster
configuration and the status in
XML format.

Commands requiring a privileged user for discovering SAP applications: ABAP, SAP Central
Services (ASCS), SAP Control Instance, SAP Netweaver Dialog Instance, SAP Evaluated
Receipt Settlement (ERS), SAP Java Cluster (SJC), SAP Central Services (SCS) (on UNIX)
Command

Parameter

Description

pargs

-e

Gets the executable directory.

ls

Various options

Lists files and folders in the
specified folder.

ping

-c 1

Verifies that the host is
answering.

netstat

Various options

Lists open ports.

Isof

-Pnl +M -i

Shows files and connections
associated with the process.

Note: Used in some
cases as an alternative
to netstat.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1557


<!-- page 1558 -->
Commands requiring a privileged user for discovering SAP applications: ABAP, SAP Central
Services (ASCS), SAP Control Instance, SAP Netweaver Dialog Instance, SAP Evaluated
Receipt Settlement (ERS), SAP Java Cluster (SJC), SAP Central Services (SCS) (on UNIX)
(continued)
Command

Parameter

Description

CVERS

-

Retrieves the version of
installed SAP modules.

DBCONS

-

Retrieves the connection
strings to SAP DB.

RFCDES

-

Retrieves the connection
string to systems integrated
with SAP.

sapcontrol

-function
ABAPGetComponentList

Retrieves the sysid for SAP
applications and components.

Command

Parameter

Description

netstat

Various options

Lists the open ports.

Sun Directory (on Solaris)

Sun iPlanet Web Server (on Solaris)
Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

netstat

Various options

Lists the open ports.

Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

grep

Various options

Extracts strings from the
output.

Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

Sun JES (on Solaris)

Sybase (on UNIX)

TIBCO ActiveMatrix Adapter (on UNIX)
Command

Parameter

Description

cat

-

Shows the file content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1558


<!-- page 1559 -->
TIBCO ActiveMatrix Adapter (on UNIX) (continued)
Command

Parameter

Description

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

TIBCO ActiveMatrix BusinessWorks (on UNIX)
Command

Parameter

Description

hostname

-

Gets the hostname.

ls

Various options

Lists files and folders in the
specified folder.

grep

Various options

Extracts strings from the
output.

cat

-

Shows the file content.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

TIBCO ActiveMatrix BusinessWorks Process (on UNIX)
Command

Parameter

Description

hostname

-

Gets the hostname.

ls

Various options

Lists files and folders in the
specified folder.

grep

Various options

Extracts strings from the
output.

cat

-

Shows the file content.

findstr

Various options

Extracts strings from the
output.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

cut

Various options

Splits the output line.

Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

(for Windows)

TIBCO EMS Queue (on UNIX)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1559


<!-- page 1560 -->
TIBCO Enterprise Message Service (EMS) (on UNIX)
Command

Parameter

Description

ls

Various options

Lists files and folders in the
specified folder.

Related topics
Service Mapping commands not requiring a privileged user
Service Mapping commands not requiring a privileged user
Most of commands utilized by Service Mapping for discovery and mapping do not require
elevated rights.
Review this list of commands to understand how Service Mapping uses them and to make sure
that the virtual security of your company is not compromised.
You do not run these commands directly. Service Mapping uses commands requiring elevated
rights as part of the following processes:
• host detection
• process identification on port
• discovering CIs using patterns

Operating systems
AIX commands
Command

Parameter

Description

awk

various options

Parses the string.

istat

file_name

Gets last modification time of
file.

nslookup

hostname

Resolve DNS host name.

ping

-c count ip/host

Pings the host.

arp -an

various options

Shows ARP table.

grep

String to search

Finds string in previous
command output.

traceroute

-n ip_address

Shows layer 3 network route to
target host.

netstat

-an

Shows open network
connections.

-Aan
ps

-eo user, pid, ppid, Gets the process list.
comm, args

find

Directory and parameters to
search

Searches for files by name or
type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1560


<!-- page 1561 -->
HP-UX commands
Command

Parameter

Description

ping

-c count ip/host

Pings the host.

arp -an

Shows the ARP table.

grep

String to search

Finds string in previous
command output.

awk

various options

Parses the string.

traceroute

-n ip_address

Shows layer 3 network route to
target host.

netstat

-an

Shows open network
connections.

ps

-eo user, pid, ppid,
comm, args

Gets the process list.

find

Directory and parameters for
search

Searches for files by name or
type.

Commands

Parameter

Description

sysvar

SYSNAME

Gets the system name.

IBM / z /OS

hostname

Retrieves the device name.

grep

String to search

Finds the string in command
output.

hostname

-

Gets the hostname.

netstat

-g | awk '{if (NR>4)
print \$1,\$3}'

Gets network information.

netstat

-r | awk '{if (NR>3)
print \$1,\$2,\$5}'

Gets gateway information.

netstat

-h | awk '{if (NR>4)
print \$1}' | grep
-v '127.0.0.1'

Gets IP array.

netstat

-R ALL | awk '{if
(NR>1) print \$0}'

Gets interfaces.

netstat

df -k | awk '{print
\$1,\$2}' |sed -e
s'/(//' | sed -e
s'/)//' 2> /dev/null

Gets the file system
information.

ps

-

Gets the process list.

ls

Various options

Lists files and folders in the
specified folder.

cat

file-name

Shows the file content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1561


<!-- page 1562 -->
IBM / z /OS (continued)
Commands

Parameter

Description

cut

Various options

Splits the output according to
entered parameters.

uname

l, v, rm, s

Gets the OS type.

Commands

Parameter

Description

nslookup

hostname

Resolves the DNS host name.

Linux

ping

-c count ip

Pings the host.

host
arp

-an/n

Shows the ARP table.

lp n

-an/n

Shows the ARP table.

String to search

Finds the string in previous
command output.

grep

-v
hypervisor
proc
cpuinfo
-i 'attached scsi'
var
log
dmesg
'SCSI device'
'Disk
UUID
awk

Various options

Parses the string.

netstat

-an

Shows open network
connections.

ss

-an

Shows open network
connections.

ps

-eo user, pid, ppid,
comm, args, wwwx

Gets the process list.

egrep

Various options

Searches text in previous
command output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1562


<!-- page 1563 -->
Linux (continued)
Commands

Parameter

Description

find

Directory and parameters for
search

Searches for files by name or
type.

traceroute

-n ip_address

Shows the layer 3 network
route to target host.

df

-kP, echo

Extracts the information about
the file system, including the
size in KB.

uptime

Various options

Shows the current time, how
long the system has been
running, how many users are
currently logged on, and the
system load averages for the
past 1, 5, and 15 minutes.

date

Various options

perl

-e 'print time

Opens the Perl shell and
prints time.

command

-v vxprint

This command is used in the
Debug mode.

uname

-a

Displays the date in the time
zone on which Linux operating
system is configured.

Displays the information about
the system.

-r
ipfconfig
ip

-a

Shows the configuration of the
network interface.

route list

Displays information about
network interface, including
the routing table.

-4 -o addr show
-6 -o a
r
String to parse

route

-n

ip r

Shows the IP routing table.
Shows the IP routing table.

sed

-n '2!p'

bash

-c

Executes a function using the
SED stream editor.
Executes the command using
the UNIX shell or command
language.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1563


<!-- page 1564 -->
Linux (continued)
Commands

Parameter

Description

waagent

-version 2>/dev/null

Displays the information
extracted from the Microsoft
Azure Linux agent.

Solaris
Command

Parameter

Description

nslookup

hostname

Resolves the DNS host name.

ping

-c count ip/host

Pings the host.

arp

-an

Shows the ARP table.

grep

String to search

Finds the string in previous
command output.

awk

Various options

Parses the string.

traceroute

-n ip_address

Shows the layer 3 network
route to target host.

netstat

-an

Shows the open network
connections.

zoneadm

List

Shows the list of zones.

egrep

Various options

Searches text in previous
command output.

find

Directory and parameters

Searches for files by name or
type.

Windows WMI Queries
Query

Description

Select * from
Win32_ComputerSystem

Gets the server basic information like serial
number.

Select LastModified from
CIM_LogicalFile Where Name=...

Gets the last modification time of a file.

Select AddressWidth from
Win32_Processor

Gets the computer architecture (32 bit or 64
bit).

Select * From Win32_Process
where (ProcessId = ?)

Gets the process list running on the computer.

Select Name from
CIM_LogicalDisk

Gets the file systems on the computer, such as
C: or D:.

Select FileName, Extension
from CIM_Directory where
Drive=’drive’ and Path='path'

Gets the list of files in a specific directory.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1564


<!-- page 1565 -->
Windows commands
Command

Parameter

get_process_info.exe

Process_id

type

File_name

Shows the text file content.

nslookup

Host_name

DNS lookup

arp

-a

Shows the ARP table.

netstat

-ano

Shows the network
connections.

findstr

Various options

Finds the string in the
previous command output.

dir

/q

Description

Extracts information on the
processes using executable
created by ServiceNow.

Lists files in the directories.

/s /b
paping

--nocolor -c 1 -p

Utility to run TCP ping against
given host.

port_num
ip_address
ping

-n 1

Pings the host.

ip_address/host
tracert

Ip_address

Shows the layer 3 network
route to the target host.

Command

Parameter

Description

show partition

Various options

Get the partition configured.

sh-run allpartitions

Various options

Get details like virtual-server,
port, service group, and pool
members information.

show slb virtualserver allpartitions

Various options

Get the status of the virtual
server and hit count details.

Applications
A10 load balancers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1565


<!-- page 1566 -->
Commands not requiring a privileged user for discovering ABAP SAP Central Services
(ASCS) (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

msg_server

-V

Gets the version.

ping

-n 1

(For Windows only) Verifies
that the host is answering.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

Active Directory Domain Controller (on Windows)
Command

Parameter

Description

netstat

Various options

Gets open ports on

ss

Various options

Lists open ports.

hostname

-

Gets the hostname.

dir

Various options

Lists all files in the specified
folder.

Command

Parameter

Description

httpd

-V

Gets the version.

cut

Various options

Splits the output line.

Apache Web Server (on UNIX)

opmnctl

This command is used only

status -fmt
for discovering the OC4J
%cmp32%prt32%por40%pidconnectivity.
and

@farm status
-noheaders -fsep "|"
-fmt %cmp%prt%clu
%ins%por
sort

-u

Gets the status of the OPMN
CTRL service.

This command is used only
for discovering the Weblogic
connectivity. Sorts the output.

Apache Web Server (on Windows)
Command

Parameter

Description

httpd.exe

-V

Gets the version.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1566


<!-- page 1567 -->
Apache Web Server (on Windows) (continued)
Command

opmnctl

Parameter

Description

This command is used only

status -fmt
for discovering the OC4J
%cmp32%prt32%por40%pidconnectivity.
and

@farm status
-noheaders -fsep "|"
-fmt %cmp%prt%clu
%ins%por

Gets the status of the OPMN
CTRL service.

Apache Tomcat (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

findstr

Various options

(On Windows only) Extracts
strings from the output.

find

Various options

(For Windows only) Finds
specific strings in files and
folders.

find

-name

Creates the web services
connections. Finds specific
strings in files and folders.

version.sh/
version.bat

-

Gets the Tomcat version.

java -cp " +
$install_directory
+ "/lib/catalina.jar
org.apache.catalina.util.ServerInfo

Gets the Tomcat version.

netstat

Various options

Lists the open ports.

find

-name

This command is used only
for creating the web services
connections.
Finds specific strings in files
and folders.

ss

Various options

(For Linux only) Lists the open
ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1567


<!-- page 1568 -->
Apache Tomcat WAR (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

findstr

Various options

(On Windows only) Extracts
strings from the output.

find

Various options

(For Windows only) Finds
specific strings in files and
folders.

version.sh/
version.bat

-

Gets the Tomcat version.

netstat

Various options

(Windows only) Lists the open
ports.

App TNS Service (on Windows)
Command

Parameter

Description

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

netstat

Various options

(On Windows only) Lists open
ports.

grep

Various options

(On Windows only) Extracts
strings from the output.

BIG-IP Global Traffic Manager (GTM) F5 (on F5 BIG-IP)
Command

Parameter

Description

show

/gtm pool
This command is used only
[wide_ip_pool_4_cmd[1].pool]
to create connections to pool
members
members.

Gets the pool members.

list

/gtm server
This command is used only
[servers_from_cmd[].server]
to create connections to pool
addresses
members.

Lists the alias server
addresses.
BIG-IP Local Traffic Manager (LTM ) F5 (on F5 BIG-IP)
Command

b

Parameter

Description

rule [rule name]
list

This command is used only
for creating connections from
rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1568


<!-- page 1569 -->
BIG-IP Local Traffic Manager (LTM ) F5 (on F5 BIG-IP) (continued)
Command

Parameter

and

Description

Lists existing rules on

virtual address
BIGPipe.
[entry_point.ip_address]
list

ltm rule [rule name]
and

This command is used only
for creating connections from
rules.

Lists existing rules on TMSH.
data-group
wts_routing_destination_prod
| grep -A 1 [ep_uri]
BIG-IP Device Service Clustering
Command

Parameter

Description

show cm trafficgroup – get

Various options

This command is used to
get traffic and clustering
information.

BMC CTRL-M Enterprise Manager (on UNIX or Windows)
Command

Parameter

Description

findstr

Various options

(For Windows only) Extracts
strings from the output.

netstat

Various options

(For Windows only) Lists open
ports.

BMC CTRL-M Gateway (on UNIX or Windows)
Command

Parameter

Description

findstr

Various options

(For Windows only) Extracts
strings from the output.

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

find

Various options

This command is used only to
create connections to Control
M Server.
Finds file and folder paths.

xargs

grep <string>

This command is used only
to create connections to IBM
CTRL-M Server.
Runs the command on all lists
from the output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1569


<!-- page 1570 -->
BMC IT Asset Management (ITAM) Software
Command

Parameter

Description

tnsping

Various options

Retrieves information about
Oracle connections.

CA Identity Manager Provisioning Server (for Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

Command

Parameter

Description

find

Various options

Finds the base init
configuration file path.

locate

Various options

Finds the base init
configuration file path if the
'find' command fails.

nodetool version

Various options

Retrieves the Apache
Cassandra version.

nodetool
describecluster

Various options

Retrieves the cluster name.

nodetool info

Various options

Retrieves the data center and
rack information

nodetool ring

Various options

Retrieves the workload
running for Apache
Cassandra.

nodetool tablestats

Various options

Retrieves list of keyspaces
available on a cluster.

dse

–v

Retrieves the DataStax
Cassandra version.

dsetool ring

Various options

Retrieves the workload
running for DataStax
Cassandra.

Cassandra (for UNIX)

Cisco ACE Command Line Interface (on Cisco CSM)
Command

Parameter

Description

show

context, running

Shows the requested
information.

include

-

Extracts strings from the
output.

echo

-

Displays strings to the output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1570


<!-- page 1571 -->
Cisco Global Site Selector (on Cisco CSM)
Command

Parameter

Description

show

gslb-config domainlist

Shows the domain list.

show

gslb-config dns rule

Shows the DNS rule output.

show

gslb-config answergroup

Show the VIP answer.

Citrix Delivery Controller (on Windows)
Command

powershell

Parameter

Description

Gets applications managed by

Add-PSSnapin
this Delivery Controller.
Citrix.Broker.Admin.V2;
GetBrokerApplication
-Name
[entry_point.name]
| select
Name,CommandLineExecutable,CommandLineArguments,WorkingD
| Format-List
and

Add-PSSnapin
Citrix.Broker.Admin.V2;
GetBrokerApplication
-Name
[entry_point.name]
| select
Name,CommandLineExecutable,CommandLineArguments,Workin
| Format-List
And

Add-PSSnapin
Citrix.Broker.Admin.V2;
Get-BrokerMachine
-DesktopGroupName
‘ [delivery_groups[1].name]
Citrix Usage Collector (on Windows)
Command

qfarm

Parameter

Description

Discovers epic icons.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1571


<!-- page 1572 -->
Citrix XenApp (on Windows)
Command

Parameter

Description

get_xenapp_apps.ps1

[entry_point.icon_path]
Runs powershell commands
that retrieve the Citrix icon info
from the Citrix repository.

powershell

Various options

Runs powershell commands.

Citrix Presentation Server (on Windows)
Command

Parameter

Description

cscript

//NoLogo

Runs VB scripts without a
popup box.

GetAppsInFolder.wsf

[entry_point.icon_path]
Runs vbscript commands that
retrieve the Citrix icon info
from the Citrix repository.

Citrix Netscaler (on Citrix Netscaler)
Command

Parameter

show

cs policy, cs
action,cs Policy, lb
vserver

Description

This command is used only
for discovering outgoing
connections.
Shows the requested
information.

grep

Various options

Extracts strings from the
output.

Citrix Netscaler Global Server Load Balancer (on Citrix Netscaler)
Command

Parameter

show

ns.conf

Description

This command is used only
for discovering outgoing
connections if SNMP or SSH
credentials are not provided.
Shows the contents of the
ns.conf file.

Connect-IT Service (on UNIX or Windows)
Command

Parameter

Description

findstr

Various options

(For Windows only) Extracts
strings from the output.

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1572


<!-- page 1573 -->
EMC Documentum Docbase (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

FormEngine (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

findstr

Various options

(On Windows only) Extracts
strings from the output.

find

Various options

(For Windows only) Finds
specific strings in files and
folders.

Generic application (on UNIX or Windows)
Command

Parameter

Description

findstr

Various options

(On Windows only) Extracts
strings from the output.

tasklist

Various options

Lists all running tasks.

netsh

http show
servicestate

Shows a snapshot of the HTTP
service.

Command

Parameter

Description

systemctl list-units
--type service

Various options

Show the service status.

/bin/systemctl
status
"+service_name
+".service

Various options

Show the service status.

service --status-all

Various options

Show the service status.

read /etc/services

Various options

Allows access to the file.

Generic application (on Linux)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1573


<!-- page 1574 -->
HAProxy (on UNIX or Windows)
Command

Parameter

Description

ls

Various options

(On Unix only) Lists files and
folders in the specified folder.

tail

Various options

(On Unix only) Displays the
end of the output.

HP Service Manager Application Server
Command

Parameter

Description

tnsping

Various options

Retrieves information about
Oracle connections.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

HP Service Manager Index (on Windows)
Command

Parameter

Description

netstat

Various options

Lists open ports.

HP Service Manager Knowledge Base (on Windows)
Command

Parameter

Description

netstat

Various options

Lists open ports.

IBM WebSphere Message Broker (on Windows)
Command

dmqdocbroker

Parameter

-s -c getdocbasemap

Description

Gets the docbase information.

and

-t
[computer_system.primaryHostname]
-s -c getdocbasemap
and

-s -c getservermap
[docbas]
-t
[computer_system.primaryHostname]
-s -c getdocbasemap
[docbase]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1574


<!-- page 1575 -->
IBM WebSphere Message Broker (on Windows) (continued)
Command

Parameter

Description

del

Various options

Deletes the XML file
containing the old binding
information.

BTSTask

ExportBindings /
Destination:%TEMP
%\MyBindings.xml /
Database:
[MgmtDbName] /
server:[serverName]

This command is used only
if there are not MSSQL
credentials.
Extracts the binding info and
places it into the XML file.

IBM CTRL-M Server (on Unix or Windows)
Command

Parameter

Description

findstr

Various options

(For Windows only) Extracts
strings from the output.

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

IBM CICS Transaction Gateway CTG (on UNIX or Windows)
Command

Parameter

Description

findstr

Various options

(For Windows only) This
command is used only to
create CICS connections.
Extracts strings from the
output.

dir

Various options

(For Windows only) This
command is used only to
create CICS connections.
Lists files and folders in the
specified folder.

type

-

(For Windows only) This
command is used only to
create CICS connections.
Displays the file content in the
output.

Command

Parameter

Description

source

[installed_dir]db2profile
Sets the DB2 variables.

db2

list database directory

IBM DB2 (on Linux)

Displays the DB2 installation
parameters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1575


<!-- page 1576 -->
IBM DB2 (on Linux) (continued)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

head

-1

Displays only the first line from
the output.

db2level

-

Displays the DB2 version.

cat

-

Displays the file content in the
output.

xargs

-I {} echo
list tablespace
containers for {}
';'

This command is used only to
create storage connections.
Runs the command on all lists
from the output.

Command

Parameter

Description

db2cmd

/c /w /i

Lists the DB2 directories.

db2

list database directory

Displays the DB2 installation
parameters.

find

Various options

Finds specific strings in files,
folders, or standard output.

dir

Various options

Lists files and folders in the
specified folder.

db2level

-

Displays the DB2 version.

echo

Various options

This command is used only
for storage connectivity. Prints
the strings in the output.

findstr

Various options

This command is used only for
storage connectivity.

IBM DB2 (on Windows)

Extracts strings from the
output.

for

Various options

This command is used only
for storage connectivity. Runs
loops.

Command

Parameter

Description

netstat

Various options

Gets the DB2 name.

IBM DB2 (on IBM z/OS)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1576


<!-- page 1577 -->
IBM J2EE EAR (on Windows)
Command

Parameter

Description

netstat

Various options

Lists open ports.

find

Various options

Finds specific strings in files
and folders.

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

IBM Websphere Application Server (on UNIX)
Command

Parameter

Description

versionInfo.sh

-

Gets the Websphere
Application Server version.

IBM Websphere Application Server (on IBM z/OS)
Command

Parameter

Description

"oeconsol 'D
OMVS,A=ALL' | grep
"+$taskname

-

Gets the Websphere
Application Server task.

netstat

-a | grep "+$port+"
| awk '{print $1}'

Gets the task name from the
listening port.

ps -ef -o
user,pid,ppid,comm
| awk '{print $1,$2,
$3,$4}’

Gets attributes for processes.

$install_dir+"/bin/
versionInfo.sh |
grep Version | tail
-1"

Gets the version from script.

$install_dir
+"/properties/
version/
BASE.product"

Gets the version from version
file (failover).

"ls "+$conf_dir+"/*/
*/applications/
*/deployments/
*/META-INF/
application.xml
| xargs grep
\"<context-root>/"+
$uri_search+"\""+"
1>/tmp/app.txt
2>/dev/null; cat /
tmp/app.txt"

Gets the list of URI files.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1577


<!-- page 1578 -->
IBM Websphere Application Server (on IBM z/OS) (continued)
Command

Parameter

$ear_directory_name
+"/*/*/*/wsdl/
*.wsdl"

Description

Reads the wsdl files under the
discovered inclusion on the
Ear directory.

IBM Websphere Portal (on Linux)
Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

find

-name
-type

This command is used only
for creating the Web Services
connections.
Finds files and folders for the
specific name.

IBM Websphere Portal (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

netstat

Various options

Lists the open ports.

find

Various options

Finds specific strings in files
and folders.

IBM WebSphere Message Broker Flow (on UNIX)
Command

find

Parameter

Description

-name

This command is used only
for creating the Web Services
connections.

-type

Finds files and folders for the
specific name.

mqsiprofile

-

Sets the variables for
WebSphere Message Broker.

mqsireportbroker

[broker name]

Gets the WebSphere Message
Broker information.

mqsibrowse

[broker name] -t
BROKERRESOURCES

Displays the Message Broker
information resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1578


<!-- page 1579 -->
IBM WebSphere Message Broker Flow (on UNIX) (continued)
Command

Parameter

Description

echo

$ODBCINI

(On Unix only) This command
is used only to create
connections to IBM DB2.
Prints strings in the output.

IBM WebSphere Message Broker Flow (on Windows)
Command

Parameter

Description

mqsiprofile

-

Sets the variables for
WebSphere Message Broker.

mqsireportbroker

[broker name]

Gets the WebSphere Message
Broker information.

ps

-ef

Gets the process information.

mqsibrowse

[broker name] -t
BROKERRESOURCES

Displays the Message Broker
information resources.

db2

Displays DB2 installation
parameters: database
directory and node directory.

IBM WebSphere Message Broker (on UNIX)
Command

Parameter

Description

mqsiprofile

-

Sets the variables for
WebSphere Message Broker.

mqsireportbroker

[broker name]

Gets the WebSphere Message
Broker information.

mqsibrowse

[broker name] -t
BROKERRESOURCES

Displays the Message Broker
information resources.

-name

This command is used only
for creating the Web Services
connections.

find

-type

Finds files and folders for the
specific name.

echo

$ODBCINI

This command is used only
to create connections to IBM
DB2.
Prints strings in the output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1579


<!-- page 1580 -->
IBM WebSphere Message Broker (on Windows)
Command

Parameter

Description

mqsiprofile

-

SSets the variables for
WebSphere Message Broker.

mqsireportbroker

[broker name]

Gets the WebSphere Message
Broker information.

ps

-ef

Gets the process information.

mqsibrowse

[broker name] -t
BROKERRESOURCES

Displays the Message Broker
information resources.

IBM MQ (on UNIX) — formerly IBM WebSphere MQ
Command

Parameter

Description

dspmq

-

Gets the queue manager
status.

dspmqver

-

Gets the queue manager
version.

runmqsc

[queue manager]

Gets the queue information.

Command

Parameter

Description

grep

Various options

Extracts strings from the
output.

dspmq

-

Gets the queue manager
status.

dspmqver

-

Gets the queue manager
version.

runmqsc

[queue manager]

Gets the queue information.

Command

Parameter

Description

netstat

-a | grep "+$port

Gets the IBM MQ name.

df

-k | grep MQ"

Gets the file system.

IBM MQ (on Windows)

IBM MQ (on z/OS)

"echo "+
$netstat_info[1].mq_name
+" | cut -c1-4"

Gets the queue manager
name.

"oeconsol '-"+
$queue_manager+"
display qmgr ALL' "

-

Gets the MQ logical name
information.

"oeconsol '-"+
$queue_manager+"
display queue ("+

-

Gets the MQ queue
information together with

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1580


<!-- page 1581 -->
IBM MQ (on z/OS) (continued)
Command

Parameter

Description

$entry_point.queue_name
+") ALL' | tr \"(\"
\"#\" | tr \")\"
\"\""

the information on its
connections.

"oeconsol '-"+
$queue_manager+"
display queue ("+
$name+")'"

Gets the MQ queue
information.

-

"oeconsol '-"+
$queue_manager
+" display
channel(*) CONNAME
where(QMNAME EQ "+
$remote_queue_mngr_name
+")'"

Gets the channel information.

"oeconsol '-"+
$queue_manager+"
display qlocal(*) '"

Gets the local queue
information.

IBM MQ Queue (on UNIX) — formerly IBM WebSphere MQ Queue
Command

Parameter

Description

dspmq

-

Gets the queue manager
status.

dspmqver

-

Gets the queue manager
version.

runmqsc

[queue manager]

Gets the queue information.

Command

Parameter

Description

dspmq

-

Gets the queue manager
status.

dspmqver

-

Gets the queue manager
version.

runmqsc

[queue manager]

Gets the queue information.

IBM MQ Queue (on Windows)

Jboss Module (on Unix or Windows)
Command

Parameter

Description

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1581


<!-- page 1582 -->
Jboss Module (on Unix or Windows) (continued)
Command

Parameter

Description

findstr

Various options

(On Windows only) Extracts
strings from the output.

find

Various options

(On Windows only) Finds
specific strings in files and
folders.

netstat

Various options

(On Windows only) Lists open
ports.

Command

Parameter

Description

find

-name

Finds files and folders in the
specified folder.

xargs

grep <string>

Finds strings in all files found
in the output file.

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

findstr

Various options

(On Windows only) Extracts
strings from the output.

find

Various options

(For Windows only) Finds
specific strings in files and
folders.

netstat

Various options

Lists open ports.

Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

Jboss (on UNIX and Windows)

JRun (on Windows)

JRun WAR Inc (on UNIX and Windows)
Command

Parameter

Description

find

-name

Finds files and folders in the
specified folder.

xargs

grep <string>

Finds strings in the files found
in the output file.

grep

Various options

Extracts strings from the
output.

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1582


<!-- page 1583 -->
JRun WAR Inc (on UNIX and Windows) (continued)
Command

Parameter

Description

findstr

Various options

(On Windows only) Extracts
strings from the output.

find

Various options

(For Windows only) Finds
specific strings in files and
folders.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

Microsoft Exchange CAS (on Windows)
Command

Parameter

Description

netstat

Various options

Lists open ports.

hostname

-

Gets the hostname.

dir

Various options

Lists files and folders in the
specified folder.

tasklist

Various options

Lists all running tasks.

del

Various options

Deletes the XML file
containing the old binding
information.

echo

Various options

Prints strings in the output.

powershell

This command is used

Add-PSSnapin
only if you do not use TCP
Microsoft.Exchange.Management.PowerShell.E2010;
connections.
Get-ExchangeServer
Gets the CAS status, server
-status -Identity
[hostname]| exportroles, and Exchange setup
clixml $env:TEMP
structure.
\exchange_pwrshell_output.xml
and

Important: Do not

use the dollar sign ($) in
credentials for Exchange
Add-PSSnapin
CAS, because Service
Microsoft.Exchange.Management.PowerShell.Admin;
Mapping uses the dollar
Get-ExchangeServer
sign for pattern variables
-status -Identity
in the Powershell
[hostname]| exportcommand.

clixml $env:TEMP
\exchange_pwrshell_output.xml
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.E2010;
Get-ExchangeServer|
format-table
-autosize
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1583


<!-- page 1584 -->
Microsoft Exchange CAS (on Windows) (continued)
Command

Parameter

Description

-HideTableHeaders
Name,Fqdn,IsMailboxServer
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.Admin;
Get-ExchangeServer
| formattable -autosize
-HideTableHeaders
Name,Fqdn,IsMailboxServer
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.Admin;
Get-MailboxServer |
format-list
find

Various options

This command is used only if
PowerShell is not operational.
Finds specific strings in the
files and folders.

findstr

Various options

Extracts strings from the
output.

Microsoft Dynamic CRM (on Windows)
Command

Parameter

Description

netstat

Various options

Lists open ports.

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Microsoft BizTalk Orchestration (on Windows)
Command

Parameter

Description

echo

Various options

Prints strings in the output.

Microsoft BizTalk Server (on Windows)
Command

Parameter

Description

echo

Various options

Prints strings in the output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1584


<!-- page 1585 -->
Microsoft BizTalk Server (on Windows) (continued)
Command

Parameter

Description

del

Various options

Deletes the XML file
containing the old binding
information.

BTSTask

ExportBindings /
Destination:%TEMP
%\MyBindings.xml /
Database:
[MgmtDbName] /server:
[serverName]

This command is used
only if there are not
MSSQL credentials.
Extracts the binding
information and places it
into the XML file.

Microsoft Exchange BackEnd Server (on Windows)
Command

Parameter

Description

netstat

Various options

Lists open ports.

hostname

-

Gets the hostname.

tasklist

Various options

Lists all running tasks.

Microsoft Exchange FrontEnd Server (on Windows)
Command

Parameter

Description

netstat

Various options

Lists open ports.

hostname

-

Gets the hostname.

tasklist

Various options

Lists all running tasks.

Microsoft FAST Search Server (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

Microsoft Exchange Hub Transport Server (on Windows)
Command

Parameter

Description

netstat

Various options

Lists open ports.

hostname

-

Gets the hostname.

dir

Various options

Lists files and folders in the
specified folder.

tasklist

Various options

Lists all running tasks.

echo

Various options

Prints strings in the output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1585


<!-- page 1586 -->
Microsoft Exchange Hub Transport Server (on Windows) (continued)
Command

Parameter

Description

del

Various options

Deletes the XML file
containing the old binding
information.

powershell

This command is used

Add-PSSnapin
only if you do not use TCP
Microsoft.Exchange.Management.PowerShell.E2010;
connections.
Get-ExchangeServer
Gives the CAS status, server
-status -Identity
[entry_point.host_name]|
roles, and Exchange setup
export-clixml
structure.
$env:TEMP
Important: Do not
\exchange_pwrshell_output.xml
use the dollar sign
($) in credentials for
Exchange Hub Transport
"Add-PSSnapin
Server, because Service
Microsoft.Exchange.Management.PowerShell.Admin;
Mapping uses the dollar
Get-ExchangeServer
sign for pattern variables
-status -Identity
[entry_point.host_name] in the powershell
command.
| exportand

clixml $env:TEMP
\exchange_pwrshell_output.xml
findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Microsoft Internet Information Services (IIS) (on Windows)
Command

Parameter

Description

appcmd.exe

Various options

This command is used only for
IIS version 7 and later.
Retrieves information about
the specified application
name.

Microsoft Internet Information Services (IIS) Virtual Directory (on Windows)
Command

Parameter

Description

appcmd.exe

Various options

This command is used only for
IIS version 7 and later.
Retrieves information about
the specified application
name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1586


<!-- page 1587 -->
Microsoft Internet Information Services (IIS) Virtual Directory (on Windows) (continued)
Command

Parameter

Description

iisapp.vbs

Various options

This command is used only for
IIS version 6.
Retrieves information about
the specified application
name.

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

netstat

Various options

Lists open ports.

Microsoft .NET commands (on Windows)
Command

ildasm.exe

Parameter

text that contains process exe
path

Description

This file is necessary
for performing the put
file operation on the
ILDisassembler alias. This file
disassembles strings from the
command .exe file.

.findstr

Various options

Gets the strings from the
output.

dir

Various options

Lists all files in the specified
folder.

connection_strings_browser.exe
[encrypted_configs[*].Name]
This command is used only for
creating database encrypted
connections.
This file is necessary
for performing the
put file operation on
theConnectionStringsBrowser
alias.
Decrypts the database
connections.
Microsoft Exchange Mailbox (on Windows)
Command

Parameter

Description

netstat

Various options

Lists open ports.

hostname

-

Gets the hostname.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1587


<!-- page 1588 -->
Microsoft Exchange Mailbox (on Windows) (continued)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

tasklist

Various options

Lists all running tasks.

del

Various options

Deletes the XML file
containing old binding
information.

echo

Various options

Prints strings in the output.

powershell

This command is used

Add-PSSnapin
only if you do not use TCP
Microsoft.Exchange.Management.PowerShell.Admin;
connections.
Get-ExchangeServer
Gets the status, server roles,
-status -Identity
[entry_point.host_name]|
and the setup structure of
export-clixml
Exchange Mailbox.
$env:TEMP
Important: Do not
\exchange_pwrshell_output.xml
use the dollar sign ($) in
credentials for Exchange
Mailbox, because
Add-PSSnapin
Service Mapping uses
Microsoft.Exchange.Management.PowerShell.Admin;
the dollar sign for
Get-ExchangeServer
pattern variables in the
-status | exportPowershell command.
and

clixml $env:TEMP
\exchange_pwrshell_output.xml
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.E2010;
Get-ExchangeServer
-status -Identity
[entry_point.host_name]|
export-clixml
$env:TEMP
\exchange_pwrshell_output.xml
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.Admin;
GetClusteredMailBoxServerStatus
| formattable -Property
OperationalMachines
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.Admin;
Get-ExchangeServer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1588


<!-- page 1589 -->
Microsoft Exchange Mailbox (on Windows) (continued)
Command

Parameter

Description

| formattable -autosize
-HideTableHeaders
Name,Fqdn,IsHubTransportServer
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.E2010;
Get-ExchangeServer
| formattable -autosize
-HideTableHeaders
Name,Fqdn,IsHubTransportServer
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.Admin;
Get-StorageGroup
-server [hostname]
| select
SystemFolderPath |
Export-Csv out.csv
-notype;cat out.csv
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.Admin;
Get-StorageGroup
| select
SystemFolderPath |
Export-Csv out.csv
-notype;cat out.csv
and

Add-PSSnapin
Microsoft.Exchange.Management.PowerShell.E2010;
Get-MailboxDatabase
| select
LogFolderPath
| formattable -autosize
-hideTableHeaders;
Get-MailboxDatabase
| select
EdbFilePath| formattable -autosize
-hideTableHeaders;GetMailboxDatabase
| select
TemporaryDataFolderPath|
format-table
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1589


<!-- page 1590 -->
Microsoft Exchange Mailbox (on Windows) (continued)
Command

Parameter

Description

-autosize
-hideTableHeaders
find

Various options

This command is used only if
PowerShell is not operational.
Finds specific strings in the
files and folders.

findstr

Various options

Extracts strings from the
output.

Microsoft SharePoint (on Windows)
Command

Parameter

Description

hostname

-

Gets the hostname.

Microsoft SQL Database (on Windows)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

hostname

-

Gets the hostname.

findstr

Various options

Extracts strings from the
output.

sqlcmd

This command is used only to

-Stcp:
discover Microsoft BizTalk.
[computer_system.primaryManagementIP],
Gets the BizTalk information
[port] -d
[entry_point.database]from the database.
-U [username] -P
'[password]' -y
0 -h-1 -Q select
nvcname###inboundtransporturl
FROM
adm_ReceiveLocation
rl, bts_receiveport
rp where
rl.receiveportid=rp.nid
and

-Stcp:
[computer_system.primaryManagementIP],
[port] -d
[entry_point.database]
-U [username] -P
'[password]' -y
0 -h-1 -Qselect
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1590


<!-- page 1591 -->
Microsoft SQL Database (on Windows) (continued)
Command

Parameter

Description

nID,nvcName,nApplicationID
from bts_receiveport
and

-Stcp:
[computer_system.primaryManagementIP],
[port] -d
[entry_point.database]
-U [username] -P
'[password]' -y
0 -h-1 -Qselect
nID,nvcName,nApplicationID
from bts_sendport
and

-Stcp:
[computer_system.primaryManagementIP],
[port] -d
[entry_point.database]
-U [username] -P
'[password]' -y
0 -h-1 -Qselect
nOrcPortID,nReceivePortID,nSendPortid
from
bts_orchestration_port_binding
and

-Stcp:
[computer_system.primaryManagementIP],
[port] -d
[entry_point.database]
-U [username] -P
'[password]' -y
0 -h-1 -Qselect
nID,nOrchestrationID
from
bts_orchestration_port
and

-Stcp:
[computer_system.primaryManagementIP],
[port] -d
[entry_point.database]
-U [username] -P
'[password]' -y
0 -h-1 -Qselect
nID,nvcFullName from
bts_orchestration
and
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1591


<!-- page 1592 -->
Microsoft SQL Database (on Windows) (continued)
Command

Parameter

Description

-Stcp:
[computer_system.primaryManagementIP],
[port] -d
[entry_point.database]
-U [username] -P
'[password]' -y
0 -h-1 -Qselect
ah.Name###bo.nvcNamespace.bo.nvcName###ase.Name
from
bts_orchestration
bo, adm_Host
ah,adm_server
ase,adm_Server2HostMapping
ash where
bo.nAdminHostID =
ah.ID and ase.ID
= ash.ServerID and
ah.ID = ash.HostID
and

-Stcp:
[computer_system.primaryManagementIP],
[port] -d
[entry_point.database]
-U [username] -P
'[password]' -y
0 -h-1 -Qselect
nID,nSendPortID,nvcAddress
from
bts_sendport_transport

Microsoft Message Queuing (MSMQ) (on Windows)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

netstat

Various options

Lists open ports.

Microsoft SQL Database (on Windows)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

netstat

Various options

Lists open ports.

sqlservr.exe

Gets the version of the
database from the executable
file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1592


<!-- page 1593 -->
MongoDB Database (on Windows or UNIX)
Command

mongo

mongo

Parameter

Description

--eval
db.printShardingStatus()

Retrieves the status of
MondoDB that is used for load
balancing.

--db.Name()

Retrieves the name of the
database connected to
MongoDB server.

MySQL Server (on Windows or UNIX)
Command

Parameter

Description

findstr

Various options

(On Windows only) Extracts
strings from the output.

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

ps

--pid=[process.pid]
--no-headers -o "
%U : %p : %a”

Gets the userid parameter
value.

mysqld-nt/mysqld/
mysqld.exe

-V

Gets the version.

mysql

--user=[username] -password=[password]
--port=[jdbc_port]
--skip-columnnames --silent -execute="SHOW ENGINE
NDB STATUS;;”

This command is used
only to create cluster node
connections, primary
replications, and the
secondary.
Gets the deployment structure
of the MySQL server.

and

--user=[username] -password=[password]
--port=[jdbc_port]
--skip-columnnames --silent -execute="SHOW SLAVE
STATUS;;”
and

-user=[username] -password=[password]
--port=[jdbc_port]
--skip-columnnames --silent -execute="select
host from
information_schema.processlist
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1593


<!-- page 1594 -->
MySQL Server (on Windows or UNIX) (continued)
Command

Parameter

Description

where command like
'%%binlog%%';;”
which

mysql

This command is used
only to create cluster node
connections, primary
replications, and the
secondary.
Gets the full path of MySQL
cluster nodes.

MySQL Cluster MGM Node (on Windows or UNIX)
Command

Parameter

Description

netstat

Various options

Lists open ports.

ss

Various options

Lists open ports.

-V

Gets the version and status
of the MySQL Cluster MGM
node.

ndb_mgmd

and

-e show
Nginx (on UNIX)
Command

Parameter

Description

nginx

-v

Gets the version.

egrep

-v -e ^# -e "\t#"

This command is used if
necessary to create HTTP
connections.
Ignores special characters.

Oracle E-Business Suite (on Windows or UNIX)
Command

Parameter

Description

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

findstr

Various options

(On Windows only) Extracts
strings from the output.

find

Various options

(For Windows only) Finds
specific strings in files and
folders.

export

-

(For Unix only) Sets variables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1594


<!-- page 1595 -->
Oracle E-Business Suite (on Windows or UNIX) (continued)
Command

Parameter

Description

echo

Various options

Prints strings in the output.

sqlplus

Various options

Creates the connection to the
Oracle instance.

awk

Various options

(For Unix only) Manipulates
the output.

netstat

Various options

(For Windows only) Gets open
ports.

Oracle Advanced Queue Queue (on Windows or UNIX)
Command

Parameter

Description

export

-

(On Unix only) Sets a variable.

echo

Various options

Prints strings in the output.

sqlplus

Various options

Creates connection to the
Oracle instance.

set

-

(On Windows only) Sets a
variable.

netstat

Various options

(On Windows only) Lists open
ports.

Oracle Concurrent Server (on Windows or UNIX)
Command

Parameter

Description

findstr

Various options

(For Windows only) Extracts
strings from the output.

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

netstat

Various options

(For Windows only) Lists open
ports.

awk

Various options

(For Unix only) Manipulates
the output.

find

Various options

(For Windows only) Finds
specific strings in files and
folders.

Oracle Discoverer Engine (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1595


<!-- page 1596 -->
Oracle Discoverer Engine (on Windows) (continued)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Oracle Discoverer UI (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Oracle Form UI (on Windows)

Oracle Fulfillment Server (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Oracle HTTP Server (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1596


<!-- page 1597 -->
Oracle HTTP Server (on Windows) (continued)
Command

Parameter

Description

find

Various options

Finds specific strings in files
and folders.

Oracle Metric Client (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Oracle OACORE Server (on Windows)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

dir

Various options

Lists files and folders in the
specified folder.

find

Various options

Finds specified strings in the
file and folders.

Oracle OAFM Server (on Windows)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

dir

Various options

Lists files and folders in the
specified folder.

find

Various options

Finds specified strings in the
file and folders.

Command

Parameter

Description

export

-

Sets the variable.

sqlplus

-s [username]/
This command is used only for
[password]@[entry_point.instance]
getting the advanced queue

Oracle Database (on UNIX)

information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1597


<!-- page 1598 -->
Oracle Database (on UNIX) (continued)
Command

Parameter

Description

Gets the Oracle version and
information about advance
queue.

echo

This command is used only

-e set head off feed for getting the advance queue
off pages 0 line
information.
3000\\n\"select
Gets the information about
NAME || '##' ||
QUEUE_TABLE ||
advance queue, storage
'##' || QID || '##'
devices, and database links.
|| QUEUE_TYPE ||
'##' || RETENTION
from DBA_QUEUES
where OWNER =
UPPER([entry_point.scheme]);
and

set head off feed
off pages 0 line
3000\\n\"select
NAME || '##' ||
QUEUE_TABLE ||
'##' || QID || '##'
|| QUEUE_TYPE ||
'##' || RETENTION
from DBA_QUEUES
where OWNER =
UPPER([entry_point.scheme]);
and

select member as
NEEBULA from v\
$logfile;
and

select value as
NEEBULA from v\
$parameter where
name='log_archive_dest'
and

select file_name
as NEEBULA from
dba_data_files;
and

select DB_LINK,HOST
from DBA_DB_LINKS
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1598


<!-- page 1599 -->
Oracle Database (on UNIX) (continued)
Command

lsnrctl

Parameter

version
And

services

Description

This command is used only
for discovering the real
application cluster (RAC)
version.
Gets the RAC version.

Oracle Database (on Windows)
Command

Parameter

Description

set

-

Sets the variable.

sqlplus

-s [username]/
This command is used only
[password]@[entry_point.instance]
for getting the advance queue
information.
Gets the Oracle version and
information about advance
queue.

echo

This command is used only

-e set head off feed for getting the advance queue
off pages 0 line
information.
3000\\n\"select
Gets the information about
NAME || '##' ||
QUEUE_TABLE ||
advance queue, storage
'##' || QID || '##'
devices, and database links.
|| QUEUE_TYPE ||
'##' || RETENTION
from DBA_QUEUES
where OWNER =
UPPER([entry_point.scheme]);
and

set head off feed
off pages 0 line
3000\\n\"select
NAME || '##' ||
QUEUE_TABLE ||
'##' || QID || '##'
|| QUEUE_TYPE ||
'##' || RETENTION
from DBA_QUEUES
where OWNER =
UPPER([entry_point.scheme]);
and

select member as
NEEBULA from v\
$logfile;
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1599


