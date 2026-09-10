# Zurich IT Operations Management — Discovery

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 898–1047 of 4823 | Part 2 of 5

Sections: Discovery (p748)

---

<!-- page 898 -->
Table and field

Description

name

The name of the Kubernetes Job

namespace

The Kubernetes namespace to which this
Kubernetes job belongs.

k8s_uid

The Kubernetes job UUID

cluster

The name of the cluster that contains
Kubernetes job.

Kubernetes Daemonset [cmdb_ci_kubernetes_daemonset]
name

The name of the Kubernetes daemonset.

namespace

The Kubernetes namespace to which this
Kubernetes daemonset belongs.

k8s_uid

The Kubernetes daemonset UUID.

cluster

The name of the cluster that contains this
resource.

pods_avail

The number of pods Available.

pods_failed

The number of pods in Failed phase.

pods_running

The Number of pods in the Running phase.

pods_succeeded

The number of pods in the Succeeded phase.

pods_waiting

The number of pods in the Waiting phase.

Kubernetes Ingress [cmdb_ci_kubernetes_ingress]
name

The name of the Kubernetes ingress

namespace

The Kubernetes namespace to which this
Kubernetes ingress belongs.

k8s_uid

The Kubernetes ingress UID

cluster

The name of the cluster that contains this
resource.

Kubernetes Deployment [cmdb_ci_kubernetes_deployment]
Kubernetes Replicaset [cmdb_ci_kubernetes_replicaset]
Kubernetes Replication controller [cmdb_ci_kubernetes_replicationcontroller]
Kubernetes Statefulset [cmdb_ci_kubernetes_statefulset]
name

The name of this resource

namespace

The Kubernetes namespace to which this
resource belongs.

K8s_uid

The Kubernetes UID of this resource

cluster

The name of the cluster that contains this
resource.

total_replicas

Number of replicas in this resource

desired_replicas

The number of replicas in desired phase

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

898


<!-- page 899 -->
Table and field

Description

available_replicas

Number of replicas available

unavailable_replicas

Number of replicas in unavailable phase

updated_replicas

Number of replicas updated

Docker Container [cmdb_ci_docker_container] The component that runs the docker image.
container_id

The unique identifier for the Kubernetes
docker container
In cases where duplicate records are created,
deduplication tasks appear once discovery
runs. For information on how to resolve these
tasks, see the Making docker container
identifier independent [KB1443042]
article in
®
the ServiceNow Knowledge Base.

namespace

The Kubernetes namespace to which this
Kubernetes docker container belongs

Docker Image [cmdb_ci_docker_image]

An executable package of an application and
its related software that can be instantiated by
a docker container

image_id

The identifier for the Kubernetes docker image

name

The name of the Kubernetes docker image.

image_url

The URL for downloading the docker image.

namespace

The Kubernetes namespace to which this
Kubernetes docker image belongs.

Linux Server [cmdb_ci_linux_server]

The server that hosts the Kubernetes node.

name

The name of the Linux server powering the
Kubernetes node.

hostname

The hostname of the Linux server.

os

The operating system deployed on this Linux
server.

kernel_release

The version of the Linux kernel operating
system deployed on this Linux server.

ram

The size of RAM installed on this Linux server.

ip_address

The IP address of the Linux server.

Key Value [cmdb_key_value]

This configuration item contains Kubernetes
labels. Labels are key/value pairs that are
attached to objects, such as pods.

key

The key of the Kubernetes pod or Kubernetes
service Key Value parameter.

value

The value of the Kubernetes pod or
Kubernetes service Key Value parameter.

Kubernetes Volume [cmdb_ci_kubernetes_volume]
k8s_uid

The Kubernetes volume UUID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

899


<!-- page 900 -->
Table and field

Description

mount_path

The path for accessing this Kubernetes
volume.

name

The name of the Kubernetes volume.

namespace

The Kubernetes namespace to which this
Kubernetes volume belongs.

cluster

The name of the cluster that contains this
resource.

volume_id

The ID of the Kubernetes volume.

OpenShift Deployed Configuration [cmdb_ci_openshift_dep_conf]​
name

The name of the OpenShift Deployment
configuration.

namespace

The name of the namespace containing the
deployment configuration.

k8s_uid

The Kubernetes volume UUID.

url

The URL of the OpenShift deployed
configuration, available only for Kubernetes
versions earlier than 1.16.

OpenShift Build Config [cmdb_ci_openshift_build_conf]
name

The name of the OpenShift build
configuration.

namespace

The name of the OpenShift namespace
containing the build configuration.

k8s

The Kubernetes volume UUID.

url

The URL of the OpenShift build configuration,
available only for Kubernetes versions earlier
than 1.16.

OpenShift Source2Image [cmdb_ci_openshift_source_2_image]
name

The name of the OpenShift source image.

to

Related image.

parent_id

The ID of the OpenShift source image.

OpenShift Route [cmdb_ci_openshift_route]
name

The name of the OpenShift route.

namespace

The name of the namespace containing the
OpenShift route.

k8s_uid

The Kubernetes volume UUID.

url

The URL of the OpenShift Route, available only
for Kubernetes versions earlier than 1.16.

host

The target host of the OpenShift route.

port

The target port of the OpenShift route.

OpenShift Group [cmdb_ci_openshift_group]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

900


<!-- page 901 -->
Table and field

Description

name

The name of the OpenShift Group.

k8s_uid

The Kubernetes volume UUID.

url

The URL of the OpenShift Group, available
only for Kubernetes versions earlier than 1.16.

OpenShift User [cmdb_ci_openshift_user]
name

The name of the OpenShift user.

k8s_uid

The Kubernetes volume UUID.

url

The URL of the OpenShift user, available only
for Kubernetes versions earlier than 1.16.

full_name

The full name of the OpenShift user.

OpenShift Project [cmdb_ci_openshift_project]
name

The name of the OpenShift project.

k8s_uid

The Kubernetes volume UUID.

url

The URL of the OpenShift Project, available
only for Kubernetes versions earlier than 1.16.

OpenShift Image [cmdb_ci_openshift_images]
name

The name of the OpenShift Image.

k8s_uid

The Kubernetes volume UUID.

url

The URL of the OpenShift Image, available
only for Kubernetes versions earlier than 1.16.

docker_image_metadata_id

The ID of the docker image.

docker_image_metadata_parent_id

The ID of the image parent ID.

arch

Architecture of the image.

size

The image size.

hostname

The hostname related to the image.

OpenShift Image Stream [cmdb_ci_openshift_images_stream]
name

The name of the OpenShift Image Stream.

k8s_uid

The Kubernetes volume UUID.

url

The URL of the OpenShift Image Stream,
available only for Kubernetes versions earlier
than 1.16.

namespace

The name of the namespace containing the
OpenShift image stream.

OpenShift Docker Image Repository [cmdb_ci_openshift_docker_images_repository]
name

The name of the OpenShift docker image
repository.

parent_ID

The ID of the parent system.

Namespace [cmdb_ci_kubernetes_namespace]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

901


<!-- page 902 -->
Table and field

Description

name

The name of the Kubernetes Namespace.

state

The Kubernetes namespace phases: Active or
Terminating.

This data is collected by the Collect Container Repository extension section.

Table and field

Description

Container Repository [cmdb_ci_container_repository]
Name [name]

The name of the container repository.

Container Repository Entry [cmdb_ci_container_repository_entry]
Name [name]

The name of the container repository entry.

Category [category]

The category of the container repository entry.

The graphic illustrates CIs that are part of Kubernetes discovery.

Note: This Dependency Views map was simplified for clarity. Your Kubernetes
deployments may contain many more CIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

902


<!-- page 903 -->
Components of the Kubernetes deployment

Components of the Kubernetes deployment including OpenShift

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

903


<!-- page 904 -->
CI relationships collected by the Kubernetes pattern
These relationships are created by Kubernetes pattern:

CI

Relationship

Kubernetes Cluster
Contains::Contained By
[cmdb_ci_kubernetes_cluster]

Kubernetes Service
[cmdb_ci_kubernetes_service]

Contains::Contained By

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Contains::Contained By

Kubernetes Ingress
[cmdb_ci_kubernetes_ingress]

Contains::Contained By

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

CI

Kubernetes Namespace
[cmdb_ci_kubernetes_namespace]

Contains::Contained By

[cmdb_ci_openshift_source_2_image]

Contains::Contained By

OpenShift Group
[cmdb_ci_openshift_group]

Contains::Contained By

OpenShift User
[cmdb_ci_openshift_user]

Contains::Contained By

OpenShift Project
[cmdb_ci_openshift_project]

Contains::Contained By

OpenShift Image
[cmdb_ci_openshift_images]

Contains::Contained By

