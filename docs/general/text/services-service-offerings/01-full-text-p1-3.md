# What are services and service offerings? Questions addressed:          A service is a means of delivering value to custo â€” Full text

Source: services-service-offerings.pdf | Release: general | Pages: 1â€“3 of 3

Sections: Full text (p1)

---

<!-- page 1 -->
What are services and service offerings?

Questions addressed:          A service is a means of delivering value to customers by facilitating outcomes that customers want to achieve without owning
                              the costs and risks.
Page 1:
                              A service offering consists of one or more service commitments that uniquely define the level of service in terms of availability,
· What is a service and       scope, pricing, and packaging options. Customers can choose to receive different levels of performance and features for a
   a service offering?        given service through service offerings (typically made available as distinct items in the service catalog).

· How is a service            A service can have multiple service offerings (each made available as separate catalog items) with different service level
   different from a           agreements (SLAs).
   project?
                              Examples of a service and service offerings          How is a service different from a project?
Page 2:
· What are the different      Example #1:                                          Project                                     Service

   types of services?                         Business service                     · This is a point-in-time effort to  · This is the ongoing management
   Examples?                               Financial accounting                       build new functionality or           and enhancement of existing
                                                                                      deliver a business change, such      functionality or a business activity,
· How do different                            contains                                as deploying a new                   like server management.
   services relate to each                                                            application.
   other?                        Offering #1                Offering #2                                                 · Success is measured in terms of
                              General ledger                 Payables              · Success is measured in terms of       ongoing service performance
· How should we                                                                       project delivery (schedule,          (quality, cost, demand, and
   categorize services?       Example #2:                                             budget, scope).                      business impact).

Page 3:                                    Technical service
· What best practices                             Hosting

   should I consider?                             contains                         · A project is managed by a          · A service is managed by a
                                                                                      project manager who moves to         service manager who owns the
 If you have any questions         Offering #1                    Offering #2         a new project once the current       entire service lifecycle from
 on this topic or you would   Hosting (standard)            Hosting (advanced)        project is complete.                 launch to retirement.
 like to be a contributor to
 future ServiceNow best
 practice content, please
 contact us.

                                                                                1                                              © 2021 ServiceNow, Inc. All Rights Reserved.

<!-- page 2 -->
What are services and service offerings? (Continued)

 What are the different service types available in ServiceNow?
 ServiceNow® ships with three fundamental service types (below). You can define new types to align with the service architecture in your organization.
 For example, if you have shared services, such as an analytics service, you can have a separate service type defined in ServiceNow.

             1 A business service is a service type that is published to business users. It typically supports one or more business capabilities. A business
                 capability is a high-level capability (or a set of specific tasks) that an organization requires to execute its business model or fulfill its mission.

             2 An application service is a service type that is a logical representation of a deployed application stack. Note: An application service is
                 different from an application, and there is no one-to-one relationship between them. (See the example in the figure below.)

             3 A technical service is a service type that is published to service owners. It typically underpins a business or application service.

Can you give examples of different service types and their relationships?                             How should we categorize services into different types?
                                                                                                      Use these questions to effectively categorize a service:
Here's one example:
                                                                                                         · What are the outcomes enabled through this service?
         Business capability                                         Business                            · Can this service stand alone, or does it need to be used in
         Managing finance                                            Services
                                                                     Infrastructure                         conjunction with another one?
                                                                                                         · Who owns this service?
                                     Supported by                                                        · Who will pay for this service?
                                                                                                         · Who are the key users of this service?
Provided by              Business service                Consumes                 Shared services
                      Financial accounting                                     Analytics
Business application
    General ledger                             Contains

                               Offering
                          General ledger

                                                         Depends on

Consumes                             Application service

                                     SAP finance                     Consumes

Technical service Contains Offering  Manages            Depends on

Hosting               Linux                   Tech infrastructure
                                              Application server

                                                                     Consumes

                                                                                                   2  © 2021 ServiceNow, Inc. All Rights Reserved.

<!-- page 3 -->
What are services and service offerings? (Continued)

  What service management best practices should we consider?

                                          Best practice                                          Resources to help you implement

1. Create a standard set of definitions for service reporting and service        Refer to the ServiceNow Common Services Data Model.
    modeling.
                                                                                 Refer to our Success Playbook on designing a world-class
2. Define and categorize service offerings in the service catalog based on       service catalog.
    user needs.
                                                                                 Refer to our process guide on service catalog and request
3. Understand the request management process within the Now Platform®.           management.

4. Align your services model with the data model in the CMDB.                    Start with our Success Playbook on planning your successful
                                                                                 CMDB deployment.
5. Manage all services and service offerings within the service portfolio.
                                                                                 Learn about the ServiceNow Service Portfolio module and its
6. Define user roles and limit access to service types based on those roles.     benefits.

                                                                                 Learn about how to enable subscribe by user for your service
                                                                                 offerings.

                                                                              3  © 2021 ServiceNow, Inc. All Rights Reserved.