OpenShift Docker
Image Repository
[cmdb_ci_openshift_docker_images_repository

Cluster of::Cluster

Kubernetes Node
[cmdb_ci_kubernetes_node]

Manages::Managed by

Linux Server
[cmdb_ci_linux_server]

Contained by::Contains

Resource Group
[cmdb_ci_resource_group]

Contains::Contained By

Docker Container
[cmdb_ci_docker_container]

Contains::Contained By

Docker Image
[cmdb_ci_docker_image]

Contains::Contained By

Kubernetes Volume
[cmdb_ci_kubernetes_volume]

Hosted on::Hosts
Kubernetes Workload
[cmdb_ci_kubernetes_workload]
Kubernetes Service
Provides::Provided By
[cmdb_ci_kubernetes_service]

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

Kubernetes Workload
[cmdb_ci_kubernetes_workload]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

904


<!-- page 905 -->
CI

Relationship

CI

Owns::Owned By
Kubernetes Deployment
[cmdb_ci_kubernetes_deployment]

Kubernetes Replicaset
[cmdb_ci_kubernetes_replicaset]

iInstantiates:: Instantiated By
Kubernetes Replicaset
[cmdb_ci_kubernetes_replicaset]

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Kubernetes Workload
Provided By::Provides To
[cmdb_ci_kubernetes_workload]

Kubernetes Service
[cmdb_ci_kubernetes_service]

Kubernetes Deployment
Hosted on::Hosts
[cmdb_ci_kubernetes_deployment]

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

Kubernetes Daemonset
Hosted on::Hosts
[cmdb_ci_kubernetes_daemonset]

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

Kubernetes Statefulset
Hosted on::Hosts
[cmdb_ci_kubernetes_statefulset]

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

Kubernetes Namespace
Contains::Contained By
[cmdb_ci_kubernetes_namespace]​

OpenShift Deployed Config
[cmdb_ci_openshift_dep_conf​
]

Contains::Contained By

OpenShift Build Config
[cmdb_ci_openshift_build_conf]

Contains::Contained By

OpenShift Route
[cmdb_ci_openshift_route]

Contains::Contained By

OpenShift Image Stream
[cmdb_ci_openshift_images_stream]

Docker Image
[cmdb_ci_docker_image]

Instantiates::Instantiated by

Docker Container
[cmdb_ci_docker_container]

Linux Server
[cmdb_ci_linux_server]

Contains::Contained By

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Runs::Runs on

Docker Container
[cmdb_ci_docker_container]

Hosts::Hosted on

Kubernetes Node
[cmdb_ci_kubernetes_node]

OpenShift Deploy Config
Contains::Contained By
[cmdb_ci_openshift_dep_conf​
]

[cmdb_ci_config_file_tracked]

The Collect Container Repository extension section of the Kubernetes pattern
identifies these relationships.

CI

Relationship

Docker Image
[cmdb_ci_docker_image]

Provisioned
Container Repository Entry
From::Provisioned [cmdb_ci_container_repository_entry]

Container Repository Entry
Hosted on::Hosts
[cmdb_ci_container_repository_entry]

CI

Container Repository
[cmdb_ci_container_repository]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

905


<!-- page 906 -->
CI relationships collected by the Istio Service Mesh extension
Prerequisites for Istio Service Mesh extension:
• Ensure that Istio Service Mesh and Prometheus components are configured on the Kubernetes
cluster.
• Ensure that Prometheus discovers the service connection information using the
queryistio_requests_total command.
• Ensure that the application services are connected, and verify service-to-service traffic flow in
Kiali graph.
For more information on the Bookinfo application, see: https://istio.io/latest/docs/examples/
bookinfo/

CI

Relationship

CI

Kubernetes Service
[cmdb_ci_kubernetes_servi
ce]

Connects to::Connected by

Kubernetes Service
[cmdb_ci_kubernetes_servi
ce]

CI relationships collected by the Kubernetes Event pattern
These relationships are created to support the Kubernetes event discovery:

CI

Relationship

Kubernetes Cluster
Contains::Contained By
[cmdb_ci_kubernetes_cluster]

CI

Kubernetes Service
[cmdb_ci_kubernetes_service]

Contains::Contained By

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Cluster of::Cluster

Kubernetes Node
[cmdb_ci_kubernetes_node]

Manages::Managed by

[cmdb_ci_linux_server]

Contains::Contained By

Docker Container
[cmdb_ci_docker_container]

Contains::Contained By

Docker Image
[cmdb_ci_docker_image]

Contains::Contained By

Kubernetes Volume
[cmdb_ci_kubernetes_volume]

Docker Image
[cmdb_ci_docker_image]

Instantiates::Instantiated by

Docker Container
[cmdb_ci_docker_container]

Linux Server
[cmdb_ci_linux_server]

Contains::Contained By

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Runs::Runs on

Docker Container
[cmdb_ci_docker_container]

Hosts::Hosted on

Kubernetes Node
[cmdb_ci_kubernetes_node]

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

906


<!-- page 907 -->
Data collected by Service Mapping during tag-based discovery
Service Mapping uses tag-based discovery to create application service maps including
the Kubernetes components. Service Mapping comes with the following preconfigured CI
relationships used for tag-based discovery. These CI relationships are available from the 1.0.68
release on ServiceNow Store.

CI

Relationship

CI

Kubernetes Service
Contained By::Contains
[cmdb_ci_kubernetes_service]

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

OpenShift Project
[cmdb_ci_openshift_project]

Contained by::Contains

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Contained by::Contains

Kubernetes Cluster
[cmdb_ci_kubernetes_cluster]

Kubernetes Pod
[cmdb_ci_kubernetes_pod]

Cluster::Cluster of

Kubernetes Service
[cmdb_ci_kubernetes_service]

Kubernetes Namespace
Contains::Contained By
[cmdb_ci_kubernetes_namespace]​

OpenShift Deployed Config
[cmdb_ci_openshift_dep_conf​
]

Kubernetes Namespace
Contains::Contained By
[cmdb_ci_kubernetes_namespace]​

OpenShift Build Config
[cmdb_ci_openshift_build_conf]

Kubernetes Namespace
Contains::Contained By
[cmdb_ci_kubernetes_namespace]​

OpenShift Route
[cmdb_ci_openshift_route]

Kubernetes Namespace
Contains::Contained By
[cmdb_ci_kubernetes_namespace]​

OpenShift Image Stream
[cmdb_ci_openshift_images_stream]

Kubernetes dashboard
After Discovery finishes discovering components of the Kubernetes deployment, you can
navigate to Workspaces > Discovery Admin Workspace > Insights and use the Kubernetes
Explorer dashboard to view the Kubernetes environments and resources of your organization. To
use the enhanced Kubernetes dashboard, verify you have Discovery Admin Workspace starting
from version 1.3.1 (August 2024 Store). For more information about Kubernetes Explorer, see
Kubernetes Explorer.

Troubleshooting
If the mapping process does not proceed as you expected, follow the following suggestions.

Symptom

Cause

Solution

Discovery fails. The discovery
message contains the
information about an error
caused by the REST timeout.

There are many CIs sending
the REST call response in the
deployment. The MID Server
cannot process the REST call
response without exceeding
the time limit controlled by the

By default, the

mid.sa.cloud.request_timeout
parameter is set to 30000
milliseconds.

Increase the value of this
parameter on the relevant
mid.sa.cloud.request_timeout
MID Server and run discovery
parameter.
again.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

907


<!-- page 908 -->
Symptom

Cause

Solution

Note: If the

Configuration
Parameters related list
for the relevant MID
Server does not show
this parameter, you may
need to add it.
Pattern Designer fails during
a debug session. The Pattern
Designer message contains
information about an error
caused by a timeout.

The Pattern Designer fails
because of a timeout during
pattern debugging (and not
during discovery).

By default, the

sa.debugger.max_timeoutparameter
is set to 240 seconds.
Increase the value of this
parameter on the relevant MID
Server.

To run the Kubernetes pattern in Debug mode, refer to KB0832567

for operational information.

Container image scanning for software decomposition
The ITOM Visibility apps, Discovery and Service Mapping Patterns and Kubernetes Visibility
Agent integrate with Aqua Trivy to collect data on container images and OS packages. You
can increase your control over container deployment by having visibility to the container
components.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

908


<!-- page 909 -->
Benefits of image scanning
Scanning your containers gives you visibility into what's inside Kubernetes or Docker containers
or OS packages. Scanning images can assist you in multiple ways.
• It helps you identify software installed in containers for regulatory and compliance use cases.
• It helps you adhere to company policies like usage of golden images, outdated software,
mandatory labels, or configuration policies.
• It also helps you manage licensed software running in containers.
• You can also get the service context by using tags, and service mesh to understand their
impact on your organization.

Image scanning use cases with ITOM Visibility
You can use two ITOM Visibility apps to scan container images, Discovery and Service Mapping
Patterns and Kubernetes Visibility Agent. Patterns is a feature set used by Discovery, Cloud
Discovery, and Service Mapping. Kubernetes Visibility Agent is a feature of Agent Client
Collector. While Kubernetes Visibility Agent (formerly known as CNO-V) is more suitable for
Kubernetes and dynamic containerized workloads, pattern-based discovery is more suitable for
non-Kubernetes Docker containers.
Use case # 1
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

909


<!-- page 910 -->
Once an application has been packaged up in container images, a security
professional can scan the base image, as well as the final image, for vulnerabilities,
and identify OS packages, software dependencies, and application records. This is
specifically for Containerized MSSQL Server.
Visibility methods for use case

1

Visibility methods

Method characteristics

What's discovered

Discovery and Service
Mapping Patterns and Aqua
Trivy:

• Pattern-based discovery
without Cloud discovery:

Discovered using Discovery
and Service Mapping
Patterns:

• Best suited for self hosted
or cloud Kubernetes
deployments with access
to bearer tokens and
credentials.

◦ Manually created
Kubernetes discovery
schedule per cluster.

• Kubernetes clusters

• Pattern-based discovery
with Cloud discovery:

• Kubernetes topology

• Supports public and selfhosted repository image
scanning.

◦ Uses a bearer token.

◦ No bearer token required.
◦ Uses cloud credentials.
◦ Automatic creation of
Kubernetes discovery
schedule.
• For more information on
scanning images using
Aqua Trivy, see Scan
container images.

• Kubernetes Services
• Docker containers and
images
• Kubernetes deployment
including OpenShift
• Namespace
• Labels and tags
• Software in containers
• Account region details
can only be discovered by
Cloud Discovery
• Docker Pattern collects data
about specific objects in a
Docker engine, running on a
Linux host
For more information, see:
• Container image discovery
• Kubernetes discovery using
patterns
• Docker virtualization

Kubernetes Visibility Agent
and Aqua Trivy:
• Best suited for deployment
by cloud native app teams.
• Optional ability to monitor
Kubernetes with AIOps.
• For cloud environments,
only AWS ECR (Public and
Private) is supported.

Kubernetes Visibility Agent
Discovered using Kubernetes
-based discovery doesn't
Visibility Agent
require credential set
• Kubernetes Namespaces
up, and no need for MID
Server. Access is through
• Nodes and Pods
ServiceAccount/ClusterRole.
• Deployments
The installation is via Helm
Chart or Kubernetes YAML file. • Statefulsets
The discovery is run near real• Daemonsets
time.
• Replicasets
• Jobs

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

910


<!-- page 911 -->
Visibility methods for use case
Visibility methods

1 (continued)
Method characteristics

What's discovered

Use Kubernetes Explorer to
download SBOM.

• Cronjobs
• Services
• Docker container
• Docker image
• Container repository
• Account region details
can only be discovered by
Cloud Discovery

Use case #2
A compliance officer can generate an SBOM to obtain a detailed list of the
dependencies of the container image and to ensure that the software complies with
industry regulations.
Visibility methods for use case 2
Visibility method

Method characteristics

Kubernetes pattern or Docker pattern

SBOM creation is part of the container
scanning.

Kubernetes Visibility Agent

SBOM creation is also a part of the container
scanning, but using ACC is best suited for
organizations that need flexibility to perform
both full and continues discovery.

Use case #3
An engineer found a defect in a custom-built image and needs to find all Kubernetes
pods that are running using that image.
Visibility methods for use case 3
Visibility method

Method characteristics

Kubernetes pattern

Aqua Trivy container scanning
isn’t required. You can identify
the pods using Patterns.

What's discovered

• Kubernetes Clusters
• Kubernetes Containers
• Kubernetes Services
• Labels
• Pods
• Images
• Tags

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

911


<!-- page 912 -->
Visibility methods for use case 3 (continued)
Visibility method

Method characteristics

What's discovered

Kubernetes pattern with Cloud Aqua Trivy container scanning All the of the above and
discovery
isn’t required. You can identify account or region details
the pods using Patterns.
Use case #4
An engineer finds a defect in a custom-built image and needs to find all Docker
containers (non Kubernetes) that are running using that image.

Visibility method

Method characteristics

What's discovered

Horizontal Discovery of VM
running Docker (Docker
pattern)

Aqua Trivy container scanning See: Docker virtualization
isn’t required. You can identify
the pods using Patterns.

Image scanning with Discovery and Service Mapping Patterns
Kubernetes and Docker patterns integrate with the Aqua Trivy tool and run scheduled jobs to
discover container images and OS packages at fixed intervals of 10 images per minute. During
the scan, the pattern indicates the scanning status. The pattern discovers OS packages that
are related to an image. Then, it finds the image command attributes like the CI class. Based
on the command attributes the pattern creates application records. In addition, the pattern
uses enriched scripts to add details to the application records. After that, the pattern maps the
relations between the OS packages and the containers.
Part of the data is populated in CMDB tables and part of it in transformation tables (non-CMDB
temporary tables). The transformation tables are installed with the pattern. For example, the
information you get by scanning includes origin registry, software name, and version.
Related topics
Cloud Native Operations for Visibility
Link software package information to images only
Link software package information to images rather than containers to avoid empty records that
associate to short-lived containers.

Before you begin

Role required: admin

About this task

Software package information is linked to both images and containers when the
sn_itom_pattern.image_scan_process_container system property is set to its
default value of true. To link this data to images only, set the property value to false.

Procedure
1. In the navigation filter, enter sys_properties.list.
2. In the Name field, search for sn_itom_pattern.image_scan_process_container.
3. Select the sn_itom_pattern.image_scan_process_container property.
4. In the Value field, enter false.
5. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

912


<!-- page 913 -->
Related topics
Scan container images
Container image discovery
Scan container images
Enable container image scanning using the Aqua Trivy tool.

Before you begin

Note: The pattern supports only the Linux operating system and runs on a Linux MID
Server.

Verify the following setup:
• Discovery and Service Mapping Patterns, starting 1.7.0 (August 2023 store release).
• CMDB CI Class Models, starting 1.43.0.
• Visibility Content, starting 6.7.2.
• For the container images scan to run successfully, verify that all the MID Servers in your
environment are configured for specific capabilities and are not set to All. For more information
on configuring capabilities, see MID Server capabilities .
• MID Server requirements:
◦ 8GB RAM with 4GB JVM
◦ MID Server Capability configured to Scan Container Images
◦ Can access the image repository
• Aqua Trivy starting 0.44.0 is installed on the MID Server. The last version validated is 0.51.0.
For more information on installing Aqua Trivy, see the Container Image scan feature overview
[KB1218504]
article in the Now Support Knowledge Base.
• To collect Docker or Kubernetes container image and environment records, you must first run
the Docker or Kubernetes discovery before enabling the Container Image Scan feature. For
more information, see Kubernetes discovery using patterns and Docker virtualization.
• Starting with Discovery and Service Mapping Patterns version 1.18.0, the Container Image Scan
feature also supports the following:
◦ Using a proxy MID Server to scan the container images in the following repositories: public,
self-hosted private, and Amazon Elastic Container Registry (Amazon ECR) repositories. To
use a proxy MID Server, ensure the MID Server proxy parameters are correctly configured.
For more information, see MID Server parameters .
◦ Scanning container images in self-hosted private repositories. To scan these repositories,
you must create container image repository credentials. For more information, see Create
and test your credentials
and Container image repository credentials .
◦ Collecting image records from Amazon ECR in both public and private repositories. To
collect these Amazon ECR image records, you must first run the Amazon ECS resource
discovery before enabling the Container Image Scan. The AWS cloud service account
created for the Amazon ECS resource discovery is also used for the container image scan.
For more information about Amazon ECS resource discovery, see Amazon ECS resource
discovery with Patterns.
• Starting with version 1.27.0, Discovery and Service Mapping Patterns enables you to control
whether to link software packages to containers or only to images.
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

913


<!-- page 914 -->
Procedure
1. Enable the Discovery and Service Mapping Patterns Container Image Scan by setting the
system property.
a. In the Navigation filter, enter sys_properties.list.
b. In the Name search field, enter sn_itom_pattern.container_image_scan.
c. Set the value to true.
2. In the URL bar enter: <instance>.service-now.com/
sn_itom_pattern_container_image_scan_status_list.do to review the scan
status of the images.
3. Select the image record to review the Container Image OS Packages table.

Result

The Scan Container Image pattern finds the image OS packages and creates application
records based on the image CI class. The Container Image OS Packages table is located in the
image record. The pattern also creates relationships between the configuration items. For more
information on the data collected, see Container image discovery.
Configure the SBOM generation
Enable the Software Bill of Materials (SBOM) creation and avoid duplicate SBOM files from being
generated by setting the system properties.

Before you begin

Verify the following setup:
• ServiceNow AI Platform, at least the Utah release
• Discovery and Service Mapping Patterns is up to date.
• CMDB CI Class Models, is up to date.
• Visibility Content is up to date.
• MID Server requirements: 8GB RAM with 4GB JVM and the Scan container images capability.
For more information, see Scan container images
Role required: discovery_admin

Procedure
1. Select the SBOM format.
a. In the navigation filter, enter sys_properties.list.
b. On the System Properties list, search for the sn_itom_pattern.sbom_format and
select the record.
c. Set the Value field to your desired format.
The available formats are:
▪ cyclonedx
▪ spdx-json
▪ spdx

Note: Setting the value to None disables the creation of the SBOM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

914


<!-- page 915 -->
2. Set the sys_attachment system property to avoid duplicate SBOM files from being
generated.
a. Navigate to All > System Definition > Tables
b. On the Tables form in the Label field, enter *attach.
c. Select the Attachment record.
d. Select the Application Access tab.
e. Select the Can delete check box.
f. Select Update.

What to do next

Download a software bill of materials (SBOM)
Download a software bill of materials (SBOM)
Download a software Bill of Materials (SBOM) to gain visibility to the components of the
container image such as the operating system packages that are installed.

Before you begin

The SBOM must have been configured. For more information, see Configure the SBOM
generation.
Role required: discovery_admin

Procedure
1. In the navigation filter, type
sn_itom_pattern_container_image_scan_status_list.do.
2. Choose the image for which you need the SBOM in the Container Image Scan Status list.
If the scan status is None rather than Scanned, wait for the status to change before selecting
the image record.
3. Download the SBOM by selecting download in the Manage attachments section.
Container image discovery
The Discovery and Service Mapping Patterns application uses the Scan Container Image pattern
to discover Docker images and OS packages data. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
For information about performing a container image scan, see Scan container images.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

915


<!-- page 916 -->
The Scan Container Image pattern supports Aqua Trivy starting with version 0.44.0. The last
version validated is 0.51.0.
Starting with Discovery and Service Mapping Patterns version 1.18.0, the Scan Container Image
pattern supports scanning container images in the following repositories:
• Public repositories
• Self-hosted private repositories
• Amazon Elastic Container Registry (Amazon ECR), both public and private repositories
Starting with version 1.27.0, Discovery and Service Mapping Patterns enables you to control
whether to link software packages to containers or only to images.

Data collected by Discovery for container image scans
Discovery populates the data in the CMDB when running the Scan Container Image pattern.

Field

Description

Application [cmdb_ci_appl] table
Name [name]

Name of the container application.
The MSSQL application
record required name format:
ApplicationTableName@containerName
Example: MSFT SQL Instance@/sql1

Container environment variables [cmdb_container_environment_variables] table
Container [container]

Name of the container.

Key [key]

Name of the Container environment variable.

Value [value]

Container environment variable value.

Temporary tables for container image scans

Note: If you're using the 1.0.98 version to collect the data, the enriched scripts are
supported only with MSSQL.
Data collected during horizontal discovery
Field

Description

Container image scan Status [sn_itom_pattern_container_image_scan_status]
Image [image]

Name of the container image.

Message [message]

Errors or issues with the scanning process.

CI Class [ci_class]

The image CI class based on the image
command details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

916


<!-- page 917 -->
Data collected during horizontal discovery (continued)
Field

Description

Discovery status [discovery_status]

The discovery status record of the image scan.

Scan Status [scan_status]

The scan status. The available values are:
• None - The image isn’t scanned yet.
• In Progress - The image scan is in progress.

Note: If one or more images are in
progress, the next scan won't trigger.
• Scanned - The image was scanned
successfully.
• Error - A problem occurred during the
image scan. Check the message column for
details.
• Skipped - The image URL isn’t formed
properly or isn’t reachable.

Container image OS packages [sn_itom_pattern_container_image_os_packages] table
Image [image]

Name of the container image.

Package Name [package_name]

Name of the software package.

Package Version [package_version]

Version of the software package.

Package Maintainer [package_maintainer]

Name of the package maintainer.

Container Enrich Scripts [sn_itom_pattern_container_enrich_scripts]
Active [active]

Whether the enrich script state is active.

CI Type [ci_type]

The CI type to which the enrich script is
applicable.

Order [order]

Execution order of a particular script.

Script [script]

The enrich script name.

Relationships
These relationships are created to support the container image discovery.

CI

relation

CI

cmdb_ci_appl

Runs on::Runs

cmdb_ci_oslv_container

cmdb_ci_docker_container

Extends from

cmdb_ci_oslv_container

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

917


<!-- page 918 -->
CI

relation

cmdb_ci_oslv_container

Extends from

cmdb_ci_oslv_container

CI

Reference only

container_enrich_scripts

Extends from

cmdb_container_environment

Extends from

cmdb_ci_db_mssql_instance

Runs::Runs on

cmdb_ci

cmdb_container_environment_variables
sys_metadata
cmdb_key_value
cmdb_ci_docker_container

Related topics
Docker virtualization
Kubernetes discovery using patterns
Kubernetes Visibility Agent
Kubernetes Visibility Agent detects changes on resources in a Kubernetes cluster. It performs
continuous discovery, reports any changes back to your instance, and updates the Configuration
Management Database (CMDB) with the latest data.

Get started

Explore

Configure

Reference

High-level overview
of Kubernetes
Visibility Agent.

Kubernetes Visibility
Agent installation and
configuration tasks.

Reference information,
such as collected
data, the Kubernetes
Visibility Agent support
matrix, and advanced
configuration options.

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:


<!-- page 919 -->
developer.servicenow.com


<!-- page 920 -->
For more information about the Kubernetes resources on which the Informer collects data and
the CMDB tables it populates, see Data collected by Kubernetes Visibility Agent.

Initial and periodic discovery
In its initial discovery, the Informer finds all the resources in the Kubernetes cluster and reports
them to your instance. Every 30 seconds, the Informer sends up to 1 MB of data to the instance.
It typically takes up to two minutes to report data on a cluster containing 1,000 pods and another
minute for every additional 1,000 pods. A single Informer pod can handle a cluster with tens of
thousands of pods. If the Informer exits for any reason, Kubernetes restarts it automatically.
After the initial discovery, the Informer continuously monitors the addition, updating, and
deletion of resources in the cluster. Resources that were deleted from the cluster are marked with
install_status=Absent and deleted from the CMDB within hours in a regular cleanup.

Impact of the Informer on the Kubernetes API server
The Informer has minimal impact on the Kubernetes API server. It fetches the complete list of
relevant resources only once and saves it to memory. From then on, it synchronizes with the
Kubernetes API server and never pulls the complete list again. During the periodic and ondemand full discovery cycles, the Informer resends the saved list of resources to the instance.

Kubernetes Visibility Agent performance and scalability benchmark
For Kubernetes Visibility Agent benchmarks, see the Performance results for Kubernetes
Visibility Agent [KB1555851]
article in the Now Support Knowledge Base.
Configuring Kubernetes Visibility Agent
Set up Kubernetes Visibility Agent by performing the described procedures.
For information about advanced configuration options, see the Administrating and
Troubleshooting Kubernetes Visibility Agent (formerly CNO for Visibility) [KB1532614]
the Now Support Knowledge Base.

article in

Prepare for Kubernetes Visibility Agent deployment
Prepare your ServiceNow instance and the Kubernetes cluster for Kubernetes Visibility Agent
deployment.

Before you begin
• Verify that the following applications are installed and activated:
◦ Discovery and Service Mapping Patterns
◦ Kubernetes Visibility Agent (KVA), (for more information, see Install Kubernetes Visibility
Agent (KVA))
• Verify that the Kubernetes command line tool kubectl is installed and configured to
communicate with your cluster. For more information, see the kubectl
documentation.
• If you plan to use a Helm chart for the installation, verify that the Helm tool is available. For
more information, see the Helm
documentation.
Role required: admin for steps performed on the ServiceNow instance.

Procedure
1. On the ServiceNow instance, navigate to All > User Administration > Users.
2. Choose or create a user with at least the mid_server role.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

920


<!-- page 921 -->
For information about adding a new user to your instance, see Create a user
about granting a role to a user, see Assign a role to a user .

. For information

3. In the Kubernetes cluster, choose or create a namespace in which you want to deploy
Kubernetes Visibility Agent.
To create a namespace:
a. Open the kubectl command line tool.
b. Run the following command, after replacing NAMESPACE with the relevant value:
kubectl create namespace NAMESPACE
4. Create a Kubernetes secret that contains the ServiceNow credentials for accessing your
ServiceNow instance.

Note: Ensure that the credentials correspond to the user you created or identified in the
earlier step.
a. Open the kubectl command line tool.
b. Run the following command, after replacing INSTANCE_NAME, USERNAME, PASSWORD
and NAMESPACE with the relevant values:
kubectl create secret generic k8s-informer-cred-INSTANCE_NAME
--from-literal=.user=USERNAME
--from-literal=.password=PASSWORD -n NAMESPACE

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

921


<!-- page 922 -->
Note:
◦ If the Informer connects to the ServiceNow instance through a proxy server, you can
provide the proxy user and password by adding the .proxyUser and .proxyPassword
keys to the secret. For example:
kubectl create secret generic
k8s-informer-cred-INSTANCE_NAME
--from-literal=.user=USERNAME
--from-literal=.password=PASSWORD
--from-literal=.proxyUser=PROXY_USER
--from-literal=.proxyPassword=PROXY_PASSWORD -n
NAMESPACE.
If you don't provide .proxyUser, Kubernetes Visibility Agent assumes that authentication
is not needed. If you provide .proxyUser but not .proxyPassword, the system returns an
error in the logs and aborts the Informer.
◦ If your organization uses Amazon Elastic Kubernetes Service (EKS), you can store the
secret in AWS Secrets Manager. The Informer then pulls the ServiceNow credentials
for accessing your instance from the AWS Secrets Manager. For more information,
see the Kubernetes Visibility Agent (formerly CNO for Visibility): Storing the instance
credentials in AWS Secrets Manager [KB1581074]
article in the Now Support
Knowledge Base.
◦ If your organization uses Azure Kubernetes Service (AKS), you can store the secret in
the Microsoft Azure Key Vault. The Informer then pulls the ServiceNow credentials for
accessing your instance from the Azure Key Vault. For more information, see the Storing
the instance credentials in Microsoft Azure Key Vault [KB1647736]
article in the Now
Support Knowledge Base.
◦ If your organization uses Google Kubernetes Engine (GKE), you can store the secret in
Google Cloud Secret Manager. The Informer then pulls the ServiceNow credentials for
accessing your instance from the Google Cloud Secret Manager. For more information,
see the Storing credentials in Google Cloud Secret Manager [KB1709597]
article in
the Now Support Knowledge Base.
◦ If your organization uses a custom root CA (Certificate Authority), you can mount a
custom CA into the Informer pod to enable the Informer to communicate with the
ServiceNow instance. For more information, see the Using a custom root certificate
authority when connecting the Informer to the instance [KB1710906]
article in the Now
Support Knowledge Base.
◦ As an alternative to basic authentication, the Informer can use OAuth 2.0 authorization
to connect to the ServiceNow instance for enhanced security. When the Informer
uses OAuth 2.0, the instance issues an access token with an expiry time rather than
requiring login credentials with each resource request. For more information, see the
Connecting Kubernetes Visibility Agent (formerly CNO for Visibility) using the OAuth
Protocol [KB1648198]
article in the Now Support Knowledge Base.
5. Optional: If your organization's policy requires it, place the Informer docker image in your
organization’s image repository.

Note: Starting in Kubernetes Visibility Agent version 3.9.0 (Informer version 2.3.0),
released in November 2024, the docker image supports both arm64 and amd64
architectures. Upgrading from the previous image to the new one will not cause any
disruptions. However, the new image requires more storage space in your image
repository than the previous one did.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

922


<!-- page 923 -->
a. Pull the image from Docker Hub and push it to your organization’s repository.
(Optional) Replace VERSION with the number of the most recent release, provided in the
Kubernetes Visibility Agent (formerly CNO for Visibility) Helm Chart and Kubernetes YAML
file releases [KB1564347]
article in the Now Support Knowledge Base.
Docker pull docker.io/servicenowdocker/informer:VERSION
Docker tag docker.io/servicenowdocker/informer:VERSION
COMPANY_REPO:VERSION
Docker push COMPANY_REPO:VERSION
b. If the image repository requires authentication, create a secret named k8s-informer-repocred in the designated namespace.
For example:
kubectl create secret docker-registry k8s-informer-repo-cred
--docker-server https://index.docker.io/v2/
--docker-username DOCKER_USERNAME --docker-password
DOCKER_TOKEN --docker-email=user@servicenow.com -n NAMESPACE
6. Optional: If outgoing traffic from your cluster flows through a proxy, identify the proxy host
name and port used in your cluster.

Note: Ask your organization’s Kubernetes team for this information. You need to provide
it in the installation process.
7. Optional: Enable Kubernetes Visibility Agent to process more data simultaneously.
By default, the Informer’s back-end side can handle data from around 300 clusters at the same
time. If you have more clusters or your clusters undergo frequent changes, you can increase
the number of concurrent worker threads used for processing the data. For more information,
see the Controlling the number of "Kubernetes Visibility Agent" (formerly CNO for Visibility)
concurrent worker threads [KB1580241]
article in the Now Support Knowledge Base.

Result

Your ServiceNow instance and the Kubernetes cluster are ready for Kubernetes Visibility Agent
deployment.

What to do next

Install Kubernetes Visibility Agent (KVA).
Install Kubernetes Visibility Agent (KVA)
You can install Kubernetes Visibility Agent using either a Helm chart or the Kubernetes YAML file.

Before you begin

Role required: none

About this task

This procedure describes the standard Kubernetes Visibility Agent installation process. Typically,
you would use a Helm chart to perform the installation, but you can also configure and run the
Kubernetes YAML file provided by ServiceNow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

923


<!-- page 924 -->
Procedure
Install Kubernetes Visibility Agent using either a Helm chart or the Kubernetes YAML file provided
by ServiceNow.
• Install Kubernetes Visibility Agent using a Helm chart.
a. Edit the Helm install command.
i. In the following command, replace NAMESPACE, INSTANCE_NAME, and CLUSTER_NAME
with the relevant values and replace the HELM_URL with the URL of the most recent
version, provided in the Kubernetes Visibility Agent (formerly CNO for Visibility) Helm
Chart and Kubernetes YAML file releases [KB1564347]
article in the Now Support
Knowledge Base.
helm install -n NAMESPACE --set acceptEula=Y
--set instance.name=INSTANCE_NAME
--set clusterName="CLUSTER_NAME" {--set
image.repository=COMPANY_REPO --set image.tag=COMPANY_TAG}
{--set proxyUrl=http://proxy_host:proxy_port} k8s-informer
HELM_URL

Note:
▪ The curly brackets indicate that the code segments they surround are optional.
Use these code segments if the image must be pulled from your organization’s
image repository or if outgoing traffic from your cluster flows through a proxy.
▪ By passing --set acceptEula=Y, you agree to the End-User License
Agreement. You can read the End-User License Agreement by extracting the
EULA.pdf from informer-helm-<VERSION_NUMBER>.tgz.
▪ If the Informer is installed in OpenShift, add the openShift parameter to the
command and set it to true:
helm install -n NAMESPACE --set acceptEula=Y
--set instance.name=INSTANCE_NAME
--set clusterName="CLUSTER_NAME" {--set
image.repository=COMPANY_REPO --set
image.tag=COMPANY_TAG} {--set
proxyUrl=http://proxy_host:proxy_port} {--set
openShift=true} k8s-informer HELM_URL

Note: If the Informer is not installed in OpenShift, there is no need to set
this parameter.
ii. In the command, configure additional settings as needed:
▪ Configure the memory limit of the Informer pod
▪ Change the full discovery frequency in Kubernetes Visibility Agent
▪ Deactivate continuous discovery in Kubernetes Visibility Agent
▪ Suppress frequent changes in the Kubernetes cluster to reduce the load on your
instance. When this feature is active, the Informer does not report changes above
the configured threshold rate back to the instance. For more information, see the
Suppressing frequent changes in Kubernetes clusters reported by Kubernetes Visibility
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

924


<!-- page 925 -->
Agent (formerly CNO for visibility) [KB1580745]
Base.

article in the Now Support Knowledge

▪ Control the maximum number of full discoveries that informers can run on multiple
clusters at the same time. For more information, see the Scheduling Full Discoveries in
Kubernetes Visibility Agent (formerly CNO for Visibility) [KB1580250]
article in the Now
Support Knowledge Base.
▪ Enabling application service maps
b. Run the command.
• Install Kubernetes Visibility Agent using the Kubernetes YAML file.
a. Download the Kubernetes YAML zip file provided in the Kubernetes Visibility Agent (formerly
CNO for Visibility) Helm Chart and Kubernetes YAML file releases [KB1564347]
article in
the Now Support Knowledge Base.
b. Extract the k8s_informer.yaml and EULA.pdf files from the zip file.
c. Edit the k8s_informer.yaml file.
▪ Change the value of ACCEPT_EULA to "Y", as follows:
- name: ACCEPT_EULA
value: "Y"

Note: By changing the value to "Y", you agree to the End-User License Agreement
included in the EULA.pdf file.
▪ Replace all occurrences of <NAMESPACE> with the namespace in which you want to
install the Informer.
▪ Replace all occurrences of <INSTANCE_NAME> with the name of your instance, without
the domain name.
▪ Replace <CLUSTER_NAME> with the name of your cluster as it appears in the CMDB.
▪ If the Informer is installed in OpenShift, change the value of the OPENSHIFT environment
variable to true.
▪ Enabling application service maps
d. Run the command:
kubectl apply -f k8s_informer.yaml

Result

Kubernetes Visibility Agent is deployed on the Kubernetes cluster and begins to stream data into
your instance.

What to do next

For information about Kubernetes Visibility Agent administration and troubleshooting, see the
Administrating and Troubleshooting Kubernetes Visibility Agent (formerly CNO for Visibility)
[KB1532614]
article in the Now Support Knowledge Base.
Configure the memory limit of the Informer pod
Set the memory limit of the Kubernetes Visibility Agent Informer pod.

Before you begin

Role required: none
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

925


<!-- page 926 -->
About this task

Informer pod memory consumption depends mainly on the number of resources contained
in the cluster. Set the Informer pod’s memory limit to at least (number of pods)/8MB, with a
minimum of 200MB. For example:

Estimated pod count

1000

5000

30000

Minimum memory
limit

200Mi

625Mi

3.75Gi

Procedure
Do one of the following:
• When using a Helm chart, in the Helm install command, add the following command line
argument:
--set memoryLimit=MEM_LIMIT
For example: --set memoryLimit=625Mi
• When using the k8s_informer.yaml, under the line containing “limits:” add the line memory:
MEM_LIMIT.
In the following example, MEM_LIMIT is 625Mi.
resources:
limits:
cpu: 100m
memory: 625Mi
Change the full discovery frequency in Kubernetes Visibility Agent
Customize how often you want the Kubernetes Visibility Agent Informer to run a full discovery.

Before you begin

Role required: none

About this task

By default, the Informer runs a full discovery every 24 hours (1440 minutes). You can change
this frequency by performing the following procedure. For example, change the value to 2880 to
make Kubernetes Visibility Agent run a full discovery every 48 hours (2880 minutes).

Procedure
Do one of the following:
• When using a Helm chart: In the Helm install command, add the following command line
argument:
--set fullDiscoveryMin=<Frequency in minutes>
• When using the k8s_informer.yaml: Replace the default value with the required one in the line
under FULL_DISCOVERY_MIN.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

926


<!-- page 927 -->
Deactivate continuous discovery in Kubernetes Visibility Agent
Switch off continuous discovery by Kubernetes Visibility Agent if all you need is periodic
snapshots of your cluster resources. If you have multiple clusters with frequent changes,
deactivating continuous discovery reduces the load on your instance.

Before you begin

Role required: none

Procedure
Do one of the following:
• When using a Helm chart, in the Helm install command, add the following command line
argument: --set continuousDiscovery=false
• When using the k8s_informer.yaml, enter the value “false” in the line under
CONTINUOUS_DISCOVERY.
Display the Kubernetes cluster version in the CMDB
Make the Kubernetes Visibility Agent Informer populate the relevant field in the
cmdb_ci_kubernetes_cluster CI to display the Kubernetes cluster version.

Before you begin

Use ServiceNow Discovery and Service Mapping Patterns application version 1.11.0 or higher.
Role required: none

Procedure
Do one of the following:
• When using a Helm chart, in the Helm install command, set the getClusterVersion
parameter to true:
--set getClusterVersion=true
• When using the k8s_informer.yaml file, set the environment variable GET_CLUSTER_VERSION
to true.
Create a cmdb_ci_linux_server CI for each Kubernetes node
Configure if you want the Kubernetes Visibility Agent Informer to create a cmdb_ci_linux_server
CI for each Kubernetes node.

Before you begin

Role required: none

About this task

By default, the Informer creates a cmdb_ci_linux_server CI for every Kubernetes node. If this
CI is redundant or interferes with other flows in your organization, you can set the associated
configuration parameter to false.

Procedure
Do one of the following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

927


<!-- page 928 -->
• When using a Helm chart, in the Helm install command, set the createServerCi parameter
to false:
--set createServerCi=false
• When using the k8s_informer.yaml file, set the environment variable CREATE_SERVER_CI to
false.
Retain inactive namespace CIs for audits
If required by your corporate standards, retain inactive configuration items (CIs) for reference
and auditing purposes with the option to delete them manually later.

Before you begin

Confirm you have the following setup:
• Kubernetes Visibility Agent (KVA) Plugin application release 3.11.0
• Informer version 2.5.0
Role required: admin

About this task

To keep Namespace CIs for viewing or auditing required by your corporate standards instead
of deleting them automatically, which is the default behavior, enable a system property that
ensures that the table cleaner scheduled job doesn't remove them but instead updates
their install_status value to retired.
You can later delete inactive CIs manually.

Procedure
1. Navigate to All > System Properties > All Properties.
2. In the Name field, enter sn_acc_visibility.
◦ If the property is available, double-click the Value field to perform inline editing, enter true.
◦ If the property doesn't exist on your instance, select New and create the
sn_acc_visibility property, then double-click the Value field to perform inline editing,
enter true.
3. Review the retired CIs and show them to your auditor if required by your corporate standards.
4. Optional: Remove the retired CIs.
a. Navigate to All.
b. In the navigation filter, enter sys_auto_flush.LIST.
c. Select New.
d. In the Auto Flush New Record form, fill in the fields.
▪ In the Matchfield field, enter cmdb_ci_kubernetes_namespace.
▪ In the Age in seconds field, enter the desired job implementation interval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

928


<!-- page 929 -->
▪ Select the Active check box.
▪ In the Conditions fields, provide the condition [Install status][is][retired].
e. Select Submit.
Define include and exclude lists of Labels and Annotations
In Kubernetes Visibility Agent, define include and exclude lists of Labels and Annotations in
Kubernetes resources that the Informer pulls into the Configuration Management Database
(CMDB).

Before you begin

Role required: none

Procedure
Create an include or exclude list by performing the appropriate procedure.
Task

Procedure

• When using a Helm chart, in the Helm install
command, add a comma-separated include
list of Labels and Annotations.
Create an include list

For example: --set
IncludeLabelsAndAnnotations="label1,label2
• When using the k8s_informer.yaml file, add
values under the environment variable IN­
CLUDE_LABELS_AND_ANNOTATIONS.

• When using a Helm chart, in the Helm install
command, add a comma-separated include
list of Labels and Annotations.
Create an exclude list

For example: --set
ExcludeLabelsAndAnnotations="label1,label2
• When using the k8s_informer.yaml file, add
values under the environment variable EX­
CLUDE_LABELS_AND_ANNOTATIONS.

Add custom Labels and Annotations to Kubernetes resources
Add custom Labels and Annotations to all resources deployed by Kubernetes Visibility Agent in
the Kubernetes cluster.

Before you begin

Role required: none

Procedure
Do one of the following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

929


<!-- page 930 -->
• When using a Helm chart, in the Helm install command, add the custom attributes to the
values.yaml file.
Use the format shown in this example:
--set commonLabels.mylabel1=value1 -set commonLabels.mylabel2=value2 --set
commonAnnotations.myannotation1=value3.
• When using the k8s_informer.yaml file, add custom Labels and Annotations manually to the
relevant resources in the file.

Note:
Label and Annotation names must be alphanumeric and contain no spaces or special
characters. For limitations on Label values, see the Kubernetes documentation .
Upgrade Kubernetes Visibility Agent Informers remotely
Upgrade Kubernetes Visibility Agent Informer pods in Kubernetes clusters remotely from the
ServiceNow Instance to avoid dependence on your Kubernetes admin. You can upgrade a single
Informer or multiple Informers together.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Kubernetes Visibility Agent > Properties.
2. In the Kubernetes Visibility Agent Image field, set the image to which you want to upgrade
Informers that are currently running, and then select Save.
Use the following format: repository:tag. For example: servicenowdocker/
informer:2.1.1.
3. Navigate to All > Kubernetes Visibility Agent > Home.
4. In the Kubernetes Informers list, perform the relevant steps to upgrade one Informer or several
Informers concurrently.

Note: Only Informers with the value Upgrade Pending in the Upgrade Status field can
be upgraded. The running status of the Informers must be either Up or Paused.
Upgrade

One Informer

Steps

a. Select the Informer in the list to display its
form.
b. In the Related Links section of the form, se­
lect Upgrade Informer.
a. Select multiple Informers in the list.

Multiple Informers

b. From the Actions on selected rows... list
menu, select the Upgrade Informers menu
item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

930


<!-- page 931 -->
The upgrade process begins, and the Upgrade Status field for each selected Informer displays
the value Upgrading. The system downloads the new image and starts the new pod for each
selected Informer.
When an upgraded pod connects to the Instance, the Informer Version field displays the new
version number. The Upgrade Status field displays Desired image in use.
Override Informer parameters from the Instance
Control Kubernetes Visibility Agent Informer execution parameters from the ServiceNow Instance
to avoid dependence on your Kubernetes admin.

Before you begin

Role required: discovery_admin

About this task

The Informer execution parameters are configured during deployment using the Kubernetes
Yaml file or the Helm command. If you need to change these settings later, you can do so
directly from the Instance without having to ask your Kubernetes team to update or reinstall the
deployment.
When you add or modify a parameter, it is synchronized with the informer through the ECC
Queue. Depending on the parameter, the Informer pod may need to restart. Parameters requiring
a restart must have the SELF_PATCHING_ALLOWED environment variable set to true for changes
to be effective upon restart. If this variable is set to false, the Informer is not restarted and
continues to use the old values.

Note: Informer-specific parameters only affect a specific Informer. If you add a parameter
without assigning it to an Informer, it defaults to a global parameter and affects all Informers
in the system. When both global and Informer-specific parameters are present, Informerspecific parameters take precedence.
You can update the following parameters from the Instance:

Parameter

Restart upon change

VERBOSE_LOGGING

No

OPENSHIFT

Yes

CREATE_SERVER_CI

No

INCLUDE_LABELS_AND_ANNOTATIONS

No

EXCLUDE_LABELS_AND_ANNOTATIONS

No

FULL_DISCOVERY_MIN

Yes

SEND_INTERVAL_SEC

Yes

CONTINUOUS_DISCOVERY

Yes

CLUSTER_RESOURCE_ID

No

CLUSTER_NAME

No

For information about the purpose of each parameter, see the Kubernetes Visibility Agent
(formerly CNO for Visibility) Advanced Configuration Options [KB1648891]
article in the Now
Support Knowledge Base.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

931


<!-- page 932 -->
Procedure
1. Navigate to All > Kubernetes Visibility Agent > Configuration Parameters.
2. Select a parameter in the Kubernetes Informer Parameters list.
3. Change the configured value as needed, and then select Update.
Enabling application service maps
Service maps map application services based on traffic between the workloads in Kubernetes
using Istio or Linkerd service meshes or a ServiceNow DaemonSet, and sends that information to
the ServiceNow instance.
Application service maps map the traffic between the workloads in Kubernetes using Istio
or Linkerd service meshes or a ServiceNow DaemonSet as part of KVA installation. For more
information, see Install Kubernetes Visibility Agent (KVA).
• If you use a ServiceNow DaemonSet, a pod runs on each Kubernetes node and reports new
connections it detects to the main Informer pod every 60 seconds. To find out how to enable
the application service maps using a ServiceNow DaemonSet, see Enable service maps using
DaemonSet.
• If you use service meshes, have a Prometheus server, and provide the Prometheus URL,
the Informer queries the Prometheus server periodically to get information on connections
reported by the service mesh. To find out how to enable the application service maps using
Istio or Linkerd service meshes, see Enable service maps using service meshes.
Enable service maps using DaemonSet
Enable application service maps based on the traffic between the workloads in Kubernetes by
using a ServiceNow DaemonSet as part of Kubernetes Visibility Agent (KVA) installation.

Before you begin

Role required: discovery_admin.

About this task

If you use a ServiceNow DaemonSet, a pod is running on each Kubernetes node and reports to
the main Informer pod every 60 seconds on new connections detected. For more information,
see Install Kubernetes Visibility Agent (KVA)

Procedure
Set parameters either during Helm chart archive installation or by modifying the Kubernetes
YAML file provided by ServiceNow.
Method

Actions

1. In the Helm install command, add the fol­
lowing parameter:

During Helm chart archive installation

--set
connectionsDiscovery.method=
servicenow
2. If your organization's policy requires it, pull
the DaemonSet image from Docker hub and
place it in your organization’s image reposito­
ry.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

932


<!-- page 933 -->
Method

Actions

Replace the placeholder X characters with
the number of the most recent release pro­
vided in the Kubernetes Visibility Agent (for­
merly CNO for Visibility) Helm Chart and Ku­
article in the Now Support Knowledge Base.
Docker pull
servicenowdocker/informer_ds
:X.X.X
Docker
tagservicenowdocker/informer
_ds:X.X.X COMPANY_REPO:X.X.X
3. In the Helm install command, add the
following parameters:
--set
image.dsRepository=COMPANY_REPO
–set image.dsTag=X.X.X

1. In the k8s_informer.yaml file, uncom­
ment the DaemonSet, ServiceAccount (used
by the DaemonSet), and Service.Deploy­
ment resources according to the instruc­
tions in the file.
2. Uncomment the lines containing environ­
ment variables.
Modifying the k8s_informer.yaml file

3. If your Prometheus server URL isn't
the default one, uncomment the lines
containing the environment variable
PROMETHEUS_URL and change the value.
4. Run the following command:
kubectl apply -f
k8s_informer.yaml

What to do next

Create application service maps
Enable service maps using service meshes
Enable application service maps based on the traffic between the workloads in Kubernetes by
using Istio or Linkerd or service meshes as part of Kubernetes Visibility Agent (KVA) installation.

Before you begin

You must have a Prometheus server and provide the Prometheus URL.
Role required: discovery_admin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

933


<!-- page 934 -->
About this task

If you use a service mesh, a pod running on every node (Informer) communicates with a
Prometheus server to get the traffic information. For more information, see Install Kubernetes
Visibility Agent (KVA)

Procedure
Set parameters either during Helm chart archive installation or by modifying the Kubernetes
YAML file provided by ServiceNow.
Method

Actions

In the Helm install command, add the fol­
lowing parameter:
--set
connectionsDiscovery.method=<
METHOD>

During Helm installation

where <METHOD> is the URL for either Istio
(http://prometheus.istio-system:9090) or Link­
erd (http://prometheus.linkerd-viz:9090).

Note:
If your Prometheus server URL is not the
default one, use the following parameter:
--set
connectionsDiscovery.prom
etheusUrl

1. Access the k8s_informer.yaml script.
2. Set the environment variable
k8s_informer.yaml by entering either
Istio or Linkerd in quotation marks:
Modify the k8s_informer.yaml script

-- name:
GET_CONNECTIONS_METHOD
value: ""
3. Run the following command:
kubectl apply -f
k8s_informer.yaml

What to do next

Create application service maps
Create application service maps
Create a service map that maps application services based on traffic between the workloads in
Kubernetes using Istio or Linkerd service meshes or a ServiceNow DaemonSet.

Before you begin

Role required: discovery_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

934


<!-- page 935 -->
You should first enable the application service maps, by using Istio or Linkerd service meshes or
a ServiceNow DaemonSet as part of the Kubernetes Visibility Agent (KVA) installation. For more
information, see Enabling application service maps.

Procedure
1. Navigate to All and enter kubernetes service maps in the navigation filter.
2. Select the Kubernetes service to use as your entry point for this map.
3. Select Create Service Maps.
◦ If the service does not exist, the service map is created with the default name in the
following format: Name@Namespace@Cluster Name. You can modify this name.
◦ If the service for this CI root already exists, the message Service <service-name>
already exists and has the same root CI. is displayed.
The Service form is opened.
4. Optional: View the map.
a. Select Open in CMDB Workspace.
b. In the CMDB workspace, select Open Map.

Result

The application service map is created and is visible in the CMDB workspace.
Pulling additional resources from Kubernetes clusters into the CMDB
You can configure the Kubernetes Visibility Agent Informer to pull extra resources from
Kubernetes clusters into the Configuration Management Database (CMDB), in addition to the
resources it sends to the database by default. By pulling in additional resources beyond the
default set, you can enhance visibility into your Kubernetes clusters.
The Informer collects data on Kubernetes resources, sends the collected data to the instance,
and updates the appropriate tables in the CMDB. For a list of the resources the Informer pulls
into the CMDB by default, see Data collected by Kubernetes Visibility Agent.
For every additional Kubernetes resource you want the Informer to pull into the CMDB,
the system creates a Configuration Item (CI) in the cmdb_ci_kubernetes_component
target table. Alternatively, extra resources can be pulled to custom tables that
extend the cmdb_ci_kubernetes_component table. For example, you could create a
u_cmdb_ci_kubernetes_configmap table for all ConfigMap resources in the cluster. The system
creates a relation and a reference from the table to the cluster CI for every additional resource. If
the resource is namespaced, a relation to the namespace CI is created.
By default, the Informer pulls the following information from the Kubernetes cluster for each
additional resource:
• Name
• Namespace (for namespaced resources)
• Kubernetes ID
• API version
• Kind
• Labels and Annotations
Along with this default data, you can make the Informer pull further information on the additional
resources into the CMDB. By default, the system stores this extra data in the attributes field of
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

935


<!-- page 936 -->
the cmdb_ci_kubernetes_component table. You can also create a custom field per additional
resource for storing the extra information.
Kubernetes Visibility Agent enables you to filter additional resources by defining filtering
conditions. If a condition shows a match, the Informer sends the resource to the CMDB.
For more detailed information and procedures for pulling additional resources from Kubernetes
clusters into the CMDB, see the Kubernetes Visibility Agent (formerly CNO for Visibility)
extensibility and customization [KB1638668]
article in the Now Support Knowledge Base.
Upgrade Kubernetes Visibility Agent
You can upgrade Kubernetes Visibility Agent using either a Helm chart or the Kubernetes YAML
file.

Before you begin

Role required: none

About this task

This procedure describes the standard Kubernetes Visibility Agent upgrade process. Typically,
you would use a Helm chart to perform the upgrade. Alternatively, you can upgrade Kubernetes
Visibility Agent by configuring and running the Kubernetes YAML file provided by ServiceNow. In
both cases, there is no need to uninstall before upgrading.
You can also upgrade Kubernetes Visibility Agent Informer pods in Kubernetes clusters remotely
from the ServiceNow Instance. For more information, see Upgrade Kubernetes Visibility Agent
Informers remotely.

Procedure
Upgrade Kubernetes Visibility Agent using either a Helm chart or the Kubernetes YAML file
provided by ServiceNow.
• Upgrade Kubernetes Visibility Agent using a Helm chart.
a. Edit the Helm upgrade command.
i. In the following command, replace NAMESPACE, INSTANCE_NAME, and CLUSTER_NAME
with the relevant values and replace the HELM_URL with the URL of the most recent
version, provided in the Kubernetes Visibility Agent (formerly CNO for Visibility) Helm
Chart and Kubernetes YAML file releases [KB1564347]
article in the Now Support
Knowledge Base.
helm upgrade -n NAMESPACE --set acceptEula=Y
--set instance.name=INSTANCE_NAME
--set clusterName="CLUSTER_NAME" {--set
image.repository=COMPANY_REPO --set image.tag=COMPANY_TAG}
{--set proxyUrl=http://proxy_host:proxy_port} k8s-informer
HELM_URL

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

936


<!-- page 937 -->
Note:
▪ The curly brackets indicate that the code segments they surround are optional.
Use these code segments if the image must be pulled from your organization’s
image repository or if outgoing traffic from your cluster flows through a proxy.
▪ By passing --set acceptEula=Y, you agree to the End-User License
Agreement. You can read the End-User License Agreement by extracting the
EULA.pdf from informer-helm-<VERSION_NUMBER>.tgz.
▪ If the Informer is installed in OpenShift, add the openShift parameter to the
command and set it to true:
helm upgrade -n NAMESPACE --set acceptEula=Y
--set instance.name=INSTANCE_NAME
--set clusterName="CLUSTER_NAME" {--set
image.repository=COMPANY_REPO --set
image.tag=COMPANY_TAG} {--set
proxyUrl=http://proxy_host:proxy_port} {--set
openShift=true} k8s-informer HELM_URL

Note: If the Informer is not installed in OpenShift, there is no need to set
this parameter.
ii. In the command, configure additional settings as needed:
▪ Configure the memory limit of the Informer pod
▪ Change the full discovery frequency in Kubernetes Visibility Agent
▪ Deactivate continuous discovery in Kubernetes Visibility Agent
▪ Suppress frequent changes in the Kubernetes cluster to reduce the load on your
instance. When this feature is active, the Informer does not report changes above
the configured threshold rate back to the instance. For more information, see the
Suppressing frequent changes in Kubernetes clusters reported by Kubernetes Visibility
Agent (formerly CNO for visibility) [KB1580745]
article in the Now Support Knowledge
Base.
▪ Control the maximum number of full discoveries that Informers can run on multiple
clusters at the same time. For more information, see the Scheduling Full Discoveries in
Kubernetes Visibility Agent (formerly CNO for Visibility) [KB1580250]
article in the Now
Support Knowledge Base.
b. Run the command.
• Upgrade Kubernetes Visibility Agent using the Kubernetes YAML file.
a. Download the Kubernetes YAML zip file provided in the Kubernetes Visibility Agent (formerly
CNO for Visibility) Helm Chart and Kubernetes YAML file releases [KB1564347]
article in
the Now Support Knowledge Base.
b. Extract the k8s_informer.yaml and EULA.pdf files from the zip file.
c. Edit the k8s_informer.yaml file.
▪ Change the value of ACCEPT_EULA to "Y", as follows:
- name: ACCEPT_EULA
value: "Y"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

937


<!-- page 938 -->
Note: By changing the value to "Y", you agree to the End-User License Agreement
included in the EULA.pdf file.
▪ Replace all occurrences of <NAMESPACE> with the namespace in which you want to
install the Informer.
▪ Replace all occurrences of <INSTANCE_NAME> with the name of your instance, without
the domain name.
▪ Replace <CLUSTER_NAME> with the name of your cluster as it appears in the CMDB.
▪ If the Informer is installed in OpenShift, change the value of the OPENSHIFT environment
variable to true.
d. Run the command:
kubectl apply -f k8s_informer.yaml

What to do next

For information about Kubernetes Visibility Agent administration and troubleshooting, see the
Administrating and Troubleshooting Kubernetes Visibility Agent (formerly CNO for Visibility)
[KB1532614]
article in the Now Support Knowledge Base.
Kubernetes Visibility Agent Reference
Reference information about Kubernetes Visibility Agent.
Data collected by Kubernetes Visibility Agent
The Kubernetes Visibility Agent Informer collects data on Kubernetes resources and populates
various CMDB tables.
The Kubernetes Visibility Agent Informer collects data on the following Kubernetes resources:
• Namespaces
• Nodes
• Deployments
• Statefulsets
• Daemonsets
• Replicasets
• Jobs
• Cronjobs
• Pods
• Services
• ReplicationController
• Ingresses
The Informer collects data on the following OpenShift resources:
• DeploymentConfig
• BuildConfig
• Routes
• Groups

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

938


<!-- page 939 -->
• Users
• Projects
• Images
• ImageStreams
The Informer populates the following CMDB tables:
• cmdb_ci_kubernetes_cluster
• cmdb_ci_kubernetes_namespace
• cmdb_ci_kubernetes_node
• cmdb_ci_kubernetes_deployment
• cmdb_ci_kubernetes_statefulset
• cmdb_ci_kubernetes_daemonset
• cmdb_ci_kubernetes_replicaset
• cmdb_ci_kubernetes_job
• cmdb_ci_kubernetes_cronjob
• cmdb_ci_kubernetes_pod
• cmdb_ci_kubernetes_service
• cmdb_ci_kubernetes_replicationcontroller
• cmdb_ci_kubernetes_ingress
• cmdb_ci_docker_container
• cmdb_ci_docker_image
• cmdb_ci_container_repository_entry
• cmdb_ci_container_repository
• cmdb_ci_linux_server
• cmdb_ci_openshift_dep_conf
• cmdb_ci_openshift_build_conf
• cmdb_ci_openshift_route
• cmdb_ci_openshift_group
• cmdb_ci_openshift_user
• cmdb_ci_openshift_project
• cmdb_ci_openshift_images
• cmdb_ci_openshift_images_stream
Kubernetes Visibility Agent Informer status fields
The fields in the Kubernetes Visibility Agent Informers table describe the status of the Informer
pods deployed in your Kubernetes clusters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

939


<!-- page 940 -->
Kubernetes Visibility Agent Informers table
Field

Description

Informer name

System-generated name of the Informer,
based on the unique ID of the cluster. When a
new cluster CI is created, the Informer name
is identical to the name you configured for the
cluster.
Select this field to view the available actions
on the selected Informer.

Kubernetes cluster

Reference to the cluster CI.
Select this field to view details of the cluster.

Full discovery status

Status of the current full discovery. Possible
values are: Empty, In Progress, Queued,
Completed, Failed.

Note: Full discovery is performed either
periodically or on demand. By default, it
is run once a day.
Last full discovery

The time that the last full discovery was
completed.

Informer version

The version of the Informer pod that is running
in the cluster.

Status

The status of the Informer. Possible values are:
Up, Down, Paused.

Note: The status of an Informer is
considered Down when no message has
been received in the last 15 minutes.
Continuous Discovery Status

The status of continuous discovery. Possible
values are: On or Off.

Upgrade Status

The upgrade status of Informers in the cluster.
Possible values are: Upgrade Pending,
Upgrading, Desired image in use, Upgrade
using kubectl/Helm.

Note: When the upgrade status of
an Informer is Upgrade using kubectl/
Helm, contact your Kubernetes admin to
upgrade the informer manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

940


<!-- page 941 -->
Kubernetes Visibility Agent support matrix
The Kubernetes Visibility Agent component is supported on several versions of Kubernetes and
OpenShift and in various Kubernetes environments.
For the latest information, see the Kubernetes Visibility Agent (formerly CNO for Visibility)
Support Matrix [KB1700730]
article in the Now Support Knowledge Base.
Kubernetes Visibility Agent advanced configuration
This section refers to advanced configuration options for the Kubernetes Visibility Agent
component running in a Kubernetes cluster.
For the latest information, see the Kubernetes Visibility Agent (formerly CNO for Visibility)
Advanced Configuration Options [KB1648891]
article in the Now Support Knowledge Base.

Configuring Discovery
Configure the elements that Discovery requires to investigate your network, such as credentials,
schedules, and IP addresses.

Configuration overview
Discovery can run on a regular, configurable schedule, or can be launched manually. The IP
address ranges you provide tell Discovery which specific devices to investigate. To retrieve
useful information, Discovery needs credentials for devices within a particular range, so that
Discovery can connect to and run various probes on the devices it finds. Discovery compares the
devices it finds with configuration items (CI) in the CMDB and updates any matching devices. If
Discovery does not find a matching CI in the CMDB, it creates a CI.

Discovery configuration procedures
Use the following links to configure Discovery for your environment. You do not need to perform
all these procedures to run a Discovery. The platform provides many defaults you can use to
explore your network that are suitable for most discoveries. To get started quickly with Discovery,
you can use Guided Setup, which expedites the setup of a basic Discovery.
Configuration procedures
Discovery IP address
configuration

Discovery classifiers

Discovery status

Domain Separation and
Discovery

Discovery classification
parameters

Discovery Configuration
Console

SNMP support for Discovery

Discovery identifiers

Discovery and SCCM together Discovery properties

Discovery Home page

Request Discovery
Request and activate the Discovery (com.snc.discovery) plugin to enable Discovery capabilities
on your instance.

Before you begin

To purchase a Discovery subscription, contact your ServiceNow account manager or sales
representative.
Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

941


<!-- page 942 -->
About this task

Discovery is available as a separate subscription from the rest of the ServiceNow AI Platform
and requires the Discovery (com.snc.discovery) plugin. When the Discovery plugin is activated,
several plugins and applications are also installed. For more information, see Plugins or
applications installed with ITOM Visibility. For additional details about plugins, see Requesting a
Plugin from the Service Catalog [KB0751715] article in the Now Support Knowledge Base.

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
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Related topics
Discovery setup
Discovery monitoring and issue resolution
Discovery setup
After you activate the Discovery application, you have several ways to get started.

Note: If the Discovery (com.snc.discovery) plugin is activated on the instance and a
language plugin (for example, Spanish) is also activated, make sure that the MID Server
language is also set to English/None on the user record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

942


<!-- page 943 -->
Select your method of setup:

Setup
method

Description

Discovery Use this method if you want to set up everything you need to use Discovery,
Guided
including a MID Server.
Setup
ITOM Discovery Guided Setup provides a sequence of tasks that help you
configure Discovery on your ServiceNow instance. To access the guided setup,
navigate to All > ITOM Guided Setup > ITOM Discovery Guided Setup.
For more information about using the guided setup interface, see Using guided
setup .
Without
Guided
Setup

Use this method if you want to set up each component of setup separately. You can
configure MID Servers, credentials, and roles separately, then configure one of the
discovery types from the Discovery Schedule.

Discovery Use this wizard to configure everything you need to perform subnet and CI
Quick
Discovery in your environment. Before you can use Quick Start, you must first install
Start
and validate your MID Servers and create the necessary credentials.
Related topics
Discovery monitoring and issue resolution
Discovery Guided Setup
ITOM Discovery Guided Setup provides a sequence of tasks that help you install and get started
with Discovery. If you're setting up Discovery for the first time, this is a good way to get your
environment up and running quickly.
To access the ITOM Discovery Guided Setup, navigate to All > ITOM Guided Setup > ITOM
Discovery Guided Setup. You're then prompted to enter a configuration name, which enables
your progress to be saved and resumed later. If you're returning to the setup, select Cancel
followed by Exit in the confirmation dialog to view the list of in-progress setup configurations.
The ITOM Discovery Guided Setup leads you through a structured series of configuration
activities to promote accurate visibility in the CMDB and establish a strong foundation for IT
operations.

Phases
The setup is organized into the four distinct phases: Learn, Crawl, Walk, and Run. Each task
within a phase includes built-in resources, such as contextual embedded help and links to
detailed documentation on the ServiceNow product documentation site. In some cases, you can
even complete the task directly within the guided setup.
Learn
The Learn phase is the first step in the guided setup. This phase helps you develop
a foundational understanding of Discovery by exploring its core principles, learning
about various techniques, and identifying the prerequisites needed to proceed with
the setup.
Crawl
This phase walks you through the initial technical setup of Discovery, including
installing the necessary plug-ins, configuring credentials, and preparing your
instance for scheduling discoveries.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

943


<!-- page 944 -->
Walk
In this phase, you configure and activate Discovery schedules by setting up various
schedule types, adding credentials, and installing and validating your MID Servers.
Run
This phase focuses on monitoring and optimizing ongoing Discovery operations,
leveraging tools like Discovery Admin Workspace and Content 360 to track
performance and promote continued success.

Key features
The ITOM Discovery Guided Setup provides step-by-step configuration support along with
intuitive navigation to track progress and move smoothly through each phase.
Guided Setup landing page features

Interactive features within the landing page
Feature

Description

1. Exit

Exit the guided setup.

Note: Selecting Exit in the confirmation
dialog takes you back to the list of setup
configurations currently in progress.
2. Complete

Mark the guided setup complete.

Note: This option is only available once
you have completed all the tasks in each
phase of the setup.
3. Start

Launch the guided setup phase.

4. Status

Track your progress of the guided setup
phase.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

944


<!-- page 945 -->
Interactive features within the landing page (continued)
Feature

Description

5. Task

Jump to specific activities within a phase.

6. Phase drop-down

View and access tasks within another phase.

Guided Setup in-phase features

Interactive features within each phase
Feature

Description

1. Back arrow

Return to the guided setup landing page.

2. Phase drop-down

Toggle between different phases.

3. Activities

Jump to other activities within the current
phase.

4. Close

Navigate back to the guided setup landing
page.

5. Mark Complete

Track your progress and continue to the next
activity in the phase.

6. Skip

Skip directly to the next activity in the phase.

Set up Discovery without Guided Setup
If you aren’t using Guided Setup, you must perform several configuration steps manually to
activate the application, set up the MID Server, and then set up Discovery.

Before you begin
• Grant Discovery role: Confirm that users who are expected to configure and execute Discovery
in your network have the discovery_admin role. This role grants access to the tables in the
Discovery application.
• Designate a computer to host the MID Server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

945


<!-- page 946 -->
• Gather the login credentials that the MID Server must use to access the devices it’s expected
to discover.
• Determine which IP addresses Discovery must scan. In a highly complex network, group IP
ranges into a range sets, which are reusable for different schedules. Discovery doesn’t scan
anything outside of these ranges.
Role required: discovery_admin
https://player.vimeo.com/video/1113359093?
h=41945233fc&badge=0&autopause=0&player_id=0&app_id=58479

About this task
Procedure
1. Install one or more MID Servers on physical or virtual servers that meet the MID Server system
requirements
and configure them to communicate with the appropriate ServiceNow instance.
Install at least two MID Servers at first and assign them to different schedules and IP ranges to
help complete discoveries quicker. Starting with the Istanbul release, you must make sure that
the MID Server is assigned the Discovery application or the ALL application.
2. Verify MID Server connectivity by navigating to Discovery > MID Servers.
If the MID Servers are configured properly, they appear in the list of MID Servers.
3. If a MID Server doesn’t appear as a choice in the instance, perform the following checks:
◦ Verify that the URL in the Configuration Parameters related list provided is correct.
◦ If the MID Server is installed on Windows, make sure the ServiceNow MID Server service is
configured properly with the correct login credentials and is running.
◦ Check the MID Server log for errors.
▪ On the instance, navigate to Discovery > MID Servers > [MID Server] > Logs.
▪ On the MID Server host, navigate to the agent\logs\agent0.log0 directory.
◦ If Basic Authentication is enabled, a user name and password must be provided.
◦ The MID Server might not have outbound access on port 443 (SSL) or a proxy server might
be preventing TCP communication to the instance.
◦ Make sure that no firewalls are blocking communication between the MID Server and the
instance.
4. Set the credentials
on the instance for all the computers, printers, and network gear in your
environment.
Credentials for Windows devices (using the WMI protocol) are provided by the login
configured for the MID Server service on the Windows server host. Credentials for UNIX,
vCenter, and SNMP must be configured on the instance. Discovery automatically determines
which credentials work for a particular computer or device.
5. Define and run Discovery schedules.
The Discovery Schedule is the control point for running discoveries. The schedule controls
when Discovery runs, defines the MID Server to use, the type of Discovery that should run,
and the IP addresses to query. Create as many schedules as necessary, using different types
of discoveries, and configure them to run at any time. Let Discovery run on its configured
schedule or manually execute Discovery at any time. You can set up a single schedule for
the entire network or separate schedules for each location or VLAN. If you don’t know the IP
address to scan in your network, run a Network Discovery first to discover the IP networks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

946


<!-- page 947 -->
Once discovered, you can convert these networks into IP address range sets that you use in a
Discovery Schedule.

Note: For advanced discoveries, such as those requiring load balancing or scanning
across multiple domains, use Discovery behaviors.
6. Validate the Discovery results.
Open the ECC queue and analyze the XML payload, then check the Discovery log. For more
information, refer to the section for validating results in Schedule a horizontal discovery.
Discovery Quick Start
Discovery Quick Start is a wizard that helps you get up and running with Discovery quickly. Use
Discovery Quick Start tasks to discover IP ranges, or subnets, in your environment and then to
identify the configuration items (CI) in those subnets.
Before using Discovery Quick Start, install and validate MID Servers. See MID Server
installation
for details.
Configure and schedule subnet discovery
Subnet discovery finds all the subnets in your environment to determine available IP ranges and
to ensure that there are MID Servers available to access these ranges.

Before you begin

Role required: discovery_admin

About this task

The goal of this phase is to discover all the subnets in your network. To do this, Discovery must
have the correct SNMP credentials to identify the routers it encounters. Using the credentials you
provide, Discovery begins by reading the router tables of the router connected to the MID Server
to identify connected routers. Discovery then moves outward through the network from router to
router until it has discovered all the local subnets.
After Discovery identifies the subnets, it automatically assigns the IP ranges of these subnets to
qualified MID Servers in preparation for the CI discovery phase.

Procedure
1. Navigate to All > Discovery > Home.
The first time you access Discovery Home, a welcome screen appears. After you have
configured subnet discovery and run the schedule, Quick Start shows the subnet results
information.
2. Click Discovery Quick Start to begin configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

947


<!-- page 948 -->
Note: If you did not set up a MID Server yet, click MID Server Guided Setup when
prompted to create the MID Server user, download and install the MID Server, and
validate it. Links in Guided Setup return you to Discovery Quick Start to continue
configuring subnet discovery. For more information about using the guided setup
interface, see Using guided setup .

3. In the Select MID Servers tab, select qualified MID Servers for subnet discovery.
a. Move the MID Servers you want to use for subnet discovery from the Available column to the
Selected column.
Available MID Servers must meet these requirements:
▪ Be configured and in an Up state.
▪ Be validated.
▪ Have the Discovery application attached or ALL applications configured.

b. If you want Discovery to use all new MID Servers that meet the setup criteria, select the
Automatically include new MID Servers option.
c. Click Next.
4. In the Add Credentials tab, add credentials for the routers you are going to discover.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

948


<!-- page 949 -->
This tab shows any SNMP credentials that are already configured. Routers that appear in the
Targeted Routers list are default gateway routers to which the MID Server host is connected.

Note: You can return to this phase after creating a schedule to add credentials.

a. Click New to add SNMP community or SNMP V3 credentials, if necessary.
b. If the list of targeted routers does not include all the routers you expect to use, click the plus
icon and add the router by IP address.

c. After you configure all necessary credentials, click Test Router Access to verify that
Discovery can use your credentials to access routers.
The gateway routers appear in the Routers column, regardless of whether the credentials
can access the router. Those routers that the credentials can successfully access appear
with a Success indicator. The routers that cannot be reached, appear with a Failed indicator.
You can filter the list using the Search by IP field or by using the Reached Routers or
Unreached Routers options from the View choice list.
d. Click Next.
5. In the Create Schedule tab, create a schedule to run subnet discovery regularly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

949


<!-- page 950 -->
Execution of this schedule performs subnet discovery and triggers IP subnet auto-assignment,
in which the discovered subnets are assigned to qualified MID Servers.
a. Complete the schedule using the fields from the list.

▪ Active: Enables or disables this schedule.
▪ Frequency: Select how often the schedule should run:
▪ Daily: Run Discovery at a specified time each day.
▪ Weekly: Run Discovery on one designated day of each week.
▪ Monthly: Run Discovery on one designated day of the month. If the designated day
doesn’t occur in the month, the schedule doesn’t run that month. For example, if you
designate day 30, the schedule doesn’t run in February.
▪ Once: Run Discovery once on the designated date and time.
▪ Periodically: Run Discovery every designated time. Use the Repeat Interval field to
define the time in days, hours, minutes and seconds. The first discovery runs at the
point in time defined in the Starting field. The subsequent discoveries run after each
Repeat Interval period passes.
▪ Cancel Discovery if longer than: Terminate the Discovery process if it exceeds the
specified duration. Discovery might run for an excessive amount of time based on multiple
factors, including the size of your network.

Note: Any MID Server processing taking place when Discovery is canceled is
allowed to complete. However, all output records that MID Servers haven’t picked up
are canceled.
b. Click one of these:
▪ Finish and Run saves the schedule and runs discovery immediately.
▪ Finish saves the schedule. Discovery then runs at the interval specified in the schedule.
6. View subnet discovery results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

950


<!-- page 951 -->
a. Click each tile for details.
If subnet Discovery did not yet run, each of these tiles shows 0.
▪ Reached Routers: The number of routers that Discovery was able to access and discover.
▪ Unreached Routers: The number of routers that Discovery was not able to access.
▪ Found Subnets: The number of subnets that Discovery found.
▪ Assigned Subnets: IP subnets that were assigned to at least one MID Server.
▪ Unassignable Subnets: IP subnets that were not assigned to any MID Servers.
b. Click Edit Schedule to return to the Select MID Servers tab.
Resolve any issues with subnet discovery by returning to the Router Access page and
making sure each credential is configured correctly. Also test router access for each
credential.
c. Click Advanced View to see the Automation Status Set form.
This form displays detailed results for both subnet discovery and the automatic assignment
of IP ranges.
Configure and schedule CI discovery
Using the credentials you provide, the Quick Start wizard finds all the configuration items (CI) for
the IP ranges identified during subnet discovery.

Before you begin

You should perform this procedure after you complete Configure and schedule subnet discovery
in the Discovery Quick Start.
Role required: discovery_admin

About this task

The goal of this phase is to create the schedules necessary to discover the CIs on each subnet.
Discovery Quick Start does that automatically, and then runs these schedules using the
credentials you provide. You can add additional credentials at any time. Optionally, you can
define locations for each of the subnet routers, and Discovery creates separate schedules for
each location.
You must be familiar with the types of credentials that you need for the CIs in your network. Each
CI type requires different credentials. For example, if Discovery uses patterns instead of probes,
the patterns might require applicative credentials .
Review the requirements for the CI types you intend to discover. See Data collected by ITOM
Visibility, and then locate the specific type of device, computer, or application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

951


<!-- page 952 -->
Procedure
1. In the Add Credentials tab in the Discovery Quick Start, create the credentials necessary to
discover CIs in your network.
a. Select the credential type you want to manage from the Type field.
All the credentials currently configured for that CI type appear in rows of

tiles.
b. To add a credential, click New.
The Add Credential form appears, allowing you to specify your new credential.
c. Click Next to go to the Router Location phase.
2. Optional: In the Assign Router Location tab, assign a location to each router that subnet
discovery found.
When you configure router locations, you have the option of creating a schedule for each
location. If you do not assign locations, a single Discovery schedule is created for all your
subnets. If you assign a timezone to a location, Discovery creates a schedule that runs in that
location's timezone. If you do not assign a timezone to a location, the schedule for that location
runs in the user's local timezone.

Note: A subnet can belong to multiple routers. If schedules are created by location,
Discovery finds subnets managed by multiple routers using multiple schedules.
The list of gateway routers shows those devices not currently assigned to a location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

952


<!-- page 953 -->
a. Select the check boxes for the routers you want to assign a location.
Use the System Location column in the table to help you assign a location to the router.
b. Select the location in the Assign to choice list.
c. If the location is not already in the list, click Add New Location and add the location.
d. Ensure that the location has a timezone defined.
Timezones allow you to create a schedule for each location based on the timezone.
e. Click Assign.

Note: Routers that are unassigned cannot be added to any schedules that are based
on location.
f. Click Next.
3. Create a CI Discovery schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

953


<!-- page 954 -->
a. Complete the schedule using the fields in the list.

▪ Active: Enables or disables this schedule.
▪ Frequency: Select how often the schedule should run:
▪ Daily: Run Discovery at a specified time each day.
▪ Weekly: Run Discovery on one designated day of each week.
▪ Monthly: Run Discovery on one designated day of the month. If the designated day
doesn’t occur in the month, the schedule doesn’t run that month. For example, if you
designate day 30, the schedule doesn’t run in February.
▪ Once: Run Discovery once on the designated date and time.
▪ Periodically: Run Discovery every designated time. Use the Repeat Interval field to
define the time in days, hours, minutes and seconds. The first discovery runs at the
point in time defined in the Starting field. The subsequent discoveries run after each
Repeat Interval period passes.
▪ Create a separate schedule for each location: Automatically create schedules for any
router locations that you’ve configured. These schedules run on the day and time that you
specify, but in their own local time zone. Clear this check box to create a single schedule
for all your locations that runs in the user's local time zone. This option is only available if
you have configured router locations.
▪ Cancel Discovery if longer than: Terminate the Discovery process if it exceeds the
specified duration. Discovery might run for an excessive amount of time based on multiple
factors, including the size of your network.

Note: Any MID Server processing taking place when Discovery is canceled is
allowed to complete. However, all output records that MID Servers haven’t picked up
are canceled.
b. Click one of these options to finish the Quick Start:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

954


<!-- page 955 -->
▪ Finish and Run saves the schedule and runs a discovery immediately.
▪ Finish saves the schedule. Discovery runs at the interval you specified in the schedule.
Migrate from CAPI to Patterns
Migrate from Cloud API (CAPI)-based Cloud Discovery to Patterns-based Cloud Discovery. The
task requires supported instance and few plugins. Migration works for Amazon Web Services
(AWS) and Microsoft Azure. Administrator can perform this task after the initial instance is set up.

Before you begin

Ensure that your ServiceNow AI Platform has the following:
• The release version is Paris or later.
• The Discovery and Service Mapping Patterns (sn_itom_pattern) plugin.
Role required: discovery_admin

About this task

When the migration is triggered, the script disables the appropriate CAPI discovery steps for
the cloud environment to prevent them being triggered during cloud discovery. Also, the script
enables the appropriate cloud patterns for the environment that is used to run future cloud
discovery. After the migration, discovery uses the latest patterns instead of the legacy discovery
method, CAPI.

Note:
The CAPI-based discovery method is going to be deprecated in the future.

Procedure
1. Navigate to All > Pattern Designer > Migrate CPG to Pattern.
2. On the CAPI to Pattern Migration page, read the instructions and select Run Prerequisites
Check.
3. After the Prerequisite scan is passed, you can either choose as follows:
◦ Migrate All—Migrate both AWS and Azure together.
◦ Migrate AWS or Migrate Azure—Migrate each instance one at a time.
4. Select Migrate and confirm to proceed migration.

Note:
For any issues while migrating, see the troubleshooting steps documented in the CAPI to
Pattern Migration: Procedure for switching from CAPI-based Cloud Discovery to patternbased Cloud Discovery [KB0827153]
article in the Now Support Knowledge Base.
Discovery properties
Discovery properties allow you to control several aspects of the horizontal discovery process.
For information about the Discovery properties that Agent Client Collector uses, see Using pushbased Discovery and horizontal IP-based Discovery together.
Edit the following Discovery properties by navigating to Discovery Definition > Properties.
IP properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

955


<!-- page 956 -->
Field

Description

glide.discovery.exclude_ip_sync_classes

Defines CI classes whose IP addresses
shouldn’t be substituted if the address
returned by Discovery doesn’t match one of
the devices' NICs. Use a comma-separated
list to define multiple classes. By default, the
system uses the management IP of a load
balancer returned by Discovery in the CI
record, rather than substituting it for the IP
address of one of the load balancer's NICs.
• Type: string
• Default value: cmdb_ci_lb

glide.discovery.enforce_unique_ips

Enforce unique IP addresses: Ignores the
IP address after Discovery encounters
subsequent devices that use the same IP
address. Each time a computer, printer,
or network gear with a valid IP address is
discovered, any other devices with the same
IP address have their IP address field cleared.
If inactive, stores the IP address for each
device.
• Type: true | false
• Default value false

Network properties

Field

glide.discovery.bgp_router_disable

Description

BGP router exploration disable: Disables
running the SNMP – Routing probe or
pattern when discovering a router running
the BGP protocol. Normally such exploration
IS inactive because of the huge size of BGP
routing tables, and because generally such
routers are only operating at the edge of large
networks where further network discovery
would be irrelevant. This value could be set
to false if your organization only uses BGP
routers as edge routers between relatively
small networks (such as between buildings on
a single campus).
If you must populate the
[discovery_device_neighbors] table during
horizontal layer 2 discovery of the bgpenabled devices, set the BGP router
exploration disable property to No. Notice that
enabling this property can cause performance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

956


<!-- page 957 -->
Field

Description

issues including out-of-memory issues on the
MID Server.
• Type: true | false
• Default value true
glide.discovery.debug.network_discovery

Network discovery debugging: Enables
extensive logging of all Network Discovery
activities on the instance.
• Type: true | false
• Default value true
• Learn More: Discovery monitoring and issue
resolution

glide.discovery.discoverable.network.max.netmask.bits
Maximum netmask size for discoverable
networks (bits): The maximum number of
bits in a regular netmask for networks that
are discovered by Network Discovery. A
regular netmask is a netmask that can be
expressed in binary as a string of ones
followed by a string of zeroes. For example,
255.255.255.0 is regular and 255.255.255.64
is irregular. Regular networks are commonly
expressed like: 10.0.0.0/24, which means a
network address of 10.0.0.0 with a netmask
of 255.255.255.0. Larger bit numbers mean
networks with smaller numbers of addresses
in them. For example, the network 10.128.0.128/
30 has four addresses in it: one network
address (10.128.0.128), one broadcast address
(10.128.0.131), and two usable addresses
(10.128.0.129 and 10.128.0.130). Small networks
are commonly configured in network gear
to provide loopback addresses or networks
used strictly by point-to-point connections.
Since these sorts of networks generally
don't need to be discovered by Network
Discovery, it would be useful to filter them out.
By setting this property to a value of 1 through
32, you can limit the sizes of regular networks
that are discovered. Setting it to any other
value causes all networks to be discovered.
Irregular networks are always discovered. The
default value is 28, which means that regular
networks with 8 or fewer addresses cannot be
discovered.
• Type: integer
• Default value: 28

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

957


<!-- page 958 -->
Field

glide.discovery.network_owner_method

Description

Network router selection method: This
property controls the method used to decide
(during Network Discovery) which router
should be selected as the router to be
associated with a given IP Network. The
possible values are:
• First Router: The first router that discovers
the network is associated
• Last Router: The last router that discovers
the network is associated
• Most Networks: The router with the most
attached networks is associated
• Least Networks: The router with the least
attached networks is associated
• Type: choice list
• Default value: Most Networks
• Additional options: First Router, Last Router,
Least Networks

glide.discovery.physical_interface_types

Physical interface types: A comma-separated
list of interface types that are considered
physical for the purposes of network
discovery. If a router (or device capable of
routing) has an interface of this type, the
networks connected to that interface are
considered locally connected to that device.
The default interface types include Ethernet,
802.11, and Token Ring types. Interface type
numbers are defined in the SNMP MIB-2,
specifically in OID 1.3.6.1.2.1.2.2.1.3.
• Type: string
• Default value 6,117,9,71,209

glide.discovery.switch_interface_types

Switch interface types: A comma-separated
list of interface types that are considered.
Interface type numbers are defined in
the SNMP MIB-2, specifically in OID
1.3.6.1.2.1.2.2.1.3. Devices with any interface
types that do NOT appear in this list are
classified as routers, when they have routing.
A complete list of the interface type numbers
may be found on the IANA web site , in the
section "ifType definitions".
• Type: string
• Default value:
7,8,9,26,53,62,69,71,78,115,117,209

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

958


<!-- page 959 -->
Other Discovery properties

Field

Description

com.snc.use_external_credentials

Allows the use of external storage of
credentials.
• Type: true | false
• Default value: true

com.glide.processing.framework.max_thread_utilization_percentage
Enables you to modify the scale factor
for the discovery.sensor and
discovery.cloud.sensor queues.
Increasing the value allows you to increases
the scale factor, which subsequently
increases the number of worker threads per
app node.
• Type: integer
• Default value: 30
• Max value: 75

Note: This behavior only applies when

discovery.use.event.processing
is set to true.
com.glide.queue.discovery.cloud.sensors.processing_jobs.priority
Manages the background job's worker
priority for Cloud-based Discovery jobs when
using Event Framework. Increasing the value
decreases the priority.
• Type: integer
• Default value: 100

Note: This behavior only applies when

discovery.use.event.processing
is set to true.
com.glide.queue.discovery.sensors.processing_jobs.priority
Manages the background job's worker
priority for IP-based Discovery jobs when
using Event Framework. Increasing the value
decreases the priority.
• Type: integer
• Default value: 100

Note: This behavior only applies when

discovery.use.event.processing
is set to true.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

959


<!-- page 960 -->
Field

Description

discovery.event.pin.jobs

Enables event processors to execute on
specific nodes. When set to true, jobs are
assigned to nodes to distribute the work
evenly. If set to false, jobs are randomly
assigned, which may increase discovery
throughput.
• Type: true | false
• Default value: false

Note: This behavior only applies when

discovery.use.event.processing
is set to true.
discovery.event.separate.cloud.events

Reduces processing time by separating
the discovery.sensor and
discovery.cloud.sensor event
queues for cloud and IP-based discoveries.
When this property is set to false,
event processing will only use the
discovery.sensor queue.
• Type: true | false
• Default value: true

Note: This behavior only applies when

discovery.use.event.processing
is set to true.
discovery.use.event.processing

Enables Discovery to use the Event
Framework when processing jobs.
• Type: true | false
• Default value: false

glide.discovery.active_processes_filter

Active Processes Filter: Optimization for
application dependency mapping. Filters the
active processes returned by Discovery to
only those that have a match in the Process
Classification table.
• Type: true | false
• Default value: false

glide.discovery.adme.aggregation_interval

ADME - Aggregation interval (sec): How often
to aggregate instantaneous data into chunks
in seconds. It must be a minimum of 60
seconds and it must be a multiple of ADME
Sampling interval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

960


<!-- page 961 -->
Field

Description

• Type: integer
• Default value: 3600
glide.discovery.adme.base_dir_unix

ADME - Unix Base Dir: An existing directory
on the target UNIX machines to be used as a
workspace. Must be an absolute path to the
directory.
• Type: true | false
• Default value: false

mid.powershell.target_base_dir

Powershell - Target Base Dir: A network share
on the target Windows machines to be used
as a workspace.
• Type: string
• Default value: admin$\temp

glide.discovery.adme.max_total_samples

ADME - Max total samples: The limit of
samples being taken by the script. The
script will stop running after this number of
samples are taken.
• Type: integer
• Default value: 100

glide.discovery.adme.rolling_window_size

ADME - Rolling window size: How many
recently aggregated chunks to keep. An
aggregated chunk consists of ADME
Aggregation interval divided by ADME
Sampling interval samples. Only the newest
chunks are kept.
• Type: integer
• Default value: 24

glide.discovery.adme.sampling_interval

ADME - Sampling interval (sec): How often
to sample process and connection data in
seconds. Must be a minimum of 5 seconds.
• Type: integer
• Default Value: 120

glide.discovery.adm.update.applications

Controls if application CIs should be updated
based on running process status.
When Discovery rediscovers the server and
notices that a previously running process is
no longer active on cmdb_running_process
record, Absent is set to true. In addition,
on related application CI, install_status
is updated from installed to absent. On

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

961


<!-- page 962 -->
Field

Description

subsequent scans, if the running process
is back online on the related application CI,
install_status is reverted to installed.

Note: This behavior will only work
for application CIs that are discovered
using patterns.
• Type: true | false
• Default Value: true (for zbooted or new
activations)
glide.discovery.allow_loopback_adapters

Loopback adapter filter: Allows network
loopback adapters on SNMP devices to
be discovered instead of being filtered out
during Discovery. When this property is set
to true, network loopback addresses are
discovered and added to the CMDB.
• Type: true | false
• Default Value: false

glide.discovery.application_mapping

Application mapping: Enables the
application mapping portion of Discovery

Important: Disabling this property
disables the creation of relationships
between applications but doesn’t
disable the ADM probes and
sensors, nor does it prevent process
classification.
• Type: true | false
• Default value: true
• Learn More: Application Dependency
Mapping (ADM) for Discovery
glide.discovery.certs.cert_admin_user_id

Certificate Inventory and Management:
Holds the user ID of the user who will
be referenced in the certificate task and
incident, created via Scheduled Job.
• Type: string (40 characters maximum)
• Default value: Certificate Administrator

glide.discovery.certs.days_before_expiration_to_create_renewal_task
Certificate Inventory and Management:
Number of days before certificate expiration
that a renewal task should be created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

962


<!-- page 963 -->
Field

Description

• Type: integer
• Default value: 60
glide.discovery.certs.enable_incident_creation_for_expired_certificates
Certificate Inventory and Management:
Enables the Scheduled Job to create
the incidents for expired certificates, for
example, certificates whose validity is past
current system date or time. By default, this
property is enabled.
• Type: true | false
• Default value: true
glide.discovery.certs.enable_renewal_task_creation_for_discovered_certificates
Certificate Inventory and Management:
Enables renewal task creation for all
discovered certificates. By default, this
property is enabled.
• Type: true | false
• Default value: true
glide.discovery.certs.slack_channel_id

Certificate Inventory and Management:
Indicates the Slack channel ID where
certificate notifications are sent.
• Type: string
• Default value: empty

glide.discovery.count.use_optimized_counter

Executes optimized code for updating
discovery_status.started and
discovery_status.completed counts. If set
to true, business rules on discovery_status
won't execute when "started" or "completed"
is changed. There are two exceptions:
1. When a request to increment
starting counts gets triggered and
discovery_status.state value is still in
'Starting'.
2. When discovery_status.completed
changes to the same value as
discovery_status.started.
• Type: true | false
• Default value: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

963


<!-- page 964 -->
Field

Description

glide.discovery.debug.ci_identification

CI identification debugging: If set to
true, enables debug logging (into the CI
Identification Log) for CI Identification.
• Type: true | false
• Default value: false

glide.discovery.discover_aws_ec2_host_metadataWhen doing IP-based discovery against a
given host, also run probes that retrieve AWS
EC2 metadata.
• Type: true | false
• Default value: true
glide.discovery.discover_azure_host_metadata

When doing IP-based discovery against
a given host, also run probes that retrieve
Azure metadata.
• Type: true | false
• Default value: true

glide.discovery.discover_software

Discover software packages: Enable the
discovery of software packages.
• Type: true | false
• Default value: true
• Learn More: General software package
discovery

glide.discovery.domain.name.nbt

Set OS domain name by NBT or WMI. If set
to true, Windows domain name is set by NBT.
Otherwise it’s set by WMI.
• Type: true | false
• Default value: true

glide.discovery.enable_adme

ADME: Enable enhanced ADM probe. If
set to true, the ADM Enhanced probe is
triggered and only fall back to the ADM probe
as needed.
• Type: true | false
• Default value: false

glide.discovery.enable_file_tracking

Enable configuration file tracking as part of
the Pattern based Horizontal Discovery. If set
to true, the system enables you to specify
paths of configuration files for applications
that are discovered by patterns. You can
track and compare tracked configuration
files.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

964


<!-- page 965 -->
Field

Description

• Type: true | false
• Default value: true
glide.discovery.enable_mac_address_verification

Enables MAC address verification to
determine if a device has changed its IP
address during a discovery. If set to true,
Discovery passes the MAC address of a
device being discovered to the MID Server
so that probes can determine if the IP
address has changed while Discovery
is running. If the device has changed IP
addresses, then Discovery stops processing
that IP address and updates the Discovery
log with a warning message. Discovery
doesn’t stop processing other IP addresses.
• Type: true | false
• Default value: false
Open the System Properties [sys_properties]
table to find this property.

glide.discovery.enable.software_filter

Windows software filter: Enable Windows
software filtering for Discovery.
• Type: true | false
• Default value: true

glide.discovery.enable.software_simplify

Enables cleanup for software’s name
and version. If set to true, it removes any
appended version or commonly found
phrases from the name and removes
leading 0s in the version. If set to false, raw
data is persisted in the table. Use with the
glide.discovery.enable.software_simplify_sccm
property to avoid software data discrepancy
between Discovery and SCCM.
• Type: true | false
• Default value: true

Note: Once the property is set to

false, to disable the cleanup, duplicate
records are generated for a given
software. Name and Version are the
primary identifiers.
glide.discovery.enable.software_simplify_sccm

Enables cleanup for SCCM software.
If set to true, Discovery changes the
Name of the software to be the same
as SCCM. If set to false, Discovery

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

965


<!-- page 966 -->
Field

Description

doesn’t clean up the Name. Use with the
glide.discovery.enable.software_simplify
property to avoid software data discrepancy
between Discovery and SCCM.
• Type: true | false
• Default value: false
glide.discovery.enable_ssm

Enables AWS SSM-based discovery.
• Type: true | false
• Default value: false

glide.discovery.ssm.enable_windows

Enables AWS SSM-based discovery on
Windows machines as a high-level system
user that can run any command.
• Type: true | false
• Default value: false

glide.discovery.file_tracking.max_file_size

File Tracking: The maximum file size for
tracked configuration file content.
• Type: integer
• Default value: 500000

glide.discovery.file_tracking.max_files_per_ci

File Tracking: The maximum number of
tracked configuration files per CI.
• Type: integer
• Default value: 50

glide.discovery.file_tracking.change_limit_count

File Tracking: Number of changes allowed
on a tracked configuration file in the defined
time window.
• Type: integer
• Default value: 4

glide.discovery.file_tracking.change_limit_days

File Tracking: Time window (in days) that
limits the number of changes on a tracked
configuration file.
• Type: integer
• Default value: 7

glide.discovery.fqdn.regex

DNS Host Name And Domain Name Regex:
The default parsing of FQDN (Fully Qualified
Domain Name) is to pick the first name
separated by dots as the host name and
the rest of the names as the domain name.
For example, "machine1.testlab.service-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

966


<!-- page 967 -->
Field

Description

now.com" has host name of "machine1" and
domain name of "testlab.service-now.com".
The property allows regex with two capturing
groups with the first group representing the
host name and the second group the domain
name.
• Type: string
• Default value: ^([^.]+)\.((?:[^.]+\.)+[^.]+)$
glide.discovery.hostname.always_update

Always update host name. If set to true,
discovery always updates the host name
with the most recently discovered value
contingent upon the source being trusted.
Note that this may result in hand-entered
values being overwritten. This property is
only applicable for Probe-based Discovery.
• Type: true | false
• Default value: true

glide.discovery.hostname.case

Host name case. If Lower case is selected,
always translate the host name into lower
case. If Upper case is selected, always
translate the host name to upper case. If No
change is selected, leave the host name
intact. This primarily affects host names
discovered with NETBIOS, though some nonstandard DNS systems may also return some
or all of the name in upper case.
• Type: choice list
• Default value: Lower case
• Additional options: Upper case, No
change

glide.discovery.hostname.dns_nbt_trusted

DNS or NetBIOS is trusted host name
source: If set to true, trust the device name
discovered via DNS or NetBIOS. If checked,
CI's host name found via DNS or NBT is used.

Note: For Linux, AIX, and Solaris
patterns, do not use the DNS name as
the host name.
• Type: true | false
• Default value: true
glide.discovery.hostname.include_domain

Includes domain name in host name: If set
to true, include the domain name as part of
the host name. For example, "bosco.servicenow.com" instead of "bosco".

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

967


<!-- page 968 -->
Field

Description

Note: For AIX and Solaris patterns,
do not use the DNS name as the host
name.
• Type: true | false
• Default value: false
glide.discovery.hostname.snmp_trusted

SNMP is trusted host name source: If set to
true, trust the device name discovered via
SNMP. If checked, any device name found
via SNMP is used instead of the name found
by a reverse DNS lookup.
• Type: true | false
• Default value: false (For new Discovery
customers starting in Zurich, default value
is true.)

glide.discovery.hostname.ssh_trusted

SSH is trusted host name source: If set to
true, trust the device name discovered via
SSH. If checked, any device name found via
SSH is used instead of the name found by a
reverse DNS lookup.

Note: For Linux, AIX, and Solaris
patterns, do not use the DNS name as
the host name.
• Type: true | false
• Default value: false (For new Discovery
customers starting in Zurich, default value
is true.)
glide.discovery.hostname.wmi_trusted

WMI is trusted host name source: If set to
true, trust the device name discovered via
WMI. If checked, any device name found via
WMI is used instead of the name found by a
reverse DNS lookup.
• Type: true | false
• Default value: False (For new Discovery
customers starting in Zurich, default value
is true.)

glide.discovery.ip_based.active

This allows scans on all IP Address of the
same device in the same Discovery schedule
to go through full cycle. This is set to true
for probe-to-pattern migrated instances,
Discovery doesn’t attempt extra IP Address
detection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

968


<!-- page 969 -->
Field

Description

• Type: true | false
• Default value: true (For probe-to-pattern
migrated instances.)
glide.discovery.ip_service_affinity

IP service affinity: If set to true, IP service
affinity is enabled. IP service affinity allows
Discovery to remember the last port of the IP
address that was discovered.

Note: You must enable
ip_service_affinity records if you’re
using multiple SSH ports.
• Type: true | false
• Default value: False (For new Discovery
customers starting in Zurich, default value
is true.)
• Learn More: Check IP service affinity for
Discovery and Orchestration
glide.discovery.L3_mapping

Map servers and network devices to routers
and layer-3 switches If the "L3 mapping"
property is enabled, it maps servers and
network gears to its associated routers and
layer-3 switches.
• Type: true | false
• Default value: true
• Learn More: Network discovery

glide.discovery.log_message_length

Log Message Length: Limit the maximum
message length that is displayed in
Discovery Log table. A value of 0 or any
negative number disables this limit.
• Type: integer
• Default value: 200
• Learn More: Logs for horizontal discovery

glide.discovery.mark_esx_servers_as_absent

If this property is set to true, the ESX Servers
are marked as absent instead of retired if the
ESX server isn’t found in the payload.
• Type: true | false
• Default value: false

glide.discovery.max_concurrent_invocations_per_schedule
Maximum concurrent invocations per
schedule: Prevents an unbounded number
of invocations from inundating the system
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

969


<!-- page 970 -->
Field

Description

when a schedule takes longer than the time
between invocations. The value is an integer
defining the maximum number of automated
invocations of the same schedule that may
proceed at one time. If the limit has been
reached subsequent scheduled invocations
are canceled. The default value is 3. A value
of 0 or any negative number disables this
restriction.
• Type: integer
• Default value: 3

Note: This property does not apply
to schedules that have a 'Run after'
configuration set to 'Even if canceled'.
glide.discovery.network_discovery.functionality

Networks discovery functionality: The
Functionality used to discover networks.
Usually this should be SNMP only.
• Type: string
• Default value: SNMP only

glide.discovery.perf.metrics.enable_collection

Whether to collect Discovery performance
metrics.
• Type: true | false
• Default value: true

glide.discovery.perf.metrics.rollup_by_build

Whether to aggregate individual Discovery
performance metrics into a roll-up table that
groups by discovery build.
• Type: true | false
• Default value: true

glide.discovery.perf.metrics.rollup_by_status

Whether to aggregate individual Discovery
performance metrics into a roll-up table that
groups by discovery status.
• Type: true | false
• Default value: true

glide.discovery.perf.metrics.rollup_by_target

Whether to aggregate individual Discovery
performance metrics into a roll-up table that
groups by target IP address.
• Type: true | false
• Default value: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

970


<!-- page 971 -->
Field

Description

glide.discovery.populate_software_instance_table
If set to true, Discovery populates
these tables for software discovery:
cmdb_software_instance and
cmdb_sam_sw_install
• Type: true | false
• Default value: false
Use this property only if you were
using Software Asset Management
with Discovery in pre-Jakarta releases
and want to keep populating the
cmdb_software_instance table.
Open the System Properties [sys_properties]
table to find this property.
glide.discovery.roundingInterval.cpu

CPU speed rounding: Enter the number to
round the CPU speed to. The units are in
MHz.
• Type: integer
• Default value: 1

glide.discovery.roundingInterval.ram

Memory rounding: Enter the number to round
the computer RAM to. The units are in MB.
• Type: integer
• Default value: 1

glide.discovery.save_pattern_log

Controls whether pattern logs are saved
during discovery execution. This property
helps enhance performance by reducing
database interactions.
• Type: string
• Default value: true
If set to false, the system saves the pattern
log only when it is important to display
information (for example, when a failure
occurs). This further improves performance
by minimizing unnecessary saves.

Note: Regardless of the property
value, pattern logs are always saved if
the pattern status is failure.
glide.discovery.schedule_monitoring.dry_run

Determines whether the job will run in "dry
run" mode. If set to true, the job will only log
the decision in the Discovery Log but won't

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

971


<!-- page 972 -->
Field

Description

change the status's state, otherwise the job
will change the state of the status if needed.
• Type: true | false
• Default value false
glide.discovery.schedule_monitoring.schedule_types_to_monitor
Determines the type of statuses to track.
The value can be found on the "Discover"
attribute on the schedule.
• Type: string
• Default value CIs
glide.discovery.schedule_monitoring.stale_check_seconds
Determines the number in seconds in which
a status is considered stale. A stale status is
a status that was not updated for the last X
seconds.
• Type: integer
• Default value 1200 (20mins). If nothing is
configured, the default is 2x the interval of
the job.
glide.discovery.sensors.fire_ssh_probe

In case the VIPs (Load Balancer Virtual
Services) didn’t return as part of the SNMP
Probe payload, fire the SSH Probe. Select
this option to use the SSH port on the load
balancer, rather than just using SNMP.
• Type: true | false
• Default value true

glide.discovery.sensors.netapp_native_7mode

For 7-Mode NetApp storage servers, use
native discovery instead of SMI-S.

glide.discovery.sensors.netapp_native_cluster_mode
For Cluster Mode NetApp storage servers,
use native discovery instead of SMI-S.
glide.discovery.sensors.save_attachments

Save ECC queue attachments: The normal
behavior for discovery sensors is to delete
attachments to ECC queue entries upon
successful sensor processing. Setting this
property to true overrides this behavior, and
forces attachments to be preserved. This
would normally only be useful for debugging
purposes.
• Type: true | false
• Default value true

glide.discovery.shazzam_ranges_json

Use JSON for IP ranges in Shazzam: If set to
true, discovery encodes Shazzam's IP ranges
as JSON, dramatically reducing the payload
size.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

972


<!-- page 973 -->
Field

Description

• Type: true | false
• Default value: true
glide.discovery.shazzam_simplify_ranges

If set to true, Shazzam detects if an IP
is included in multiple ranges of the
same Discovery schedule and removes
the duplicate IP from all but one range.
Deduplication is limited to schedules with
a single behavior. Schedules with multiple
behaviors work, but duplicate IPs aren’t
removed.
• Type: true | false
• Default value true

glide.discovery.software_filter_keys

Windows software filters: If Windows
software filtering is enabled, when the name
of a discovered software contains any of the
comma-separated values, it’s filtered out.
• Type: string
• Default value: Language Pack, Hotfix
Security Update

glide.discovery.software_sccm_managed

Windows software is SCCM managed: If set
to true, Discovery won’t populate software for
computer CIs also managed by SCCM.
• Type: true | false
• Default value false
• Learn More: Discovery and SCCM
together

glide.discovery.use_cmdb_identifiers

CMDB Identifiers: If set to true, identification
and reconciliation will be handled by the
CMDB API instead of through the old
Discovery implementation.
• Type: true | false
• Default value: true

glide.discovery.use_probe_results_cache

Use probe results cache: If set to true, the
cache is checked to see if the results of the
probe must be processed by a sensor. It only
needs to be processed if the results have
changed from the last discovery run.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

973


<!-- page 974 -->
Field

Description

• Type: true | false
• Default value false
• Learn More: Create or modify a probe

Note: In previous releases, this

property was true by default. The value
in this property isn’t changed during an
upgrade to Kingston.
glide.discovery.virtual_interface_types

Virtual interface types: List of interface types
(comma-separated) that can be considered
"virtual" for the purposes of network
discovery. In other words, if a router (or
device capable of routing) has an interface
of this type, the networks connected to that
interface are considered virtually connected
to that device. The default interface types
include the propVirtual type. Interface type
numbers are defined in the SNMP MIB-2,
specifically in OID 1.3.6.1.2.1.2.2.1.3.
• Type: integer
• Default value: 53

glide.discovery.warn_minor_version

Warn on Minor Version Mismatch: If
set to true, warnings are logged when
minor_version mismatches are detected
during Discovery sensor processing.
• Type: true | false
• Default value: false

glide.ecc_agent.validated.override

An override for the ecc_agent validated field:
If set to true, ecc_agent records will always
be treated as valid.
• Type: true | false
• Default value: false
Navigate to System Properties > All
Properties to find this property.

glide.eccprobe.awsrestprobe.max_retries

Set the maximum number of times the AWS
request will be retried if a rate limit exceeded
error occurs. Maximum value is 10. Note that
retries use exponential backoff (2^x). Setting
negative values is equivalent to setting the
maximum value.
• Type: integer
• Default value: 4

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

974


<!-- page 975 -->
Field

Description

glide.eccprobe.awsrestprobe.max_wait

Set the maximum total amount of time
(seconds) the AWS request attempts to retry.
Maximum value: 2046 seconds. Setting
negative values is equivalent to setting the
maximum value.
• Type: integer
• Default value: 30

glide.eccprobe.max_queued_probes_per_run

Set the maximum number of probes a node
can pick up during a run.
• Type: integer
• Default value: 20

glide.eccprobe.node_agent_id

ECC queue entries with "mid.server.
${VALUE}" will be picked up and processed
by the nodes. This must be unique and not
the same as any MID server name.
• Type: string
• Default value: NODE_AGENT

sn_disco_firewall.default.rule.task.policy.owner.group
Firewall Audits and Reporting: Indicates the
name of the assignment group that owns or
is assigned to firewall rule tasks
• Type: string (40 characters maximum)
• Default value: Task Owner Group Name
sn_disco_firewall.default.rule.task.approval.group

Firewall Audits and Reporting: Indicates the
name of the approval group that is used to
approve the firewall rule tasks.
• Type: string (40 characters maximum)
• Default value: Approval Group Name

sn_disco_certmgmt.enable_csr_generation

Enables automatic CSR generation on the
Certificate Inventory and Management
Request New Certificate and Request New
Ceriticate (Automated) forms. This feature is
disabled by default for security.
• Type: true | false
• Default value: false

sn_disco_certmgmt.private_key_size

Changes the private key size when using
automatic CSR generation on the Certificate
Inventory and Management Request New

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

975


<!-- page 976 -->
Field

Description

Certificate and Request New Ceriticate
(Automated) forms. This property accepts
values: 512 | 1024 | 2048 | 4096.
• Type: integer
• Default value: 2048
sn_disco_workspace.visibility_diagnostic_utility.enabled
Set to true to enable the Virtual Agent on the
Discovery Admin Workspace Diagnostics
page.
• Type: true | false
• Default value: false

Discovery IP address configuration
Use one or more of these methods in any combination to define the network or network segment
for Discovery to query. You can include or exclude specific IP ranges from your query.

Note: If you do not know the IP addresses in the network, run Network discovery first to
determine the IP networks. Then, convert the IP networks into IP address range sets.
If you have integrations which populate sys_metadata and sys_update_xml tables,
make sure to clear the update and metadata records after the discovery_range_item or
discovery_range_item_ip import occurs.
IPv6 addresses are not supported for IP address range or IP network.
There are three types of IP collections:

IP
collection Description
type

IP
address
list
IP
address
range

Use IP address lists to add individual addresses to query. These addresses are not
included in any existing IP range or IP network. You can enter the IP address of the
device or a host name (DNS name). If you enter a host name, it must be mapped to
an IP address .
You can define arbitrary ranges of IP addresses to query. This process is a good way
to include selected segments of a network or subnet. However, Discovery has no
way of knowing if the IP range includes addresses for private networks or broadcast
addresses, and scans all the addresses in the range. If the network and broadcast
addresses are included, then the results are inaccurate. Discoveries configured to
detect IP networks are more accurate than discoveries configured for IP address
ranges. Only those IP addresses in your range that are reserved for manageable
devices on the public network should be included.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

976


<!-- page 977 -->
IP
collection Description
type

Note: To avoid performance issues, limit Discovery schedules to a maximum
range of /16 (approximately 65,536 IPs). For better performance, consider
splitting the range into smaller segments.
IP
network

You can also scan an entire IP network. An IP network includes the range of available
IP addresses in that network. The scan also includes the network address (the
lowest address in the range) and the broadcast address (the highest address in the
range). After you run network discovery, convert the IP networks that were found into
range setsfor use in discovering other devices.
IP networks are represented in CIDR notation. Examples of CIDR notation include:
• 192.168.0.0/24
• 10.11.128.192/26
Discovery will not scan the network or broadcast addresses for a network. The
equivalent ranges for the two networks are:
• 192.168.0.1 – 192.168.254
• 10.11.128.193 – 10.11.128.254
To avoid introducing errors from broadcast addresses, configure Discovery
to exclude them by using IP network definitions in CIDR notation. Discovery
automatically avoids scanning network and broadcast addresses when using IP
networks.
Including broadcast addresses in Discovery scans can lead to significant errors
in the data, such as redundant or invalid device entries. By excluding broadcast
addresses, Discovery helps prevent these errors.
This built-in control makes IP networks the best method of defining which IP address
ranges to query.

IP address selection properties
You can use system properties to control the selection of IP address for specified CI classes.
Use these properties to determine if the system should replace the IP address returned by
Discovery in a device's CI record if the address does not match that of a network interface (NIC)
on the device. This is important for the discovery of devices with management IP addresses that
differ from IP addresses associated with one or more NICs on the device. Because a device's
management IP is used in the Discovery schedule for that device, this is the address that
Discovery returns. Use these properties to determine which IP address to use for CIs of any
class.

Field

Description

glide.discovery.exclude_ip_sync_classes

Defines CI classes whose IP addresses
shouldn’t be substituted if the address
returned by Discovery doesn’t match one of
the devices' NICs. Use a comma-separated
list to define multiple classes. By default, the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

977


<!-- page 978 -->
Field

Description

system uses the management IP of a load
balancer returned by Discovery in the CI
record, rather than substituting it for the IP
address of one of the load balancer's NICs.
• Type: string
• Default value: cmdb_ci_lb
glide.discovery.enforce_unique_ips

Enforce unique IP addresses: Ignores the
IP address after Discovery encounters
subsequent devices that use the same IP
address. Each time a computer, printer,
or network gear with a valid IP address is
discovered, any other devices with the same
IP address have their IP address field cleared.
If inactive, stores the IP address for each
device.
• Type: true | false
• Default value false

Create a Quick IP range for a Discovery schedule
Quick ranges allow administrators to define IP addresses to scan in a single comma-delimited
string without creating separate records.

Before you begin

Only MID Servers that are up and validated are used with quick ranges. The MID Servers must
specify the Discovery application (or ALL applications) and have IP ranges configured if you use
the auto-select feature on the Discovery schedule.
Role required: discovery_admin

About this task

You can enter IP addresses in one of the following formats:
• An IP range defined by a slash and the number of bits in the subnetwork. For example, the
string 10.10.10.0/24 scans 24 bits of IP addresses from 10.10.10.0 to 10.10.10.254.
• An IP range defined by a dash. For example, the string 10.10.11.0-10.10.11.165 scans the IP
addresses from 10.10.11.0 to 10.10.11.165.
• A comma-separated list of specific IP addresses. For example, the string 10.0.2.1,10.0.2.15 scans
the IP addresses 10.0.2.1 and 110.0.2.15.

Note: IPv6 address ranges and networks are not supported and will be ignored. Any other
entries that cannot be interpreted will also be ignored.

Procedure
1. Click the Quick Ranges related link on the Discovery Schedule form.
2. Enter the IP ranges and specific IP addresses to scan.
3. Click Make Ranges.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

978


<!-- page 979 -->
Note: The Quick Range interface is for entering IP addresses only and cannot be used
to edit IP addresses that have already been submitted.
Entering a quick range from a Discovery schedule

The instance automatically displays the entries in the proper format.
4. For changes to IP address ranges, select the IP address records in the Discovery Range Sets
related list.

Note: Overriding behavior is not applicable on Discovery range sets.
Import IP ranges into Discovery schedules with import sets
One method of entering large numbers of IP networks into Discovery schedules is by using
import sets.

Before you begin

Role required: discovery_admin

About this task

Common groups of IP addresses, known as ranges can be used in Advanced Discovery
schedules.

Note: You can also use IPAM integration for entering large numbers of IP networks into
Discovery schedules. See IPAM Integration for more information.
Use a data source that can be mapped. Include these fields:
• Start IP: the first IP address in the range (inclusive).
• End IP: the last IP address in the range (inclusive).

Procedure
1. Navigate to All > System Import Sets > Load Data.
2. Identify the file or data source that contains the desired information.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

979


<!-- page 980 -->
3. Create a table name, such as ipnetworks.
4. Select Upload an Excel file and browse to the source file.
5. Click Go to import the file.
Data Source

6. Navigate to System Import Sets > Create Transform Map and map the items in the Excel
spreadsheet to the fields of the CMDB in the target table IP Range [ip_address_range]
table.
7. Give the Transform Map a unique and descriptive name.
8. Submit the form, and then click New in the Field Maps Related List.
9. Map the fields from the Excel spreadsheet to the fields in the IP Range
[ip_address_range] table.
The fields you need values for are the Start IP and End IP addresses.
10. Click the Mapping Assist Related Link and use the lists that appear to resolve the fields
between the table and the data source (the Excel spreadsheet in this example).
11. Click Save.
The view returns to the Table Transform Map form.
12. Click Transform in the Related Links to move the data into the proper fields in the IP Range
[ip_address_range] table.
The imported IP ranges are available now for use in any advanced Discovery schedule.
Exclude IP ranges from a Discovery range set
You can specify a range of IP addresses that you want to exclude from your Discovery query.

Before you begin

Before a Discovery schedule is run, the number of excluded IP addresses is totaled. If there are
more than 500,000 excluded IP addresses, the Discovery is cancelled and an error is logged
through DiscoveryLogger regarding its status.

Note: Exclude IPs is not supported for IPv6 ranges or subnets.
Role required: discovery_admin or agent_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

980


<!-- page 981 -->
Procedure
1. Navigate to All > Discovery > Discovery Range Sets.
2. Select one of the range sets.
3. Select one of the types from the Discovery IP ranges related list.
4. Click New from the Discovery Range Item Excludes related list.
5. Choose one of the following options from the Type drop-down list.
Option

Description

Enables you to exclude non-consecutive IP
addresses by listing individual IP addresses
in the Discovery Range Item IPs related list.

Note: After you select IP Address List

IP Address List

as the Type, you must right-click the
header and select Save before you can
begin adding IPs to the related list.
IP Address Range

Enables you to exclude a range of IPs by pro­
viding the starting and ending IP addresses.

IP Network

Enables you to exclude an IP network by pro­
viding the Network IP and Network mask.

6. Click Submit.
Use Global Excludes List for IP addresses and ranges
Global Excludes List allows administrators to define global IP exclusions lists that work across
Discovery schedules that discover configuration items, IP addresses, or networks. The list helps
to prevent access to sensitive IPs as it blocks discovery when the IP is on the exclusion list. This
feature is only applicable for Horizontal Discovery starting in the Rome release.

Before you begin

Global IP exclude ranges are active by default. To deactivate, uncheck the Active check box. This
makes the records inactive and the entries aren't excluded from Discovery. You can add a single
IP or an IP range to the Global Excludes list. The IP exclusion list [ip_exclusion] table references
existing IP collection tables and supports three types of collections: IP address list, IP address
subnet, and IP address range.

Note: Use of Global Excludes List for IP addresses and ranges is not supported for IPv6
addresses. While the UI still allows users to add IPv6 addresses to the list, these addresses
get ignored and are skipped from the exclusion process during Discovery.
Role required: discovery_admin or agent_admin role

Procedure
1. Navigate to All > Global IP Exclusion > IP Exclusion.
2. Click New to create a new IP exclusion record.
3. In the IP Excluded box, click the search icon to bring up the IP collections window.
4. Select one of the IP collections listed or click New to bring up the IP Collections wizard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

981


<!-- page 982 -->
5. From the IP Collections wizard, select one of the three types of collections you want to create
and fill in the necessary details.
For each type, you can add a description on why you want to exclude particular IPs or which
IPs are excluded.
◦ IP Address Range
Fill in the details and then click Submit. This new range is added to the IP Exclusion list.
◦ IP Address Subnet
Fill in the details and then click Submit. This new subnet is added to the IP Exclusion list.
◦ IP Address List
Enter the name and then Save. The related list then shows at the bottom of the page. From
the collections list, pick an existing item or click New to create a new list. Click Update.
Remember the name you created. This new name is added to the collection list. Select this
name from the list and click Submit again. This address list is added to the IP Exclusion list.
6. Navigate to Discovery > Discovery Schedules and select a schedule.
7. If the schedule is for discovering configuration items, IP addresses, or networks, you can view
the Global IP Exclusion tab at the bottom of the page.

Result

When the scheduled Discovery runs, it skips the discovery of all IPs that are part of the active
Global IP Exclusion record. All the rest of the IPs should be discovered.

Note: Overriding behavior is not applicable when the Discovery schedule has active
Global IP exclusions.
If you try to run a Quick Discovery that includes an excluded IP, you will see an error message
and Discovery will not be triggered.
Domain Separation and Discovery
Domain separation is supported in Discovery. Domain separation enables you to separate data,
processes, and administrative tasks into logical groupings called domains. You can control
several aspects of this separation, including which users can see and access data.

Support level: Standard
• Includes all aspects of Basic level support.
• Application properties are domain-aware as needed.
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must configure the minimum viable product (MVP) business logic and data
parameters per tenant as expected for the specific application.
Sample use case: An Admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

Domain separation overview
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

982


<!-- page 983 -->
Service Providers (SPs) use domain separation to segregate data for each customer. Users in
a given domain have visibility only to the data in their own domains or in child domains. SPs
typically control the top-level domain, which gives them visibility to data associated with all
domains. Given that Discovery domain separation support is considered Standard there is no
delegated administration to the child domains. The SPs must retain administrative control.

How domain separation works in Discovery
Multiple domains can be supported by a single MID Server. In releases prior to Kingston, each
MID Server could support only a single domain. In newer releases, segregating domains by
MID Server is useful when the domain is large, or when the domain's resources are held in a
customer's data center rather than the SP's. For Discovery on MID Servers supporting a single
domain, the discovered CIs are assigned to the domain of the MID User used to authenticated
against the ServiceNow instance. In multi-domain MID Servers, the discovered CIs are assigned
to the domain of the user who created the Discovery schedule.
Discovery implements data domain separation through the MID Server by impersonating the MID
Server user during sensor processing. Discovery uses the domain, that the MID Server user is
in, to determine which domain the discovered data should be put into. Discovery configuration
information, including classifiers, identifiers, probes, and sensors, is not domain separated.
Service providers generally use IP-based Discovery. In cases where the SP controls the network
addressing, they divide the address space among their customers to ensure that each domain
has a distinct IP address space. The SP assigns one or more subnets to a customer or domain
and creates Discovery schedules for those subnets.
If the SP is remotely managing their customer's data center, there will often be some overlap
between address spaces different customers use. In these cases, the SP can use network
address translation (NAT) on the IP range and run a Discovery schedule.
Once the CIs are assigned to the correct domain, the visibility and read/write access control are
provided by the platform through the domain hierarchy. Schedules are visible to users in their
respective domains. Cross-domain schedule visibility is not possible, except for the SP who
controls the parent domain and has visibility to all domains.

Domain separation for MID Server files
You can create versions of these specific MID Server policy records that only a MID Server from
the same domain can use. This process separation is supported for records in tables that extend
MID Server Synchronized Files [ecc_agent_sync_file]:
• MID Server MIB File [ecc_agent_mib]
• MID Server JAR File [ecc_agent_jar]
• MID Server Script File [ecc_agent_script_files]
By default, all records in these tables are members of the global domain. A user can override the
default global domain and create a version of these policies for use in the user's own domain.

Note: Attachments on MIB or JAR file records might not appear as they did in a non-

domain separated environment. The attachments do not appear because the Attachments
[sys_attachment] table is data separated. When data is separated between domains, a
record in a child domain cannot access records in a parent domain.
See MID Server domain separation
the MID Server.

for instructions on setting up domain separation through

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

983


<!-- page 984 -->
Domain-separated tables
Records in all tables that extend the Base Configuration Item [cmdb] table can be domainseparated. In addition, records in these tables can also be domain-separated:
• Serial Number [cmdb_serial_number]
• TCP Connection [cmdb_tcp]
• Fibre Channel Initiator [cmdb_fc_initiator]
• Fibre Channel Targets [cmdb_fc_target]
• IP Address to DNS Name [cmdb_ip_address_dns_name]
• Service [cmdb_ip_service_ci]
• KVM Virtual Device [cmdb_kvm_device]
• Load Balancer Service VLAN [cmdb_lb_service_vlan]
• Load Balancer VLAN Interface [cmdb_lb_vlan_interface]
• Switch Port [cmdb_switch_port]
Related topics
Domain separation for service providers
Domain separation recommended practices for service providers
Discovery behaviors
Configure domain-separated Discovery schedules
Configuring the "Run as" user in a Discovery schedule directs discovered Configuration Items
(CIs) to the correct domain and maintains data isolation.

Before you begin

Role required: discovery_admin

About this task

In domain-separated environments, the domain of the user who creates a Discovery schedule
typically determines where the discovered data is stored. Assigning a "Run as" user enables
the discovery process to run under a different user’s domain and permissions, enabling
administrators to control which domain stores the data and what resources the discovery
process can access, regardless of who created the schedule.

Note: This procedure applies only to existing Discovery schedules. For information about
creating a Discovery schedule, see Schedule a horizontal discovery.

Procedure
1. Navigate to All > Discovery > Discovery Schedules.
2. In the Name field, enter the name of the schedule you want to configure.
3. Double-click the Run as field to perform inline editing.
By default, the Run as column doesn’t display in the Discovery Schedules
[discovery_schedule] table. For information about customizing columns in tables, see
Personalize a list .
4. Enter the name of the user that you want the schedule to run as.
5. Select the check mark (

) icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

984


<!-- page 985 -->
Microsoft Just Enough Administration (JEA) for Discovery
Using Microsoft JEA with Discovery improves security by forcing the MID Server to run remote
Windows commands through a constrained endpoint, which validates commands on the target
before execution.
Microsoft JEA enables role-based administration through PowerShell Remoting, which uses
Windows Remote Management (WinRM) to manage communication and authentication.
This framework provides a secure and reliable method for managing computers that use the
HTTP protocol. PowerShell Remoting uses two total ports (5985, 5986) for HTTP and HTTPS
which is easier to secure than the multiple ports used in WMI dynamic port mapping. For more
information about Microsoft JEA, see Just Enough Administration .

Requirements for Discovery with JEA
• A ServiceNow instance running on the Rome release or later.
• The MID Server and target server must be part of a Windows domain.
• The JEA credentials with non-administrator rights must be domain level credentials.
• PowerShell 5.0 or Windows Management Framework 5.1 must be installed on the target
Windows machines.
• PowerShell Remoting must be enabled on the target Windows machines.

Note: For security enhancement, starting from Rome there’s a new profile called JEA v2.

Microsoft doesn’t recommend specifying any other language mode than NoLanguage in
the JEA profile. JEA v2 explicitly sets the session type to RestrictedRemoteServer and
the language mode to NoLanguage to help prevent users running arbitrary scripts at the
endpoint and bypassing security restrictions. ServiceNow no longer supports the existing
sample profile in KB0782125. Follow the instructions in KB0965705
to set up and deploy
JEA v2 profiles.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

985


<!-- page 986 -->
JEA Profiles
Discovery with JEA requires profiles composed of a PowerShell Sessions Configuration and one
or more PowerShell Role Capabilities files. You can create multiple PowerShell Role Capability
files and multiple user groups to assign the roles to different groups as necessary. A sample
profile is provided in KB0965705
as a reference implementation and to serve as a starting
point. The configuration file in the KB supports all out-of-the-box horizontal Windows patterns
at the time that it was created. ServiceNow isn’t responsible for the JEA profile deployment and
setup on remote machines.
Microsoft has detailed documentation at the following links:
• JEA Role Capabilities
• JEA Session Configuration

Basic Discovery with the sample JEA Profile
The sample JEA profile provided in KB0965705
was configured to discover many basic
configuration items (CIs) and attributes. The profile can be modified and should only serve as a
baseline for Discovery with JEA.
Basic Discovery finds the following key attributes of Windows servers (cmdb_ci_win_server) or
Windows desktops (cmdb_ci_computer):
• Hostname
• DNS Name
• Serial Number
• Operating System
• OS Version
• OS Service Pack
• Disk Space
• RAM
• CPU Core Count
• CPU Count
• CPU Manufacturer
• CPU Type
It includes the following CIs:
• Network Adaptors (cmdb_ci_network_adapter)
• File System (cmdb_ci_file_system)
• Storage Devices (cmdb_ci_disk)
• Software Installed (cmdb_software_instance)
• Running Processes (cmdb_running_process)
• Memory Modules (cmdb_ci_memory_module)
• Serial Numbers (cmdb_serial_numbers)
• TCP/IP Connections (cmdb_tcp)
• CI IPs (cmdb_ci_ip_address)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

986


<!-- page 987 -->
• DNS Names for CIs (cmdb_ci_dns_name)
• Windows Clusters (cmdb_ci_win_cluster, cmdb_ci_win_cluster_node,
cmdb_ci_win_cluster_resource)
• Tracked Configuration Files (cmdb_ci_config_file_tracked)
The following application CIs can also be discovered:
• MSSQL DB on Windows (cmdb_ci_db_mssql_instance)
• MySQL DB on Windows (cmdb_ci_db_mysql_instance)
• Oracle DB on Windows (cmdb_ci_db_ora_instance)
• WebSphere on Windows (cmdb_ci_app_server_websphere)
The following probes and patterns are used for Discovery with the sample profile:
• Windows - Classify (probe)
• Windows OS - Servers (pattern)
• Windows OS - Desktops (pattern)
• Windows - Installed Software (probe)
• Windows - ADM (multiprobe)
• MySQL server On Windows (pattern)
• MS SQL DB On Windows (pattern)
• Oracle DB on Windows (pattern)
• Windows - WebSphere - Cell (probe)
• Windows - WebSphere - Web Applications (probe)
• Windows - WebSphere - Web Services (probe)
Prepare the instance for Discovery with JEA
®

To configure the ServiceNow instance for Discovery with Microsoft Just Enough Administration
(JEA), define the Windows credential with the domain name and set the MID Server configuration
parameters appropriately.

Before you begin

Role required: discovery_admin or admin

Procedure
1. Navigate to All > Discovery > Credentials and click New.
2. Select Windows Credentials from the list of available credential types.
3. Create the credentials for the non-administrator, using this format for the User name: domain
\user name.
4. Submit the record.
5. Navigate to All > MID Server > Servers.
6. Select a MID Server to configure from the list of MID Servers.
7. Select the Configuration Parameters related list.
8. Set the following MID Server config parameters

as indicated:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

987


<!-- page 988 -->
a. mid.windows.management_protocol: This parameter is required for Discovery with JEA.
Its default value is WMI, but it must be set to WinRM on MID Servers using Discovery with
JEA.
b. mid.powershell.jea.endpoint: This parameter is required for Discovery with JEA.
This parameter specifies a JEA endpoint name which the MID Server connects to on remote
hosts. The endpoint name is created when registering a configuration file, and should not
be confused with the name of the configuration file itself. The setting affects the entire MID
Server, including any WinRM remote sessions created by Discovery on the MID Server which
go to that endpoint.
For example, the PowerShell command Register-PSConfiguration -name JEA_DISCO_V2
-path <session_configuration_file> sets the endpoint name to JEA_DISCO_V2. In that case,
mid.powershell.jea.endpoint must be updated to JEA_DISCO_V2.
9. Optional: Use the following MID Server property
issues:

and System property

to troubleshoot

a. mid.probe.collect_debug_info: This is an optional MID Server property to collect debug
information.
When this property is set to true, the MID Server collects credential debug info and puts it in
the payload of ECC input message. It doesn't affect how JEA works.
b. glide.discovery.log_debug_info: This is an optional system property to collect debug
information.
When this property is set to true, the discovery sensor extracts the debug info from ECC
input message and writes it to the discovery log table, so the debug information is visible
when inspecting discovery status.
SNMP support for Discovery
Discovery supports SNMP versions 1, 2c, and 3. If you have an active SNMP v3 credential, valid
options for SNMP version are v3 or All. If you have an active SNMP v1 or v2 credential (community
string), valid options for SNMP version are v1, v2c, or All. Default is All.
MID Servers support all SNMP protocol versions by default. You can set a MID Server to support
only specific versions of SNMP.
For SNMP credentials information, see SNMP credentials

.

SNMP probe parameters can be used while discovering an SNMP device. See SNMP probe
parameters for more information.
Add an SNMPv3 user credential in Discovery
Set up your credentials so Discovery can access SNMPv3 targets.

Before you begin

Role required: admin

About this task

A MID Server parameter is also available to control SNMP versions. See MID Server
parameters .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

988


<!-- page 989 -->
Procedure
1. Navigate to All > Discovery > Credentials.
2. Click New.
3. Click SNMPv3 Credentials.
4. Fill in the form, using the fields in the table.
SNMPv3 credentials form

SNMPv3 credential fields
Field

Input value

Name

Unique and descriptive name for this credential. For example, you
might call it SNMP Community Atlanta.

Active

Enable or disable these credentials for use.

Applies to

Select whether to apply these credentials to All MID servers in
your network, or to one or more Specific MID servers. Specify the
MID Servers that should use these credentials in the MID servers
field.

MID servers

Select one or more MID Servers from the list of available MID
Servers. The credentials configured in this record are available to
the MID Servers in this list. This field is available only when you
select Specific MID servers from the Applies to field.

Order

Order (sequence) in which Discovery tries this credential as it
attempts to log on to devices. The smaller the number, the higher
in the list this credential appears. Establish credential order
when using large numbers of credentials or when security locks
out users after three failed login attempts. If all the credentials
have the same order number (or none), the instance tries the
credentials in a random order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

989


<!-- page 990 -->
Field

Input value

User name

Enter the SNMP user name. Avoid leading or trailing spaces in
user names. A warning appears if the platform detects leading or
trailing spaces in the user name.

Authentication protocol

Select the authentication type to use for this credential. The
choices are:
◦ MD5
◦ SHA-1
◦ SHA-224
◦ SHA-256
◦ SHA-384
◦ SHA-512

Authentication Key

Enter the authentication key to use for this credential.

Privacy protocol

Select the encryption protocol for this credential. The choices are:
◦ 3DES
◦ AES128
◦ AES192
◦ AES256
◦ DES

Privacy key

Enter the key associated with the selected privacy protocol.

Credential ID

Enter the unique key configured for external credentials in the
JAR file uploaded to the MID Server for an external credential
provider. The Credential ID field has a limit of 40 characters.
This field is only visible when the External credential store check
box is selected.

Privacy Credential ID

Enter the privacy account key configured for SNMPv3 credentials
in CyberArk. If you are using a privacy protocol in CyberArk, this
field must have the same value as the Name field for the CyberArk
SNMPv3 Privacy Account. This field is only visible for SNMPv3
when you select CyberArk from the Credential Store Type field.
If you are not using a privacy key for CyberArk, leave this field
empty.

Credential alias

Allow workflow creators to assign individual credentials to
any activity in an Orchestration workflow or assign different
credentials to each occurrence of the same activity type in an
Orchestration workflow.

External credential store

Select this check box to use an external credential storage
system. When external storage is enabled, the Credential ID field
appears. External credential storage is only available when the
External Credential Storage plugin
is activated and the External
Storage view is selected.

Credential Store Type

Select the external storage provider. Select CyberArk only if
you are using a CyberArk SNMPv3 privacy key. The Privacy
Credential ID field appears to allow entry of the key.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

990


<!-- page 991 -->
Field

Input value

Use Context

Select this check box to add a context value for this credential.
This field is visible in the Discovery view. Contexts are not
currently supported for external credential storage.

Note: A context is a collection of management information
accessed by an SNMPv3 credential that references a
specific OID. Contexts are sometimes referenced to collect
information about the device that cannot be accessed by
the normal credential. A context can be provided by the
manufacturer or configured separately. If you have multiple
SNMPv3 credentials with the same user name and keys, but
some of your devices need a context and some do not, then
you will need to create separate records for each device.
Context Name

Enter the context name value for this credential. This should only
be used if you have devices that require this value for full access.
This field is visible when the Use Context check box is selected.

SNMPv3 security options
Option

Fields to configure

noAuthNoPriv security

◦ Authentication protocol: None
◦ Privacy protocol: None
◦ Authentication Key: Leave blank
◦ Privacy Key: Leave blank

authNoPriv security

◦ Authentication protocol: Set
◦ Privacy protocol: Leave blank
◦ Authentication Key: Set
◦ Privacy Key: Leave blank

authPriv

◦ Authentication protocol: Set
◦ Privacy protocol: Set
◦ Authentication Key: Set
◦ Privacy Key: Set

Set SNMP version on the Discovery schedule
You must also set the SNMP version after choosing the appropriate credential.

Before you begin

Role required: admin

About this task

A MID Server parameter is also available to control SNMP versions. See MID Server
parameters .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

991


<!-- page 992 -->
Procedure
1. Navigate to All > Discovery > Discovery schedules> your Discovery schedule.
2. In the Use SNMP Version field, select the appropriate version.
The default value is ALL. You can change this to v1,v2c, or v3.
Discovery and SCCM together
Use these guidelines to avoid common issues when you use Discovery and System Center
Configuration Manager (SCCM) together.
You must decide if you will use Asset Intelligence (AI) or non-AI software data sources. Because
the software correlation data is tracked differently for each of these data sources, you should
avoid switching back and forth between the two. If you must switch between data sources,
remove all the software installation records imported by SCCM before the switch occurs.
When Software Asset Management is not enabled, software installation records are
stored in the Software Instance [cmdb_software_instance] table. When Software Asset
Management is enabled, software installation records are stored in the Software Installation
[cmdb_sam_sw_install] table.

Note: If records are not removed before the switch, duplicate records may exist. In the
event that AI and non-AI data becomes mixed, clear the Software Installation table.

Overview of Service Graph connector for Microsoft SCCM
Use the Service Graph connector for Microsoft SCCM to pull data from SCCM into your
ServiceNow instance. See Service Graph connector for Microsoft SCCM
for more details.

Note: If you upgrade your instance to a version of the ServiceNow AI Platform that does
not provide support for your version of SCCM, you can continue to use that version.
However, all new instances require the use of a supported SCCM version.

Upgrading to a new version
The ServiceNow SCCM integrations are self-contained and can exist independently. They
each use their own import set tables, data sources and transform maps. However, all SCCM
integrations will transform data into the same tables within the ServiceNow CMDB. To avoid the
data being overwritten by another source:
• Use one SCCM integration and disable all other SCCM scheduled imports.
• Perform a full import
to clear the cmdb_software_instance table, the cmdb_sam_sw_install
table, and other tables of old SCCM data.
Collect software data with either SCCM or Discovery
When Discovery and SCCM are both enabled on a system, the software records found through
both tools could overwrite each other.

Before you begin

Role required: admin

About this task

To determine how software data is collected, configure the
glide.discovery.software_sccm_managed property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

992


<!-- page 993 -->
Procedure
1. Navigate to All > Discovery Definition > Properties.
2. Set the Windows software is SCCM managed property
(glide.discovery.software_sccm_managed) appropriately.
If this property is set to Yes, software for computer CIs is populated in the CMDB by SCCM.
An internal process determines that the computer is managed by SCCM, and Discovery does
not populate the software records for Windows software data. The following information level
message is written to the Discovery log file.
Skipping software population because the CI is managed by SCCM
If the check box is cleared, the property is set to No, and the system manages software data
with Windows.
3. Click Save.

Important: If SCCM Integration is active before Discovery is enabled and the property
is enabled, Discovery ignores the population of software for any CIs that are also
imported through SCCM. If Discovery is enabled before the SCCM Integration, it is
possible for software installation data from both sources to be mixed.

What to do next

Use these Discovery properties to avoid software data discrepancy between
Discovery and SCCM: glide.discovery.enable.software_simplify and
glide.discovery.enable.software_simplify_sccm. See Discovery properties for
more information.
Configure for VMware Discovery
Configure for VMware Discovery by setting up alternate port for vCenter and configuring your
ESXi resource pools.
Alternative ports and resource pools aren't managed by ServiceNow ServiceNow directly.
They're set up and managed by your security teams and VMware admins. Discovery captures
information related to VMware use.
In many environments, security teams block the standard ports, and vCenter/ESXi services run
on custom ports. You must configure Discovery for these alternate ports, or it will fail. For more
information, see Configure an alternate port for vCenter and Configure ESXi resource pools

Note: Applications that access VMware cloud resources need access to VMware
credentials. For more infomration, see VMware credentials

.

Configure an alternate port for vCenter
Specify an alternate port for the VMware - vCenter datacenters probe.

Before you begin

Role required: Discovery admin or VMware admin responsible for vCenter and ESXi hosts

About this task

To establish proper connectivity for Discovery to vCenter, alternate ports are required if default
ports are unavailable or customized.
By default, vCenter discovery initiates on these ports:
• vmapp6_https: 9443
• vmapp_https: 5480
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

993


<!-- page 994 -->
When these ports are detected, the VMWare - vCenter datacenters probe is triggered.

Procedure
1. Hard code the port from your ServiceNow instance.
a. Navigate to All > Configuration > VMware > vCenter.
b. Select the specific instance from the list of instances.
c. Edit the URL field and include the port.
For example, https://10.0.0.1:444
d. Select Update.
2. Specify an alternate port number for vCenter in the VMWare - vCenter datacenters probe.
a. Navigate to All > Discovery Definition > Probes.
b. Open the VMware - vCenter Datacenters probe record.
c. In the Probe Parameters related list, select New.
d. In the Name field of the Probe parameter record, enter vcenter_port.
e. In the Value field, enter your alternate port number.
f. Select Submit.
3. Activate the VMWare - vCenter Classify probe.

Important: This configuration is only required when vCenter is on port 443.
a. Navigate to All > Discovery Definition > Port Probes.
b. Open the http port probe record.
c. In the Trigger Probes related list, select the false link for the VMWare - vCenter Classify
classification probe.
d. Select the Active check box.
e. Select Update.
The VMWare - vCenter Classify probe establishes a connection between the MID Server
and the vCenter instance. If the connection is successful, it triggers the VMWare - vCenter
datacenters probe.
Configure ESXi resource pools
The ESXi server has a default resource pool called Resources that defines normal resources for a
virtual machine.

Before you begin

Role required: admin

About this task

ESXi resource pools must be configured so Discovery can identify virtual machines and
their relationships correctly. Resource levels are dynamically generated from shares of the
total resources allocated to virtual machines on the ESXi server. For details about how these
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

994


<!-- page 995 -->
resources are calculated, review the VMware knowledge base https://www.vmware.com/ .
ServiceNow Discovery finds this default resource pool and adds a record to the ESXi Resource
Pools module automatically.
If Discovery isn't running on the ServiceNow instance, create a record for the Resources pool.
Verify that the Owner field is correct and leave the resource fields empty. If a provisioner selects
the Resources pool when provisioning a virtual server, the ESXi server creates a virtual machine
for use under a normal load.

Procedure
1. Navigate to All > VMware Cloud > Configuration > ESX Resource Pools.
2. Select New in the list.
3. Create a record for each resource pool in the ESXi server, verifying that the Name and Owner
fields are correct.
4. Select the CPU expandable and Memory expandable check boxes.
These features enable for expansion of the CPU and memory limits when needed, if those
resources are available on the ESXi server. When granted, these extra resources can be
revoked to provision other virtual machines. The additional fields on the form are for display
purposes only.
5. Select Submit.
ESX Resource Pool form

Discovery classifiers
A classifier tells Discovery which probes to trigger for the identification and exploration phases
of discovery. Classifiers can also trigger the Horizontal Pattern probe, which launches a pattern,
rather than additional probes, for identification and exploration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

995


<!-- page 996 -->
The classifier essentially starts the identification stage. Discovery uses it after the classification
probe returns important parameters to the instance that tell Discovery what to do next.
In most cases, you do not need to create a classifier or modify a classifier. But if you are having
trouble with horizontal discovery, you might want to check the conditions that determine when a
classifier runs based on the parameters the classification probe returns to the instance. Or if you
want to discover a new type of CI that Discovery does not already find, you can create your own
classifier.

Device, process, and IP address classification
Discovery classification can be broken down into three types: device classification, process
classification, and IP address (or IP scan) classification:
Device classification
The classification of actual device types, such as a computer running Windows, a
computer running a flavor or UNIX or LINUX, a router, a switch, or a load balancer,
and so on.
When Discovery identifies a computer CI, it triggers an active processes probe
to explore the computer CI further. Discovery compares the results of the active
processes probe to the process classification conditions to determine if there is a
match.
Computer CI classification workflow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

996


<!-- page 997 -->
Starting with the Madrid release, the horizontal discovery process can classify
devices using HTTP.
Of all protocols that Discovery uses (including WMI, SSH, and SNMP), HTTP is the
lowest priority by default. Discovery uses HTTP classification only if:
• Shazzam determines that the ports for HTTP (80) and HTTPS (443) traffic are
open.
• The horizontal discovery process fails for the higher priority port probes (WMI,
SSH, and SNMP) if the ports for those protocols are not open, or if discovery for
those protocols fail. The horizontal discovery process can fail, for example, if SSH
and SNMP credentials are not configured or are incorrect.

Note: See Port Probes for more details on how port scanning works and to
see the priorities of the different protocols.
HTTP classification launches the HTTP Classify probe to classify the device.
The HTTP - Classify probe runs a GET request for each device for each HTTP
classification. The URL of the request is built as follows: PROTOCOL://IP:PORT/
PATH, where:
For more information on port probes, see Port probes. For instructions on creating
an HTTP classifier, see Create an HTTP classification.
Process classification
The classification of applications based on the processes that are running.
Discovery classifies processes during the last phase of discovery: the exploration
phase, after identifying devices in the Computer [cmdb_ci_computer] table and
its extensions. Just like device classification, process classification has its own
classification criteria and also has the ability to launch probes. Unlike device
classification, process classification creates child configuration items (CI) with
Runs on::Runs relationships. By default, Discovery includes classifications for most
common processes.
If a process matches the classification criteria, Discovery determines whether to
run the process handler script. The process handler script modifies the parameter
data to help Discovery identify whether the process represents an existing or
new application CI. Discovery process handlers prevent the creation of duplicate
CIs by filtering out parameters known to have inconsistent values before process
classification occurs. Every time Discovery adds or updates an application CI, it also
determines the application dependency mapping of the application CI to other CIs
in the CMDB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

997


<!-- page 998 -->
Process classification workflow

IP address (IP scan) classification
IP address discovery is credential-less, meaning that it attempts to identify devices
and software based on just the open ports and banners it finds without requiring
you to create credentials. If the classification criteria are met for a device in the IP
Scan mode, Discovery automatically updates the CI in the CMDB. After a device is
properly classified, Discovery launches the exploration probes configured for that
class of device and begins gathering detailed information about the CI.
In the default Discovery system, the Linux classifier triggers eleven exploration
probes that return information such as disk size, memory, and the number of current
connections. The data from these probes returns at different times and is stored in
the ECC Queue until processing is complete.
This diagram shows the processing flow for classifying and probing devices with an
IP scan (no identifiers):

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

998


<!-- page 999 -->
IP scan classification

See Classification for IP address discovery for more details about the parameters available to
classifiers for this type of discovery.

Classifier criteria
Classifiers also provide criteria that you can use to specify when Discovery should use the
classifier under the conditions that you define. The criteria is based on the parameters that a
classify probe returns to Discovery. Criteria is constructed with the parameter, an operator, and a
value.

Note: Condition filters in process classifiers are case-sensitive.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

999


<!-- page 1000 -->
Classifiers and patterns
Discovery can use patterns, rather than probes, to identify and explore CIs. Discovery triggers
patterns from the Horizontal Discovery probe, which can be specified on a classifier. You can
create you own patterns and add them, via the Horizontal Discovery probe, to a classifier. See
Add the Horizontal Pattern probe to a classifier for instructions. You might already be using one
of the out-of-box patterns that are provided with Discovery. You can verify this by looking at the
classifier to see if the Horizontal Pattern Probe is specified.

Logging classification debugging information
To log debugging information about classifications, add the following system property. The
resulting log entries list the name of each classifier that runs, along with all the names and values
that are available to the criteria in the classifier.

System property

Description

glide.discovery.debug.classification Enables debugging information for
process classification.
• Type: true | false
• Default Value: false
• Location: Add to the System
Properties [sys_properties] table. For
more information, see Add a system
property .

What you can do with Discovery classification
• Create or modify a discovery classifier if you want to classify CIs that Discovery does not
already classify, or trigger other probes that are not already on a classifier. You can modify
classifiers that Discovery uses in standard CI discovery, process classifiers for applications,
and classifiers based on IP address scans.
Before you modify any classifiers, review the parameters that are available for each type of
classifier.
• If Windows machines are on your network, you can use the WinRM protocol, rather than
WMI, for more efficient lightweight data transfer and remote command execution. By default,
Discovery uses WMI. For instructions on the classifier modifications you can make to use
WinRM, see Use Windows Remote Management for classification.
• If you have Windows computers that are acting as servers and you want them to be classified
by their function rather than by the operating system, you can make changes to the criteria
of the Windows classifier. See Reclassify a Windows Workstation machine as a server for
instructions.
Create a Discovery CI classification
A CI classification allows Discovery to discover most common operating systems, network
devices, and processes.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1000


<!-- page 1001 -->
About this task

Warning: Adding SNMP OID classifications with a Net-SNMP module OID starting
with 1.3.6.1.4.1.8072.3.2 or a Windows OS OID starting with 1.3.6.1.4.1.311.1.1.3 can result in
misclassification of devices and incorrect model names and is no longer allowed. These are
template system OIDs that can remain on a device if the manufacturer fails to replace them
with OIDs specific to their own model. For example, a Check Point Smart-1 3050 Firewall,
which uses Linux as its OS, might have the OID for a Linux server, 1.3.6.1.4.1.8072.3.2.10. This
results in the firewall being classified incorrectly. If two or more devices have the same OID,
configure classification criteria that differentiate the devices from one another. For details,
see KB0751287 .

Procedure
1. Navigate to All > Discovery Definition > CI Classification.
2. Select the type of classification to create.
3. Click New in the list of classifications for the type you selected.
4. Complete the form using the fields in the table.
Classification form fields
Field

Input Value

Name

Name of the configuration item (CI).

OID

SNMP system OID for matching this device. When the OID value matches
that of an SNMP device, Discovery uses the information to populate the
CMDB with the specified manufacturer, model, and classifier.

Operator

Operator for determining how to match and SNMP OID. The choices are
Is and Starts with. This field is available only for SNMP System OIDs
classifiers.

Active

Enables or disables this classifier. When a classifier is disabled, the system
stops classification at this level and does not launch classifiers of a lower
order. For example, when the classifier for Windows 2008 Server is disabled,
the system stops Discovery at this point and does not launch the Windows
2012 Server classifier.

Order

Order (sequence) in which the platform runs this classifier.

Table

Table for this classification. For example, if this record classifies a Linux
server, select the Linux Server [cmdb_ci_linux_server] table.

Classifier

Classification of an SNMP device, such as A10 Load Balancer. This field is
available only for SNMP System OIDs classifiers.

Relationship
type

Type of relationship for this classifier, such as Runs on::Runs. This field is
available only for application and process classifiers.

Match criteria

Criteria that must match to classify this device. The choices areAny of the
parameters or All of the parameters.

Manufacturer

Name of the manufacturer of a network device. This field is available only for
SNMP and SNMP System OIDs classifiers.

Model

Model number of a network device. This field is available only for SNMP and
SNMP System OIDs classifiers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1001


<!-- page 1002 -->
Field

Input Value

On
classification
script

Script that runs if classification criteria are met. Use this script to perform
any special tasks after a device is classified. It is possible to use the
g_probe_parameters hashmap from within a classification script to set
probe parameters for any configured, triggered probes. For example, this
code sets a 'node_port' parameter to 16001 for all triggered probes:
(JS), g_probe_parameters['node_port'] = 16001; //

Related lists
Classification
Criteria

Criteria formed from specific parameters and the values that they must
contain to match devices that Discovery finds in the network with CIs in
the CMDB. For a detailed discussion of these parameters, see Discovery
classification parameters.

SNMP OID
Classifications Unique "fingerprints" of all the SNMP devices that ship with the base
Discovery product. Users can add OIDs for SNMP devices not in this list. This
related list is available only for SNMP devices.
Triggers
probes

Exploration probes that Discovery launches to gather detailed information
about a CI that it has classified in the network. If you want to use patterns for
horizontal discovery, add the Horizontal Pattern probe in the Probe column,
and then specify your pattern in the Pattern column.

Warning: Do not specify your pattern in Probe column. Choose the
Horizontal Pattern probe, which launches the specified pattern.
Versions

Lists versions of this classifier. A new version is created whenever you
modify the classifier record. To revert to a previous version, open that record
and select Revert to this version under Related Links.

This example shows a completed CI classification form with exploration probes defined. For
instruction on creating probes, see Discovery probes and sensors. The probes defined here

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1002


<!-- page 1003 -->
are launched when the device is properly classified, unless Discovery is configured to stop
after classification.
Discovery classification form

Create a Discovery process classification
A process classification allows Discovery to create a particular CI type from information gathered
during the identification and exploration phases.

Before you begin

Role required: none

About this task

When a process matches the classification criteria, Discovery uses the process classification
record to create a CI. You can also have Discovery update existing CIs or ignore certain
processes by creating a process handler.

Note: There is no support for dot-walk on the parent running the process command.
Procedure
1. Navigate to All > Discovery Definition > CI Classification > Processes.
2. Click New.
3. Enter the classification fields (see table).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1003


<!-- page 1004 -->
Classification fields
Field

Input value

Table

Select the table where this classification generates CI records. This table must
be an extension of the Applications [cmdb_ci_appl] table.

Relation
type

Select the CI relationship type for this classification. The relationship field is
only available for Process and Scan Application classifications.
Discovery process classifications typically use one of these relationship
types:
◦ Runs on::Runs: Defines the relationship of an application to the host on
which it runs. This relationship is expressed from the perspective of the
host and the application. For example: My database application runs on
server001::server001 runs my database application.
◦ Depends on::Used by: Defines the relationship of an application that
communicates with another application. This relationship is expressed from
the perspective of each application. For example: The Tomcat application
depends on the MySQL database:: The MySQL database is used by
Tomcat.
◦ Virtualized by::Virtualizes: Defines the relationship of a virtual machine to
its host. This relationship is expressed from the perspective of the virtual
machine and of the host. For example: server001 is virtualized by Server
ESX::Server ESX virtualizes server001.

Active

Select this option to enable the process classification record. Only active
process classifications can create application CI records.

Order

Enter the order in which Discovery should run this process classification when
there are multiple classifications available for a table. Discovery runs process
classifications from the lowest to highest order.

Test with

Lists the host CI where an automatically generated process classification
conditioncons were met. Use this field to test changes to the process
classification to ensure that the updated classification behaves as expected.

Condition

Use the condition builder to create the match and classification criteria for the
process classification. This field replaces both the Match criteria field and
Classification Criteria related list. The upgrade process converts all existing
classification criteria into conditions.

Note: Condition filters in process classifiers are case-sensitive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1004


<!-- page 1005 -->
Field

Input value

Note: Only these conditions work:
◦ name
◦ PID
◦ PPID
◦ command
◦ parameters
◦ listening_on_ports
◦ connecting_to_ports
◦ connecting_to
◦ key_parameters
◦ classify
On
Enter a script to run when the condition and classification criteria are met. Use
classification this script to perform any special tasks after a device is classified. It is possible
script
to use the g_probe_parameters hashmap from within a classification
script to set probe parameters for any configured, triggered probes. For
example, this code sets a 'node_port' parameter to 16001 for all triggered
probes.
g_probe_parameters['node_port'] = 16001;
See On classification script objects for Discovery for more examples and for a
list of the objects you can use in this kind of script.
Triggers
probes

Select the exploration probes you want Discovery to launch. These probes
gather detailed information about a classified CI. Discovery will not launch
these probes when it is configured to stop after classification. If you want to
use patterns for horizontal discovery, add the Horizontal Pattern probe in the
Probe column, and then specify your pattern in the Pattern column.

Warning: Do not specify your pattern in the Probe column. You must
choose the Horizontal Pattern probe which launches the specified
pattern.
Applications Use this related list to view the application CIs that match this process
classification.
Test results

Use this related list to view the how Discovery classifies processes on the Test
with host and build better classification conditions.

Parameters

Use this related list to view the parameters associated with this process and
build better classification conditions. See Discovery classification parameters
for a list of the parameters you can use.

Versions

Use this related list to view previous versions of the process classification
record.

4. Right-click the header bar and click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1005


<!-- page 1006 -->
5. Enter items from related lists.
6. Click Update.

Example:
An example process classification record

What to do next

Run a discovery through the Discovery Schedule to search for applications. You can also
create or modify process handlers that prevent the creation of duplicate CIs based on process
classifiers if that is an issue for your environment.
On classification script objects for Discovery
Use an On classification script in a process classifier to customize an application record. This
kind of script is used in a process classifiers.

Renaming the default application name
By default, application names are in this format: <name of the process
classifer>@<the name of the computer CI where the process
resides>;
For example, for a MySQL server running on a computer called machineA, the application is
named mysql@machineA.
You can use the On classification script field in the process classifier record to change the
default application name to match your business needs. For example, the following script
changes the default application name to include a suffix after the process classifier:
var computerName = g_sensor.deviceGR.name;
var processClassiferName = g_classification.name;
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1006


<!-- page 1007 -->
current.name = processClassiferName + "999" + "@" +
computerName;
In this example, the name of the application record becomes mysql999@machineA.
Another common technique is to set the application name based on the name, command, and
parameter variables. For example, an Eclipse process might have the following values in these
variables:

name

"eclipse"

command

"/glide/eclipse/Eclipse.app/Contents/MacOS/eclipse"

parameter

"-psn_0_1884620"

If an Eclipse application runs on a computer called machineA, ServiceNow names the
application eclipse@machineA. The following script appends the parameter value as part of the
application name.
var computerName = g_sensor.deviceGR.name;
var processClassiferName = g_classification.name;
current.name = processClassiferName + parameters + "@" +
computerName;
In this example, the name of the application record becomes eclipsepsn_0_1884620@machineA.
Sometimes it is useful to pass values to the triggered probes in the process classification.
You can do this by creating a custom script that defines a name/value pair for the
g_probe_parameters object. For example:
g_probe_parameters['processCommand'] = command;
In this example, when a classification record triggers a probe, the script passes the probe a
parameter called processCommand with the value of the command variable.

Script objects
Use these objects in the script:

Script object

Description

current

Points to a JavaScript object with its [property:value] pair to update
the application record. (It is not an actual GlideRecord object of the
application.)

g_sensor

Points to the running process sensor class. This object contains a
deviceGR object, which points to the computer CI record on which the
process resides.

g_classification

Points to the process classifier record itself.

name

Points to the process name.

command

Points to the process command.

parameters

Points to the process parameters.

g_probe_parameters A JavaScript object that will allow parameter passing to the triggered
probes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1007


<!-- page 1008 -->
Related topics
Create a Discovery process handler
Create a Discovery process handler
Process handlers prevent the creation of duplicate CIs by filtering out parameters known to have
inconsistent values before process classification occurs. You can create new classifiers or edit
existing ones.

Before you begin

Role required: none

Procedure
1. Navigate to All > Discovery Definition > CI Classification > Process Handlers.
2. Click New.
3. Complete the fields on the Process Handler form.
Process Handler form
Field

Description

Name

Enter a unique name for the process handler record.

Active

Select the check box to run the process handler.

Classify

◦ Select the check box to enable classification of any Running Process
[cmdb_running_process] record that matches this Process Handler's
conditions.
◦ Clear the checkbox to disable classification of any Running Process
[cmdb_running_process] record that matches this Process Handler's
conditions.

Condition Select the conditions that trigger the process handler to run the script. In most
cases, this condition contains either specific executable names or the presence
of certain parameters.
Script

Enter the JavaScript you want to run on the current record in the Running
Process [cmdb_running_process] table when the Condition is met. The
current variable is a reference to a Running Process GlideRecord. The
script should examine current.parameters for certain values, perform
string replacement to manipulate these values, and save the result to
current.key_parameters.
ServiceNow uses the key_parameters field, together with the process name, to
determine whether the process is unique on a specific machine.
See On classification script objects for Discovery for additional options.

4. Click Submit.

What to do next

Run a discovery through the Discovery Schedule to search for applications and then verify the
results in the CMDB for the applications that are found.
Create an HTTP classification
An HTTP classifier enables the horizontal discovery process to find devices via the HTTP
protocol.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1008


<!-- page 1009 -->
Before you begin

Role required: discovery_admin

About this task

If you want to classify devices via HTTP/REST, you can create additional HTTP classifications,
rather than by another protocol. Use HTTP classification for device discovery only, not for
application discovery.

Important: The HTTP Classify probe no longer attempts credentials over
the HTTP protocol by default. To override this behavior, you can enable
mid.http_classy.allow_credentials_over_http. However, enabling this
setting can expose credentials to man-in-the-middle (MitM) attacks. Therefore, it’s strongly
recommended to keep this property set to false and use HTTPS whenever possible.
By default, the F5 HTTP classifier is provided to classify F5 load balancers using REST. The F5 LB
REST pattern is also provided to explore the device. You don’t need to create an HTTP classifier
for F5 load balancers.
Of all protocols that Discovery uses (including WMI, SSH, and SNMP), HTTP is the lowest priority
by default. Discovery uses HTTP classification only if:
• Shazzam determines that the ports for HTTP (80) and HTTPS (443) traffic are open.
• The horizontal discovery process fails for the higher priority port probes (WMI, SSH, and
SNMP) if the ports for those protocols are not open, or if discovery for those protocols fail.
The horizontal discovery process can fail, for example, if SSH and SNMP credentials are not
configured or are incorrect.

Note: See Port Probes for more details on how port scanning works and to see the
priorities of the different protocols.
HTTP classification launches the HTTP Classify probe to classify the device. The HTTP Classify probe runs a GET request for each device for each HTTP classification. The URL of the
request is built as follows: PROTOCOL://IP:PORT/PATH, where:

Procedure
1. Navigate to All > Discovery Definition > CI Classification > HTTP.
2. Select New.
3. Fill out the form fields (see table):

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1009


<!-- page 1010 -->
The F5 HTTP classification

Field

Description

Name

Enter a name for the classifier.

Path

Enter the path for the HTTP GET request.

Headers

Add an option header with a value. You can use a variable in the
format ${variable} instead of a static value.
Supported headers depend on the REST web service provider
that you want to connect to. See the documentation for your web
service provider to identify which headers are valid or required.

Port (IP Service)

If you want this classifier to use a custom port that is not already
a default value in the IP Service [cmdb_ip_service] table, do the
following:
a. Select the lookup icon to see the list of IP Services.
b. Select New and create a port-to-protocol mapping.
c. Select that port-to-protocol mapping for this Port field.
Many commonly used protocols are already mapped to ports by
default, such as http to port 80 and the https to port 443.
If you want to use one of these default port-to-protocol mappings,
don’t enter any values in the Port field. The HTTP port probe uses
the correct one by default.

Order

Enter a number that represents the priority of this classifier. If
Discovery finds more than one classifier that applies, it uses the
classifier with lower Order number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1010


<!-- page 1011 -->
Field

Description

Protocol
[optional]
This field isn’t visible
by default. You must
configure the form to
add it.

If you configure a unique port-to-protocol mapping for the Port
field, enter an optional protocol override that Discovery uses with
this classifier.
For example, if you want to use port 5000 and the HTTP protocol,
add the 5000/HTTP port-to-protocol mapping to the Port field, and
then choose http in the Protocol field.

4. Right-click the header and select Save.
A record is created in the HTTP Classifications [discovery_classy_http] table.
The HTTP Classification Match related list appears. This related list shows criteria that you can
configure to match against the body of the response to the GET Request that Discovery sends.
5. In the HTTP Classification Match related list, define the criteria and specify the pattern to
launch for this classifier.
The criteria must be met for Discovery to use this HTTP classifier.
a. Select New.
b. On the HTTP Classification Match form, fill in the form fields (see table).

Field

Description

Operator Choose the operator that the system uses to evaluate the condition:
▪ Contains
▪ Equals
▪ Regex
Order

Enter a number that represents the priority of this condition. If Discovery finds
more than one condition that applies, it uses the condition with lower Order
number.

Pattern

Specify the pattern to launch upon a correct match. This pattern must use HTTP
to discover the device.

Value

Enter the value that the body of the returned REST method must have.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1011


<!-- page 1012 -->
c. Select Submit.
d. If there are different patterns for different versions of the device you’re trying to discover,
define as many HTTP Classification Matches as necessary.
Classification for IP address discovery
Discovery provides a way to classify devices it finds through IP address discovery, even when no
credentials are available.
When you run a discovery for IP addresses, as opposed to a CI discovery, the Discovery
application makes certain assumptions about devices and the applications running on those
devices from the ports that it finds open. Classification parameters for this type of Discovery are
generated differently from scans in which credentials are available.
The syntax for creating parameters is derived from the fields returned by the Shazzam probe
when conducting a Discovery for IP addresses. Parameters for CIs and applications are formed
in the same way. The Shazzam probe creates an XML file containing the following fields:
• name
• port
• portprobe
• protocol
• result
• service

Note: Optional fields that can be used to form parameters appear as child tags beneath
the default fields. Example of these are the sysDescr and banner_text fields.

Parameters are expressed in the form of <portprobe.service.field>. The value for field can come
from any of the fields or child tags in the XML file. For example, the following parameters classify
a device as a UNIX server and detect an installation of MySQL:
• ssh.ssh.result
• mysql.mysql.result
These parameters were derived from the values in the following XML file generated by a
Shazzam probe conducting an IP Scan. The result field returned a value of open for ports 22 and
3306 on the target device. The service field indicates the services that normally communicate
over those ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1012


<!-- page 1013 -->
The sysDescr field can provide additional information about devices, depending upon the
manufacturer. This XML file from the Shazzam probe reveals the following about port 161 on the
device at IP 10.10.11.149:

In the classification criteria, we can construct the following parameter with sysDescr that returns
an Apple AirPort wireless router:
snmp.snmp.sysDescr

contains

Apple AirPort

Modify classifiers for IP address discovery
When you run an IP address type of discovery, port probes scan devices without the use of
credentials, and then Discovery can determine which classifiers to use. You can add port probes
and additional classifiers for IP address discovery.

Before you begin

Role required: admin

About this task
string

community

Although no credentials are required to scan for Windows or UNIX devices with this type of scan,
credentials are still required for SNMP devices. By determining which ports are open on the
devices that it scans, IP address classification can discover such things as the type of device
(computer, UPS, etc.), operating system, running applications, and version numbers.

Note: IP address classification attempts to classify devices when no credentials are
available; however, Discovery will use credentials when they are available, even when IP
address classification is configured.
To use IP address classification, follow these steps:

Procedure
1. Determine what ports to use for classification and run a scan program such as Nmap on
specific IP addresses to decide which ports reveal the desired information about a device or
application.
The scan can reveal several pieces of data that are useful for configuring classification
parameters. An Nmap scan displays port numbers, their state (open or closed), their service
names, and any version information it can find. From the port information returned in the
example below, we can construct criteria to classify UNIX servers (port 22), MySQL (port 3306),
and Apache Tomcat (port 16000).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1013


<!-- page 1014 -->
2. Add an IP Service and port probe.
The out-of-box system supplies probes for some of the most common ports, but additional port
probes will be needed for effective IP address scanning.
a. Navigate to Discovery Definition > IP Services and click New.
b. Create a new IP Service record using the port number and service from the Nmap scan. In
this example, we associate the mysql service with port 3306 and add the CI (sanops02) on
which the service runs to the Available on Related List.
Discovery IP Service

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1014


<!-- page 1015 -->
c. To use Basic Discovery, navigate to Discovery Definition > Functionality Definition and
select the record for All.
d. Add the new port probes to the list. This tells Discovery which port probes to run for IP
address scans.
Discovery functionality definition

e. Save the record and navigate to Discovery Definition > Port Probes and click New.
f. Create a port probe using the new IP Service you just defined.
Discovery Port Probe

3. Create a new classification and add the parameter for IP address scanning.
In this example, we have created an application classifier that will discover Apache Tomcat,
based on the port information we received from the Nmap scan. See the following section for
details about forming parameters for IP address scans.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1015


<!-- page 1016 -->
Discovery Application Classifier

4. Optional: In the Classification Criteria related list, create a criteria filter that determines when
this classifier applies to the discovered devices.
See the IP address classification parameters for a list of the parameters you can use.

What to do next

Run a IP address discovery through the Discovery Schedule to search for devices.
Use Windows Remote Management for classification
You can configure the discovery of Windows hosts using the Windows Remote Management
(WinRM) protocol.

Before you begin
• Install and configure a Windows MID Server on the local network.
• WinRM service must be enabled on all discoverable Windows hosts.
Roles required: discovery_admin, agent_admin, admin

About this task

By default, the system uses the WMI protocol for device classification of Windows hosts.
Administrators can instead use the WinRM protocol for more efficient lightweight data transfer
and remote command execution.

Procedure
1. Enable the WinRM service on all Windows hosts you want to discover.
2. Navigate to Discovery > MID Servers.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1016


<!-- page 1017 -->
3. Select the MID Server you will use for discovery of Windows hosts.
The system displays the MID Server record.
4. From the Configuration Parameters related list click New.
The system displays a MID Server Configuration Parameter record.
5. In the Parameter name field, select the mid.windows.management_protocol parameter from
the choice list.
6. Enter a value of WinRM.
MID Server configuration parameter

7. Click Submit.
The system displays the MID Server record.
8. Optional: Add other Windows Remote Management protocol parameters as needed.
Additional WinRM parameters
Parameter

Description

mid.powershell_api.winrm.remote_port
Specifies the
communications port
the MID Server uses
to communicate with
the WinRM protocol.

Default

Requires MID Server
restart

5985

No

mid.powershell_api.session_pool.target.max_size
Specifies the
2
maximum number of
sessions allowed in
the pool per target
host.

Yes

mid.powershell_api.session_pool.max_size
Specifies the
maximum number of
sessions allowed in
the session pool.

25

Yes

mid.powershell_api.idle_session_timeout
Specifies the
timeout value of idle
Powershell sessions
in seconds.

60

Yes

What to do next

Run a discovery from the Discovery schedule to find Windows machines on your network.
Reclassify a Windows Workstation machine as a server
By default, Discovery automatically classifies computers using certain Windows operating
systems as workstations. However, you might want specific computers in your network that are
acting as servers to be classified by their function and not their operating system.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1017


<!-- page 1018 -->
Before you begin

Role required: none

About this task

Use the following variables, preceded by cidata, to construct a reclassification condition. For
example, to reclassify based on a machine's IP address, use cidata.ip_address.
• name
• dsn_domain
• os_domain
• ip_address
• serial_number
The following procedure reclassifies any Windows workstation operating system (Windows Vista,
XP, or Windows 7) that is acting as a server.

Procedure
1. Navigate to All > Discovery Definition > CI Classification > Windows.
2. Create a new classification record, such as Windows XP Server.
3. Select Windows Server [cmdb_ci_win_server] as the table.
4. Right-click in the header bar and select Save from the context menu.
The Classification Criteria and Triggers Probes Related Lists appear.
5. Configure the following Classification Criteria:

Name

Select a variable to use as the classification
criteria from the list above. For example,
to reclassify a machine by name, enter
cidata.name. This works for servers that
have a uniform naming convention, such
as SRV001, SRV002, etc., regardless of
operating system.

Operator

Select an operator for the classification
condition. In networks containing servers
named with a specific convention, you might
select starts with or contains.

Value

Enter the value for the condition. In our
example of a network with a server naming

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1018


<!-- page 1019 -->
convention, this value would be the root of
that convention, such as SRV This condition
will classify all computers as servers if their
machine name is SRVXXX.
6. Select the Triggers Probe related list and add the appropriate probes.
a. Copy the list of probes from another Windows server classification, including the
Condition scripts.
b. Ensure that the Windows - Identity probe has a phase of Identification (the default is
Exploration).
The completed form looks like this:

What to do next

Run a discovery from the Discovery schedule to find Windows machines on your network, and
then check the cmdb_ci_win_server table and related tables to see how data is populated in the
CMDB.
Discovery classification parameters
These parameters are available for Discovery classifiers.

Note: Condition filters in process classifiers are case-sensitive.
Unix parameters
The UNIX parameters define the characteristics of several types of computers, such as Linux,
Solaris, and HP-UX, communicating with SSH protocol, version 2.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1019


<!-- page 1020 -->
Parameter

Description

output

The raw output of the classifier probe (uname -a).

type

Returns the classification UNIX.

IP address

Returns the IP address of the device being discovered.

name

Name of the operating system for this UNIX CI. For example, Linux or HP-UX.

Windows parameters
Windows parameters identify Windows computers communicating with the WMI protocol.

Parameter

Description

isNode

Indicates if this instance is a node.

type

Returns the classification windows.

isVIP

Indicates if this CI is a virtual machine, with a virtual IP address.

ip_address

Returns the IP address of the device being discovered.

name

Name of the Windows version.

cidata.name

Hostname of the Windows OS

SNMP parameters
The SNMP parameters can define the characteristics of several types of devices, such as routers,
switches, and printers.

Parameter

Description

powering

A value of true indicates that this device is an uninterruptible power
supply (UPS).

hosting

A value of true indicates that this device can host programs. Hosts
are general purpose computers such as servers.

netware

A value of true indicates that this device is running the Netware
operating system.

routing

A value of true indicates that this device has network routing
capabilities.

ip_address

Returns the IP address through which the device is being
discovered. A device can have multiple IP addresses.

sysdescr

Required descriptive field on any SNMP device that can contain
useful classification data, such as the operating system and its
version.

vlans

A value of true indicates that this device can host a virtual local area
network.

hint_router

A value of true indicates that Discovery has determined that this
device is a router. This field only applies to devices that can be used
as both a router and a switch.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1020


<!-- page 1021 -->
Parameter

Description

block_router_exploration If this parameter is true,Discovery will not launch exploration probes
for routers it detects. This parameter is used for network Discovery
only.
switching

A value of true indicates that this device has network switching
capabilities.

mfr_apc

A value of true indicates that this device is an uninterruptible power
supply (UPS) manufactured by American Power Conversion (APC).

printing

A value of true indicates that this device has printing capabilities.

block_switch_exploration If this parameter is true, Discovery will not launch exploration
probes for switches it detects. This parameter is used for network
Discovery only.

Process parameters
Process parameters identify processes such as those used by LDAP, Apache Server, and JBoss
Server.

Parameter

Description

parameter The parameters used to run the process.
command The command used to run the process.
output

The complete output of the current line of the process probe.

type

Indicates the process type (e.g. unix or windows).

PID

The process ID generated by the operating system of a device to identify a running
process. Generally, this parameter is not a practical classification criteria, because
the value does not remain static, except in the case of processes running on an
appliance that is never restarted.

name

Name of the process being discovered. In some cases, this parameter is not
reliable, since several process might be given the same name. In Windows, for
example several processes return scvhost.exe for this parameter.

Check IP service affinity for Discovery and Orchestration
You can check the IP Services table for a list of IP addresses that are associated with a protocol.

Before you begin

Role required: admin

About this task

The IP Services table maps a port to a protocol. Several mappings are provided by default for
commonly used port-protocol combinations, such as port 80 for HTTP, port 22 for SSH, and port
161 for SNMP.
A system property called glide.discovery.ip_service_affinity allows Discovery to
remember the last port of the IP address that was discovered.

Important: You should not modify IP services unless your organization uses custom
ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1021


<!-- page 1022 -->
Procedure
1. Navigate to All > Discovery Definition > IP Services.
2. Filter the list to find the appropriate IP service.
3. Click the name of the service to go to that IP service page.
4. Click the IP Service Affinities tab for the list of IP addresses associated with that service.
IP Service Affinities

Discovery identifiers
After Discovery classifies a CI, it uses identifiers to determine if the device already exists in the
CMDB.
Discovery launches special identity probes that accumulate identification data for each device
and feed that data into the identifiers, which determine the action that Discovery must take for
each device. Identifiers accurately determine the identity of the device to prevent the creation
of duplicate CIs. This identification step only takes place for the Configuration item type of
discovery, not for the other types of discovery.
The identity probe in the base Discovery system can be configured to ask the device for
information such as its serial numbers, name, and network identification. The results of this scan
are processed by an identity sensor, which then passes the results to the identifier. The identifier
then attempts to find a matching device in the CMDB. If the identifier finds a matching CI, the
identifier either updates that CI or does nothing. If the identifier cannot find a matching CI, it
either creates a new CI or does nothing. If Discovery is configured to continue, the identifier
launches the exploration probes configured in the classification record to gather additional
information about the device. Exploration probes can be multiprobes or simple probes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1022


<!-- page 1023 -->
Important: Serial numbers are necessary for accurate asset tracking. If you modified
baseline probes, sensors, or patterns, verify that they still discover serial numbers. In
addition, do not configure sensors or patterns to modify the serial number syntax, such as
adding a custom prefix. Non-standard serial numbers can lead to inaccurate asset tracking.
This diagram shows the processing flow for classifying and probing devices with identifiers
configured.

CMDB identifier tables
Table

Description

Identifier [cmdb_identifier]

Stores all identifier rules.

Identifier Entry [cmdb_identifier_entry]

Stores all the identifier attributes.

Identifier rules
The default Discovery system contains these identifier rules, each of which is associated with
a specific CI type (the sys_class_name field on the CI record) or the table in the Applies to
field and contains the appropriate attributes for discovering CIs from the specified table. Where
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1023


<!-- page 1024 -->
necessary to discover all possible occurrences of an attribute, tables from related lists (Search
on tables) are included in the rule. For more information, see Create or edit a CI identification
rule .
CMDB identifier rules
Rule

Applies to table/attributes

Search on table/attributes

ESX Server
Rule

ESX Server [cmdb_ci_esx_server]:
correlation_id

none

Hardware
Rule

Hardware [cmdb_ci_hardware]
• serial_number

• Serial Number
[cmdb_serial_number]

• serial_number_type

◦ serial_number

• name

◦ serial_number_type

• ip_address

• Network Adapter
[cmdb_ci_network_adapter]

• mac_address

◦ ip_address
◦ mac_address

Storage
Server Rule

Storage Server [cmdb_ci_storage_server]
• cim_object_path

• Serial Number
[cmdb_serial_number]

• name

◦ serial_number

• serial_number

◦ serial_number_type

• serial_number_type

• Network Adapter
[cmdb_ci_network_adapter]

• mac_address
• ip_address

WBEM
Service Rule

WBEM Service [cmdb_ci_wbem_service]:
cim_object_path

◦ ip_address
◦ mac_address
none

Matching strategy for the hardware rule
The sys_class_name cannot be an attribute for independent rules, such as cmdb_ci_hardware.
If your Discovery identification strategy depends on matching a CI with a specific class, you
must create a new rule for each class you want to use for matching and specify that class in the
Applies to field of the Identifier form.
For example, you can create an identifier for a Linux server with different attributes than the
Hardware Rule. You might want to use the machine name, IP address, and MAC address for
identification. This is a solution for networks that use NIC bonding or teaming to increase
available bandwidth. Bonded interfaces appear to be the same physical device and share the
same IP and MAC addresses. The use of the name attribute allows Discovery to differentiate
between the individual interfaces in the bonded channel.

Important: If you create an identifier with the name attribute, avoid changing adapter
names. Discovery will be unable to resolve existing CIs for renamed adapters. Discovery
labels the Install Status of that CI as "Absent" and creates another CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1024


<!-- page 1025 -->
Your new rule would look like this:
Linux identifier rule

Evaluation order for Discovery identifiers
Custom identifiers must have different Order values than those of the default identifiers.
Discovery parses identifiers and attributes in sequence from low order numbers to high. You can
create identifiers to run before or after the default identifiers, or mixed in with the identifiers from
the base system. To prevent any identifier or rule from running, disable it by clearing the Active
check box. The evaluation order for CMDB identifiers is established within each rule and only
controls the parsing order of the attributes in that rule.
Evaluation order in CMDB identifier rules

Properties for processing duplicate CIs
You can control how Discovery handles duplicate CIs with properties installed with Identification
and Reconciliation. Use the glide.identification_engine.skip_duplicates and
glide.identification_engine.skip_duplicates.threshold properties. For
more information, see Properties for Identification and Reconciliation .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1025


<!-- page 1026 -->
Properties that control identifier versions
All instances use identifiers from the CMDB Identification and Reconciliation framework.
Upgrades from pre-Geneva versions still preserve the legacy identifiers, but you can switch to
the new identifiers using a property: glide.discovery.use_cmdb_identifiers. If you
upgraded from a pre-Geneva version, you must manually add this property and set it to true to
use the new identifiers. If you upgraded from Geneva or later releases, this property is available
in the System Properties [sys_properties] table. To preserve functionality in custom legacy
identifiers, convert them to the new CMDB identifier rules format before enabling this property.
The system does not reconfigure your custom identifiers to the new framework automatically.

Note: When Service Mapping is active, the new identifiers from the CMDB Identification
and Reconciliation framework are always used regardless of the property value.
How Discovery identifiers work
When Discovery has determined the device's class, it launches an identity probe that is
configured to run one or more commands with a single authentication.
The identity probe in the base Discovery system can be configured to ask the device for
information such as its serial numbers, name, and network identification. The results of this scan
are processed by an identity sensor, which then passes the results to the identifier. The identifier
then attempts to find a matching device in the CMDB. If the identifier finds a matching CI, the
identifier either updates that CI or does nothing. If the identifier cannot find a matching CI, it
either creates a new CI or does nothing. If Discovery is configured to continue, the identifier
launches the exploration probes configured in the classification record to gather additional
information about the device. Exploration probes can be multiprobes or simple probes.

Note: When you use patterns for Discovery, the identity probe isn’t used. Discovery
uses the appropriate identifier rules based on the CI type that you’re trying to discover as
specified in the pattern operations. The operations in the pattern along with these identifier
rules perform the identification and exploration phases of discovery.
This diagram shows the processing flow for classifying and probing devices with identifiers
configured.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1026


<!-- page 1027 -->
Discovery identifiers

Configure Discovery identity probes
Identity probes are multi-probes, which contain one or more simple probes configured to extract
specific information from manageable devices. You can create your own identity multi-probe to
identify CIs that Discovery does not already identify.

Before you begin

Role required: discovery_admin or admin

About this task

Identity probes return such information as device serial numbers (there can be several per
device), the computer name, and network identification (MAC address). For example, the Linux
- Identity multiprobe provided in the system, contains two simple SSH probes configured to
return hardware and network information about the device. After the probe has discovered this
information, it passes the data to a multisensor configured to process identity information.

Note: A multiprobe cannot contain another multiprobe.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1027


<!-- page 1028 -->
Procedure
1. Navigate to All > Discovery Definition > Probes.
2. Select a probe from the list whose Class is Multiprobe.
3. Make sure the scope is set to Global.
4. In the Includes Probes Related List, click Edit to select simple probes to include in this
multiprobe.
5. Click New to create a new simple probe.

Example:
Discovery identity probes

What to do next

Configure Discovery identity sensors that are part of the identify probes.
Configure Discovery identity sensors
If you customize an identify multi-probe, you can also configure a multi-sensor for it.

Before you begin

Role required: discovery_admin or admin

About this task

These multi-sensors pass the data returned by the identity probes to the Discovery identifiers.
The identifiers then search the CMDB for matching CIs. When the identity of a device is resolved,
the identifiers pass the result state for the device to the multi-sensors, which react accordingly,
either by launching exploration probes or stopping Discovery for that device.

Procedure
1. Navigate to All > Discovery Definition > Sensors.
2. Select an existing identity multi-sensors from the list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1028


<!-- page 1029 -->
Note: To avoid confusion, the multi-sensors provided in the instance must have the
same names as their matching multi-probes.
The Responds to Probes related list shows the simple probes which pass their data to this
multi-sensors. These are the same simple probes that appear in the Includes Probes list in the
matching multi-probes record.
3. Click the Script link for each probe in the list to see the script that the multi-sensors runs to
process the data from the probe.

Example:
Discovery identity sensors

What to do next

Run a discovery through the Discovery Schedule to search for CIs and verify that they are
identified correctly in the CMDB.
Serial number types for identification
As Discovery finds CIs, their serial numbers are listed in the Serial Number
[cmdb_serial_number] table so they are easy to identify. Serial number types vary depending on
the CI, as described in the following examples.

Important: Serial numbers are necessary for accurate asset tracking. If you modified
baseline probes, sensors, or patterns, verify that they still discover serial numbers. In
addition, do not configure sensors or patterns to modify the serial number syntax, such as
adding a custom prefix. Non-standard serial numbers can lead to inaccurate asset tracking.

Linux
In the result of dmidecode | cat, the value on the left side is what Discovery looks for. The value
on the right side is how it is stored in the Serial Number [cmdb_serial_number] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1029


<!-- page 1030 -->
Serial Number : system_serial_number
UUID : uuid_serial
Serial Number : baseboard_serial
Serial Number : chassis_serial

Windows
For Win32 WMI classes, the value on the left is the name by which it is stored in the Serial
Number [cmdb_serial_number] table. The value on the right is the WMI value.
('system' : Win32_ComputerSystemProduct.IdentifyingNumber);
('uuid' : Win32_ComputerSystemProduct.UUID);
('chassis' : Win32_SystemEnclosure.SerialNumber);
('bios' : Win32_BIOS.SerialNumber);
('baseboard' : Win32_BaseBoard.SerialNumber);

SNMP
For SNMP, the mapping below is based on the code. Physical types of serial numbers are from all
instances of iso.org.dod.internet.mgmt.mib-2.entityMIB.
'cisco_stack' :
'iso.org.dod.internet.private.enterprises.cisco.workgroup.cisco
StackMIB.chassisGrp.chassisSerialNumberString'
'cisco_chassis' :
'iso.org.dod.internet.private.enterprises.cisco.temporary.chass
is.chassisId'
'foundry' :
'iso.org.dod.internet.private.enterprises.foundry.products.swit
ch.snChassis.snChasGen.snChasSerNum'
'apc_pdu' :
'iso.org.dod.internet.private.enterprises.apc.products.hardware
.masterswitch.sPDUIdent.sPDUIdentSerialNumber'
'printer' :
'iso.org.dod.internet.mgmt.mib-2.printmib.prtGeneral.prtGeneral
Entry'
'standard' :
'iso.org.dod.internet.private.enterprises.apc.products.hardware
.ups.upsIdent.upsAdvIdent.upsAdvIdentSerialNumber'
Discovery status
The Discovery status provides a summary of a Discovery launched from a schedule. You can also
cancel a Discovery that is in progress from the status form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1030


<!-- page 1031 -->
Note: Discovery schedules that have no status updates for a over a defined number of
minutes are analyzed automatically by the Discovery Status Monitor job. By default, this job
applies to Discovery schedules that discover configuration items. For more information, see
the Discovery Status Monitoring Job
article in the Now Support Knowledge Base.
To access the Discovery Status form, navigate to Discovery > Status and open the status record
for a Discovery.
Each record in the Status list represents the execution of a Discovery by a schedule and
displays such high level information as the date of the Discovery, the mode, the number of
probe messages sent to devices, and the number of sensor records that were processed. A
status record contains data that can help you troubleshoot a failed discovery. Use this data
to troubleshoot the behavior of individual probes and sensors or even run those elements
separately. Use the status controls to enter probe/sensor threads at any point for a specific
Discovery, and then follow the process in either direction. You can also clearly see which
classification probe ran and discovered a particular device by viewing the classification probe
column in the device list.
• Refresh: Refreshes the related tabs, including the Discovery Log and ECC Queue for
discoveries still in progress.
• Discovery timeline: The Discovery timeline is a graphical display of a discovery, including
information about each probe and sensor that was used.
• Discovery log entries: The Discovery Log shows information such as classification failures,
CMDB updates, and authentication failures. A Discovery Log record is created for each action
associated with a discovery status.
• ECC queue entries: Entries in the ECC queue provide you with a connected flow of probe and
sensor activity, as well as the actual XML payload that is sent to or from an instance.
• Device history: The device history provides a summary of all the devices scanned during
discovery, and what action sensors took on the CMDB.

Note: By default, only 30 days of Discovery records are displayed in the status list at a
time.
The following Discovery status record shows the discovery of a load balancer using a pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1031


<!-- page 1032 -->
Example Discovery status record

Field

Description

Number

An auto-generated number for the record.

Description How this Discovery was run. Typically, the description is Scheduled, but if you ran
Discovery manually from a Schedule, the record would show Discover Now in the
Description field..
Schedule

The name of the Discovery schedule.

State

The state of the discovery:
• Starting
• Active
• Completed
• Canceled

Started
The number of probes started and completed during discovery.
and
Completed
Source

Optional read-only field that shows the source of the Discovery, such as Schedule
Discovery, or Quick Discovery. If the source of the Discovery was from an API
call, the source is DiscoveryAPI.

From Schedule (Read-only schedule data)
Discover

Shows the Discovery type. The possible types are: Configuration items, IP
addresses, Networks, or Processes/Connections (ADM).

Max Run
Time

Displays the maximum amount of time Discovery was permitted to run on this
schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1032


<!-- page 1033 -->
Field

Description

Log state
changes

Indicates that state changes were logged during this Discovery. These states can
be seen in the Last and Current fields in theDiscovery Devices list in this form.

Related topics
Schedule a horizontal discovery
Cancel a Discovery from a Discovery Status
You can manually cancel a discovery while it is in progress from the Discovery Status record.

Before you begin

Role required: discovery_admin

About this task
Procedure
1. Navigate to All > Discovery > Status.
2. Click a Number to open the status record.
3. Click Cancel Discovery in the Related Links.
Cancel Discovery is only available for an active Discovery.

Result

When a Discovery status cancels, any associated sensor transactions are immediately
terminated and any scheduled sensor jobs are deleted from the system. After cancellation, the
cleanup Status shows the Completed count and the cancellation is logged in the Discovery log.
In the Queue [ecc_queue] table, any records belonging to sensors exceeding the Transaction
Quota Rule are set to the Error state.
Discovery timelines
A Discovery timeline generates a graphical display of a Discovery Status record, including
information about each probe and sensor that was used in the discovery.
Use Discovery Timelines to display the following:
• The flow of probes and sensors, including those that are used with patterns through a
discovery.
• The duration of each probe and sensor that ran during a discovery, and the proportion of time
required for queuing and processing.
• Tooltips containing additional data about a probe and sensor.
• Records from the ECC Queue.

Size of discoveries in the timeline
View timelines for an entire discovery or for individual devices in a discovery. By default, the
maximum size discovery that you can display in a timeline is 300 entries in the ECC Queue
(150 probes and 150 sensors). To display larger discoveries, change the default setting in the
glide.discovery.timeline.max_entries property.

Example Discovery Timelines
This example shows the Discovery timeline for the first two phases of Discovery (Port scan and
Classification):
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1033


<!-- page 1034 -->
Discovery (early phases) on the timeline

In this example, the Shazzam probe and sensor run, followed by the Unix classifier probe and
sensor. The classifier calls the Horizontal Pattern probe, which runs a specific pattern.
View the Discovery timeline
A Discovery Timeline generates a graphical display of a Discovery Status record, including
information about each probe, sensor, and pattern running.

Before you begin

Role required: discovery_admin or admin

About this task
Procedure
1. Navigate to All > Discovery > Status.
2. Select a Discovery from the record list.
3. Click the Show Discovery Timeline Related Link.
4. Clear the warning, and then select the Devices Related List.
5. Click the IP address of a device.
6. In the Device record, click the Show Discovery Timeline Related Link.
The Discovery timeline for that device appears.
Discovery Timeline

7. Use the pink slider at the bottom of the timeline to change the perspective.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1034


<!-- page 1035 -->
a. Move the slider from right to left to view all the tasks on a long timeline.
b. Adjust the end points of the slider to change the magnification.
A narrow slider zooms in on the spans and provides a more detailed view of complex
timelines. A wide slider pulls the view out and makes more of the timeline visible on the
screen.
8. Use the selector range at the top of the screen to adjust the visible time frame.
9. To limit the timeline to the length of the Discovery, click Max.
The time scale adjusts automatically to the length of the Discovery. The available time scale
range is from one day to 1 year.
Tooltips
Discovery timelines display probe and sensor performance data and CI information in tooltips.
Hover your cursor over a span to view this data.
Probes are displayed by black spans. The queue time for a probe is shown as a silver bar
within the span, and the processing time is represented by the remaining space.
Sensor spans are red, and the queue time is shown as a green bar. Selected spans of any type
display in yellow.
Discovery Timeline Shazzam Sensor

ECC Queue

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1035


<!-- page 1036 -->
Double-click a span to open the ECC Queue record for that probe or sensor.
Discovery Timeline ECC Queue

The ECC queue for Discovery
The External Communication Channel (ECC) Queue is a connection point between your
ServiceNow instance and other systems that integrate with it, most commonly a MID Server.

Contents of the ECC Queue
The ECC queue contains records that are created during all stages of discovery. Each record is a
message from the instance to system your are targeting for discovery, classified as output, or a
message from that system to the instance, classified as input.
ECC queue records provide you with a connected flow of probe and sensor activity along with
the XML payload sent to or from an instance and the assets you are targeting.

Automatic deletion of ECC queue records
As your IT Asset Discovery runs, the size of the ECC queue can grow to several gigabytes.
Most of the “completed tasks” records are unnecessary, but some might be important for
troubleshooting any problems.
For example, if Discovery is not properly capturing the disk drives on a particular Windows
server, you can look in the ECC Queue at the data returned by the Windows - System Information
probe. For this reason, you should retain ECC Queue data from Discovery for at least a month.
By default, records in the ECC Queue older than 7 days are deleted automatically. You can set
the deletion schedule by updating the ECC queue (as we will explain in the next section) and the
table rotation schedule. The table rotation names are:
• ecc_queue_event
• ecc_queue

Accessing the ECC queue
You can access the ECC queue from either of these locations:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1036


<!-- page 1037 -->
• Discovery > Output and Artifacts > ECC Queue
• ECC > Queue
The following image is an example of a record in the ECC queue. This record shows that a WMI
classifier probe was instructed to run and has been processed. Note the XML payload it returned
as the discovery task collected data. See The MID Server ECC queue
for a description of each
field.
An example ECC queue record

ECC queue states
Input and output messages keep processing until the discovery is finished or terminated. You
can monitor the ECC queue to see records populate during discovery and see the states of each
record change.
ECC queue input records are processed by business rules (BR), but not all business rules direct
these ECC queue inputs to process. As a result, some ECC queue inputs remain in a ready state.
The process is as follows:
1. When new probe instructions are available for the MID Server, the system creates an output
record with the state of ready.
2. The MID Server then starts processing the probe instructions and the state changes to
processing before it finally changes to processed.
3. When a result returns to the MID Server and is ready to be sent to the instance, the system
creates an input record with the state of ready.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1037


<!-- page 1038 -->
4. While the system processes the payload, the state changes to processing before it finally
changes to processed.
If any errors are encountered, the state changes to error. You can review errors as a starting
point for troubleshooting a failed discovery.

Debug processing of ECC queue records
To use a script debugger, process the payload on the same session as the debugger. Review
the business rule which processes the particular ECC queue record and the actual code which
processes the payload.

Properties and parameters that affect the ECC queue
These properties are available to control aspects of the ECC queue:

Property

Description

Save ECC
The normal behavior for discovery sensors is to delete attachments to ECC
queue
queue entries upon successful sensor processing. Enabling this property
attachments overrides this behavior, and forces attachments to be preserved. This is typically
done for debugging purposes.
To enable this property, navigate to Discovery Definition > Properties.
Related topics
Manage ECC Queue content for a MID Server
Discovery device history
The Devices related list in the Discovery Status form provides a summary list of all the devices
scanned.
During a Discovery, the list tracks current and completed activity and displays an incremental
scan counter. When Discovery is finished for a device, the final disposition is displayed in
the Completed activity column. Successful Discoveries that result in updated or created
CIs are highlighted in green. When device history or duplicate IP record is created, the
classification_probe is also populated. To view the log entries for errors (such as connection
failure) on a specific device, click the Details link in the Issues column.
Discovery device list

Click the IP address of a device in this list for details about that device. The log results for that
device are displayed in the list at the bottom of the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1038


<!-- page 1039 -->
Discovery device

The following fields are available in this form:

Field

Input value

Source

The IP address of the device discovered.

Completed Indicates the outcome of Discovery for this device or the last completed activity
activity
for a Discovery in progress, such as Identified CI. Successful outcomes are
indicated in green.
Current
activity

The current scanning activity for this device for a Discovery in progress, such as
Updating CI.

CMDB CI

The name of this device as it appears in the CMDB.

Started

The number of device-specific probes run. This number does not include the
universal probes, Shazzam and Ping, that run initially.

Completed The number of sensor records created from the device-specific probes that were
run.
Scan
status

Shows the final scan count of a completed Discovery or an incremental scan
counter for a Discovery in progress. For example, Scan 17 of 19.

Issues

Displays the number of issues encountered during Discovery of this device. Select
the Discovery Log Related List to view these issues.

Fields that can be added by configuring the form:
DNS
Names

Displays DNS names for each discovered device.

During different phases of Discovery, you may see different values in the Completed Activity
field on a discovery_device_history record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1039


<!-- page 1040 -->
Potential Values for Completed Activity in discovery_device_history
Value

When you might see this value

Meaning

Common examples
Alive, not active, not classified After Shazzam

Device is responding, but
it does not have any open
(active) ports that we can run
classification against.

Active

After Shazzam

Device has open (active) ports
that we potentially can run
classification against.

Classified

After Classification Probe

We were able to classify
the device type and will
be proceeding to the
Identification stage.

Active, couldn’t classify

After Classification Probe

We were unable to classify
the device type. Sometimes,
this value will also include
a reason for why we were
unable to classify. For
example, Active, couldn't
classify: No WMI connection.

Created CI

After Identification Probe/
Pattern or after Discovery Device Complete Business
Rule runs (for new CI)

New CI has been created
based on identification
results.

Identified CI

After Identification Probe/
Pattern

Existing CI has been found
based on identification
results.

Identified, ignored extra IP

After Identification Probe/
Pattern

Device has already been
discovered via a different IP in
same Discovery status.

Updated CI

After certain Exploration
Probes/Patterns or after
Discovery - Device Complete
Business Rule runs (for
existing CI)

CI has been updated with
additional information.

Unclassified

After Shazzam (only for
credential-less Discovery and
the Discover value on the
Discovery Schedule is set to
IP Addresses)

For the credential-less
Discovery of the target IP, we
were unable to match to an
existing CI on the instance.

Classified

After Shazzam (only for
credential-less Discovery and
the Discover value on the
Discovery Schedule is set to
IP Addresses)

For the credential-less
Discovery of the target IP,
we were able to match to an
existing CI on the instance.

Less common examples

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1040


<!-- page 1041 -->
Potential Values for Completed Activity in discovery_device_history (continued)
Value

When you might see this value

Meaning

Active, Windows Cluster VIP

After Windows - Classify

Device is a Windows Cluster
VIP and will be updated as
such.

Classified, but not disabled

After Classification Probe

We made a match to a
Classifier type, but the
classifier itself is disabled.

Classified, couldn't identify

After Identification Probe/
Pattern

Couldn’t create or match to
existing CI record.

Identified, not updating CI

After Identification Probe/
Pattern

We were able to properly
identify a CI record, but we are
choosing not to update the CI.

Any device that includes the following classes or one of its child classes will be displayed in the
Discovery device history table.
• Computer [cmdb_ci_computer]
• Network Gear [cmdb_ci_netgear]
• PDU [cmdb_ci_pdu]
• Printer [cmdb_ci_printer]
• UPS [cmdb_ci_ups]
If there were issues, or if Discovery failed to complete, click the Details link to view the log
records for the issue. The failure of any probe is considered an issue, even if the device was
eventually classified properly and updated in the CMDB.
Discovery details about a device

Address scan data
When Discovery scans for IP addresses only (without credentials or identifiers), no updates are
made to the CMDB. All IP addresses discovered appear on this list, including multiple IPs on
the same device. The results of IP address scans include slightly different information than the
results of a CI scan. Since there is no CMDB activity associated with the IP address scan, the
Completed activity column displays only the classification status.
Possible statuses are:
• Classified
• Unclassified
• Alive, not classified
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1041


<!-- page 1042 -->
For Classified devices, Discovery might identify the type of device in the Current activity column.
For example, Network Gear might be classified as Cisco Network Gear, and a Computer might be
classified as a Windows Computer.
Logs for horizontal discovery
The system collects logs to reflect the activity that takes place during a horizontal discovery
based on both patterns and probes. Use the logs to fine-tune or troubleshoot the discovery
process.
For horizontal discovery the system generates logs of the following types:
Probe-based
The logs for probe-based horizontal discovery cover classification failures, CMDB
updates, and authentication failures. A Discovery Log record is created for each
action associated with a discovery status.

Note: The Discovery log also displays errors that occur during identification
by taking log entries from the Identification Engine log. See Examine run logs
for more information about the identification engine and possible errors.
Pattern-based
The logs for pattern-based horizontal discovery include the information about
discoveries that were performed with patterns. A horizontal discovery log record is
created for an entire horizontal discovery run, which includes the results of all the
operations specified in the pattern.
Review the logs for horizontal discovery
Access the logs to understand the discovery process and fine-tune the discovery process.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Status.
2. Open a Discovery Status record.
The Discovery Log related list displays the logs for probe-based discovery. See Discovery log
details.

3. Optional: Find out the information related to the relevant log entry:
◦ Select the link in the CI column to open the record for that CI.
◦ Select the link in the Created column to view the log record.
◦ Select the IP address link in the Device column to view the log records for a particular
device.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1042


<!-- page 1043 -->
4. To view logs for pattern-based discovery, select the Here link for a log entry that has
HorizontalDiscoveryProbe in the ECC queue input.

The Horizontal Discovery Log window opens showing the list of pattern-based log entries. For
information on logged discovery phases, see Discovery log details.
Horizontal Discovery log

5. Select an item in the left-hand column to see more information about it in the right-hand
column.
6. Optional: To debug the pattern, select the name of the Identification Section, and then select
the Debug button.
7. To return to the log record, select Close.

What to do next
• To fine-tune or troubleshoot the pattern-based discovery, retrieve the payload as described in
KB0998923: Retrieve Payload Feature .
• Validate commands used in pattern-based discovery, if there is one of the following errors:
◦ Authentication issue
◦ Authorization/Permission issue
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1043


<!-- page 1044 -->
◦ No Valid credentials present
◦ IP not reachable from mid
◦ Command with wrong syntax
• If there is an error in payload processing, select the IRE Error Documentation button to learn
about the Identification and Reconciliation Engine (IRE) error that occurred and how to resolve

it.
Related topics
Identification and Reconciliation engine (IRE)
KB0854603: Pattern Debugger Session Timed Out
Change retention time for probe-based discovery logs
You can configure the amount of time that Discovery retains log entries for the probe-based
horizontal discovery.

Before you begin

Role required: admin

About this task

By default, the probe-based discovery log retains information for 30 days, or 2,592,000 seconds.

Procedure
1. Open the Auto Flushes table by typing sys_auto_flush.list in the navigation filter.
2. Open the discovery_status record.
3. Change the value in the Age in seconds field.
4. For the change to take effect immediately, run the Table Cleaner Job in the Schedule
[sys_trigger] table.
5. Click Update.
Discovery commands for probes and patterns
Discovery commands are used for both probe and pattern-based discovery to access
configuration items (CIs) in your environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1044


<!-- page 1045 -->
For information about Service Mapping commands, see Prerequisites for performing top-down
discovery using Service Mapping.

Probe-based discovery
Discovery runs several different types of commands during probe-based horizontal discovery.
Some of these commands require elevated privileges to run.
Resources for information about commands and permissions for probe-based discovery
Command/Permission

Resource

SSH commands requiring a
privileged user

SSH commands requiring a privileged user during probebased discovery

SSH commands not requiring a
privileged user

SSH commands not requiring a privileged user during
probe-based discovery

Windows commands and
permissions

Windows probes and permissions

Additional permissions

Discovery probe permissions

Pattern-based discovery
Discovery runs several different types of commands during pattern-based horizontal discovery.
Some of these commands require elevated privileges to run. For pattern-based discovery,
you can view all the commands used by a specific infrastructure or application pattern on the
ServiceNow AI Platform and validate them before running discovery. For cloud resource patterns,
you can view all the required permissions in the Cloud Discovery patterns spreadsheet.
Resources for information about viewing and validating pattern-based discovery commands
and permissions
Action

View commands used by infrastructure and
application patterns

Resource

• View Patterns commands through the
Discovery Patterns module*
• View Patterns commands through the
Command List module
• Command List form for pattern-based
discovery

Validate commands used by infrastructure
and application patterns

• Validate commands used in pattern-based
discovery*
• View command validation task results in
pattern-based discovery
• Command Validation Tasks form for patternbased discovery

View permissions required by cloud resource
patterns

Cloud Discovery patterns spreadsheet

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1045


<!-- page 1046 -->
* These tasks are exclusive to the discovery_admin role and can't be performed by users with the
pde_viewer role.
Related topics
KB1123625: Command Validation Tool
View Patterns commands through the Discovery Patterns module
View all the commands required for an infrastructure or application pattern to verify you have
sufficient permissions to run discovery.

Before you begin
• Confirm that the following applications have been installed:
◦ Pattern Designer Enhancements (sn_itom_pde)
◦ Discovery and Service Mapping Patterns (sn_itom_pattern)
• If you’re viewing commands for the first time, have upgraded Discovery and Service Mapping
Patterns, or have customized any pattern, refresh the command list by navigating to All >
Pattern Designer > Command Validation Tool > Commands List and selecting Refresh
Command List.
Role required: discovery_admin

About this task

The discovery_admin role is required to access the Discovery Patterns module. Starting
with Pattern Designer Enhancements version 3.9.0, the new pde_viewer role can view pattern
commands through the Command List module but can't edit or modify them. For more
information, see View Patterns commands through the Command List module.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. In the Name field, search for the relevant pattern.
3. Select and hold (or right-click) the name of the pattern and select List Pattern Commands.

Result

You’re redirected to the Command List form filtered for the selected pattern.
For more information on the Command List form fields, see Command List form for pattern-based
discovery.
Related topics
Discovery commands for probes and patterns
Validate commands used in pattern-based discovery
View command validation task results in pattern-based discovery
View Patterns commands through the Command List module
View and filter infrastructure or application pattern commands by various criteria, including
pattern, CI type, or command, to confirm you have all the required permissions.

Before you begin
• Verify that Pattern Designer Enhancements (sn_itom_pde) is installed.
• If you have the discovery_admin role and match one of these conditions, refresh the command
list:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1046


<!-- page 1047 -->
◦ You are viewing commands for the first time
◦ You have customized any pattern
◦ You have upgraded Discovery and Service Mapping Patterns
You can refresh the command list by navigating to All > Pattern Designer > Command
Validation Tool > Commands List and selecting Refresh Command List.

Note: The pde_viewer role can't refresh commands.
Role required: One of the following.
• discovery_admin
• pde_viewer (starting with Pattern Designer Enhancements version 3.9.0)

About this task

Starting with Pattern Designer Enhancements version 3.9.0, the new pde_viewer role can view
commands through the Command List module but can't edit or modify them.

Procedure
1. Navigate to All > Pattern Designer > Command Validation Tool > Commands List.
2. Filter the command list according to your requirements.
For more information about the filtering options, see Command List form for pattern-based
discovery.
Related topics
View Patterns commands through the Discovery Patterns module
Validate commands used in pattern-based discovery
View command validation task results in pattern-based discovery
Discovery commands for probes and patterns
Validate commands used in pattern-based discovery
Validate pattern commands to verify that the MID Server can successfully run them. Typically,
commands might fail if you haven't configured the credentials necessary to run these commands
on your ServiceNow instance. Another common reason of command failure is that the IP
addresses used for discovery aren’t reachable.

Before you begin
• Verify that you have the following applications:
◦ Pattern Designer Enhancements (sn_itom_pde)
◦ Discovery and Service Mapping Patterns (sn_itom_pattern)
• Check the log for horizontal discovery based on patterns, as described in Review the logs for
horizontal discovery.
• If you are viewing commands for the first time, have upgraded Discovery and Service Mapping
Patterns, or have customized any pattern, refresh the command list by navigating to All >
Pattern Designer > Command Validation Tool > Commands List and selecting Refresh
Command List.
• To be able to test credentials on an IP range or IP network, install the ParseIPRanges script
include attached to the KB article: KB1123625: Command Validation Tool .
Role required: discovery_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1047


