# High Level ServiceNow Data                                                             Model Relationships               — Full text

Source: ServiceNow-Data-Model-v3.4.pdf | Release: general | Pages: 1–66 of 66

Sections: Full text (p1)

---

<!-- page 1 -->
                                                       High Level ServiceNow Data
                                                            Model Relationships

                                                           2         Catalog Task                       3                  Content            9
                                                        Task         Approval Task                                            Item      Knowledge
                                                    Data Model                           Service Catalog                                Data Model
                                                                                            Data Model                     Business
                                                               Task                                                         Service            Affected
     Caller                                                   Cards           Available                                                        Products
Requested by                                                                      for
 Assigned to                                                                                                                                  4
                                                                                                                                          CMDB
   Location                                                                                                                           Data Model

                Requested by                                                                 Affected CI                                      6
                Requested for                                                            Impacted Service                               Model
                                                                                                                                     Data Model
         1                                                           Expense                                Supported by
                                                                        Line                               Approval Group
Organizational
  Data Model                                                                                                 Managed by

                                                                              7                            CI Cards
                                                                                                           CI linked to Asset
                                       Cost Center     Expense       IT Cost Management
                                       Department      Allocation          Data Model

                                                                                         Expense
                                                                                            Line

Measures Service Contract Users         Assigned to                           5
   Levels provided Contract Locations       Owner
                                           Location
                   8
                                       Chargeback to

     SLA                                                             Asset & Contract                      Model Category
Data Model                                                               Data Model

                                       Assets Covered

<!-- page 2 -->
                                                                  1 Organizational Data Model

Location                                                                                                        Company

cmn_location                                                                                                    core_company

                                                 Parent                                                                               Parent

                                                 Cost Center

                                                 cmn_cost_center

                                                                  Parent

Building                                                          Department

cmn_building                                                      cmn_de pa rt me nt

                        Stockroom                                                     Parent

                                  alm_stockroom                                                   User

                                                                                                      sys_user

                                                                                                                Manager

                                                                                                                  Has roles                     Roles

                                                                                                                sys_use r_ha s_r ole          sys_user_role

                                                                                      Is member of                                       Has roles

                                                                                      sys_use r_gr m em be r                          sys_group_has_role

                                                                                                                   Group                      Types (examples)
                                                                                                                                              Support (ActionCentre)
                                                                                                                sys_use r_gr o up             Access (DL, Security)
                                                                                                                                              Catalog: (Approval)
                                                                                                                                              Change (CAB)

<!-- page 3 -->
                                                                                                              1b Organizational Data Model (Hierarchical example)

                                                                                                                                                                                                                             Company

                                                                                                                                                                                                                             core_company

                                                                           Location                                                                                                              Company             Parent

                                                                           cmn_location                                                                                                          core_company

                                                                          Type: Country

                                                                                                                                                                                         Parent

                                                                  Parent                                   Cost Center                                        Department

                                               Location                                                           cmn_cost_center                                    cmn_de pa rt me nt
                                                                                                                      Type: PNL                                       Type: Division
                                                    cmn_location
                                                 Type: Prov/State                                              Parent                                           Parent

                                              Parent                                     Cost Center                                         Department

                               Location                                                  cmn_cost_center                                      cmn_de pa rt me nt
                                                                                         Type: Customer                                    Type: Business Unit
                               cmn_location
                                Type: City

                                                                          Parent

                       Parent                                                                                                      Parent

                Location        Cost Center                                                                   Department

                cmn_location    cmn_cost_center                                                               cmn_de pa rt me nt
                                                                                                               Type: Section
               Type: Building  Type: Cost Center

                                                                                         Parent

               Parent

               Location                                                                   Department

               cmn_location                                                               cmn_de pa rt me nt
                                                                                         Type: Department
               Type: Room

                                                                                                                                            User

                                                                                                                                           sys_user

Stockroom                                                                                                                                                             Has roles                       Roles

alm_stockroom                                                                                                                                                         sys_user_has_role              sys_user_role

                                                                                                                                           Is member of                       Group                 Has roles

                                                                                                                                           sys_user_grmember                    sys_user_group   sys_group_has_role

                                                                                                                                                                          eg. Network                                        Types (examples)
                                                                                                                                                                                                                             Support (ActionCentre)
                                                                                                                                                                   Parent                                                    Access (DL, Security)
                                                                                                                                                                                                                             Catalog: (Approval)
                                                                                                                                                                  Group                                                      Change (CAB)

                                                                                                                                                               sys_user_group
                                                                                                                                                              eg. Network-East

<!-- page 4 -->
1b Skills Management Data Model

                                           User

                                                         sys_user

                             Has Skills

                          (sys_user_has_skill)

      Task                                       Is member of

           task                                 (sys_user_grmember)

Tasks can be assigned                                                       Group
based on required skills
                                                                                  sys_use r_gr o up

                          Skills                  Has Skills

                          cmn_skill             sys_group_has_skill

                          Contained Skills
                          cmn_skill_contains

                          Skills Required for                                                        Product
                          Model Maintenance                                                            Model

                             cmn_m2m_skill_model                                                     cmdb_model

<!-- page 5 -->
                                                                        2 Task Data Model Extensions

Task                                                 Incident                                                                                    Audit Observations

 task                                                     incident                                                                                             grc_ob servat io n

Fields defined at task level                         Problem             Problem Task                                                                Requirements
(inherited by all extended tables)
                                                          problem             pr o blem _ta sk                                                             gr c_au dit_r eq uire m ent
- Active                 - Knowledge                                                            Change Request
- Activity Due           - Location            Change Request           Group Approval                 IMAC                                              Activity
- Additional Comments    - Made SLA
- Approval               - Number                   cha ng e_r eq uest    sysapproval_group      change_request_imac                                               grc_act ivity
- Approval History       - Opened
- Approval set           - Opened by            Change Phase              Change Task                      Work Order          Demand
- Assigned to            - Order
- Assignment Group       - Parent                   change_phase              change_task                           wm_order   dmn_demand
- Business Duration      - Priority
- Close Notes            - Reassignment Count        Request              Catalog Task                      Work Task                                       HR Case
- Closed                 - SLA due
- Closed by              - Service offering             sc_request                sc_task                           wm_task                                     hr_case
- Comments & Work notes  - Short Description
- Company                - Skills               Requested Item                 Issue                      Service Order                                    HR Change
- Configuration Item     - State
- Contact Type           - Sys ID                       sc_req_item                issue                             sm_order                                 hr_change
- Contract               - Task type
- Correlation ID         - Time worked           KB submission                                             Service Task                                      HR Task
- Correlation display    - Updated
- Created                - Updated by                 kb_submission                                                   sm_task                                    hr_task
- Created by             - Updates
- Delivery plan          - Upon approval        Loaner Request
- Delivery task          - Upon reject
- Description            - Urgency                   loaner_request
- Domain                 - User input
- Due date               - Watch list                  Ticket
- Duration               - Work end
- Escalation             - Work notes                       ticket
- Expected start         - Work notes list
- Follow up              - Work start          Chat Queue Entry
- Group list             - Questions
- Impact                 - Label                   chat_queue_entry

                                               Planned Task             Private Task                                           Facilities Request

                                                   planned_task               vtb_task                                              facilities_request

                                                                        See next page                                          Facilities Request
                                                                                                                                        Task

                                                                                                                                  facilities_request_task

<!-- page 6 -->
                                               2 Planned Task Data Model Extensions

Task      Planned Task        Release              Phase              SDLC Release                          SCRUM Release

 task           planned_task  rm_release       rm_release_phase         rm_release_sdlc                        rm_release_scrum

       - Actual Cost          Feature             Release Task                           Enhancement        SCRUM Release
       - Actual Duration
       - Actual Effort        rm_feature                   rm_task                        rm_enhancement             rm_sprint
       - Budget Cost
       - Critical Path        Product                                                    Defect                     Epic
       - Estimated Cost
       - HTML Description     rm_product                                                 rm_defect                    rm_epic
       - Level
       - Percent Complete                                               Testing task                               Story
       - Planned Duration
       - Planned Effort                                                        rm_test                               rm_story
       - Planned End Date
       - Planned start date                                           Documentation                           SCRUM Task
       - Remaining Duration                                                  task
       - Remaining Effort                                                                                        rm_task_scrum
       - Rollup                                                                rm_doc
       - Subtree root
       - Time Constraint        Test Plan
       - Top Task
       - WBS                     tm_test_plan
       - WBS Order
                              Assessment
                                                   Test Case
                               cl_assessment
                                               tm_test_case_instance

                                                                         Project         Project Task

                                                                          pm_project     pm_project_task

                                                                      Requirement          Decision

                                                                      dmn_requirement      dmn_decision

                                                                      Audit              Control Test

                                                                      grc_audit           grc_control_test

                                                                                                            Remediation

                                                                                                             grc_remediation

<!-- page 7 -->
                                    2 How different Task Types Reference CMDB

          Task        Incident Categorization                              Impact Services         Business
                                                                           Affected CI              Service
- Opened by                         Problem Root Cause Analysis
- Assigned to                                                                      Affected CI   cmdb_ci_service
- Assignment Group
- Closed by           Problem                                                                   Configuration
- Location                                                                                            Item
- Company
- Configuration Item                                                                                   cmdb_ci

                                     Change Impact Assessment              Impact Services         Business
                      Change                                                Affected CI             Service

                                              Change                                             cmdb_ci_service
                                                Task
                                                                                                Configuration
                                                                                                      Item

                                                                                                       cmdb_ci

                                    Approval
                                    Request

                      Request       Requested                     Catalog  Part of                 Business
                                        Item                        Task                            Service
                            KB                                             Create
                      submi ssi on      Knowledge                            new                 cmdb_ci_service
                                            Article
                       Planned                                                                  Configuration
                         Task              kb_kno wle dg e                                            Item

                                               Project                                                 cmdb_ci

                                                  pm_project               Related to           Configuration
                                                                            Affected CI               Item
                                               Product
                                                                                                       cm db_ci
                                                   rm_product
                                                                                                 Business
                                               Release                                            Service

                                                   r m_r elea se                                cmdb_ci_service

                                                                           Affected CI          Application

                                                                                                  cmdb_ci_apl

<!-- page 8 -->
                                                                2a Incident Management Data Model

                   User (Caller)        Location                                 Group

                        sys_user        cmn_location                             sys_group

      Change       Caused by Change                   Incident                   Categorization                          Business
      change           Resolved by                    incident                                                            Service

   Metric                                                                                                                       cmdb_ci_service
 Definition
                                                                                                                                                 Configura ti on
metric_definition                                                                                                                                      Item

                                                                                                                                                     cmdb_ci

                                                                                                 Problem
                                                                                                 problem

                                                      Affected CI
                                                         task_ci

                   Metric Instance      Task SLA                Configura ti on
                                                                      Item
                       metric_instance     task_sla
                                                                    cmdb_ci

<!-- page 9 -->
                                                     2b Problem Management Data Model

                                                           Group              User

                                                                  sys_group  sys_user

                                        Assignment Group
                                                       Assigned to

                   Incident             Problem                              Categorization       Configuration Item
                                                                                                         cmdb_ci
                     incident             problem                              Problem Task
                                                                                                  Change
                                                Affected CI                         problem_task
                                                   task_ci                                          change

   Metric          Metric Instance      Task SLA     Configuration Item
 Definition                                                 cmdb_ci
                       metric_instance     task_sla
metric_definition

<!-- page 10 -->
                                                                                    2c Change Management Data Model

                                          Location                                                    Group

                                          cmn_location                                                sys_group

                 User

                sys_user

                                                                                    Assignment Group

                                          Requested by

                                                                                                      Categorization               Configuration
                                                                                                                                         Item
                                                        Change Request
                                                                                                                                          cmdb_ci
                                                                  change

                Conflicts

                   conflict

                Affected CI                                                                                                     Incident caused by
                   task_ci
                                                                                                                                Change Phase
                                          Impacted Services/CIs
                                           task_cmdb_ci_service                                                                     change_phase

                                                           Approvers                Problem           Release

                                                        sysap pr ova l_ap pr ove r    problem         rm_release

                                                                                    Other task tables linked to Change Request                        Incident

                                                                 Change Management                    Release Management           Change Task          incident
                                                                 - Change Request                     - Implemented by Release
                                                                 - IMAC                               - Release Phase                 cha ng e_ta sk
                                                                                                      - Feature (Release)
Configuration    Business                                        Incident Management                  - SDLC Release (SDLC)
      Item        Service                                        - Incident                           - Enhancement (SDLC)
                                                                 - Issue                              - Defect (SDLC)
       cmdb_ci  cmdb_ci_service                                                                       - Documentation Task (SDLC)
                                                                 Problem Management                   - Testing Task (SDLC)
    Other m2m Affected record links                              - Problem Task
       Affected Groups (task_group)                              - Problem Analysis (KT Plugin)       Project Management
                                                                                                      - Project
    Affected Locations (task_location)                           Request Fulfillment                  - Project Task
Affected Cost Centers (task_cost_center)                         - Catalog Task                       - Project Task Link

                                                                 Field Service Management             Demand Management
                                                                 - Work Order                         - Requirement
                                                                 - Work Order Task                    - Decision
                                                                                                      - Demand

<!-- page 11 -->
                                                    2d     Release Management 2.0 Data Model

Application                                                                      Change Request

 cmdb_ci_appl                                                                         change_request

                    Product                                                                            DSL

                            rm_product                                                                   dsl

                           Parent                                     Deployed with
             Affected CI                                   Pending

                 task_ci                                     Generated by

Configuration                           Release
      Item
                                        rm_release
       cmdb_ci
                                        Release Phase

                                         rm_release_phase

                                                           Release Feature               Feature Type
                                                                                  Enhancement
                                                             rm_release_feature   Defect
                                                                                  Administration task
                                                                                  ...etc.

                                                                                 Feature Tasks               Task Type
                                                                                                        Scope
                                                                                      r elea se_ta sk   Design
                                                                                                        Develop
                                                                                                        Test
                                                                                                        Document

<!-- page 12 -->
                                                                   2f Alert Management Data Model

                                    User        Source                   Incident                  Configuration Item
                                                Incident                                                  cmdb_ci
                                   sys_user                                incident
                                                                                                    Source CI
Group
                                                                                                   Impacted CI
sys_gr o up
                                                                                                      imp act ed_ci
                                   Assigned to
                                                                                                          Impacted CI s
Assignment Group                                Incident Alert
                                                                                                            Configuration Item
                                                   incident_alert                                                  cmdb_ci

     Contact                       Group
   Definition                      Contact

   contact_definiton                         Contact                       Impacted CI

     Contact                                                              Related
Responsibility                                                           Problems

con ta ct_r esp onsib ility        Contact            Related Incidents

                           Group     con ta ct
                          Contact
                                                                         Incident       Problem

                                                                           incident       problem

                                   Contact

Group                               User

sys_group                          sys_user

<!-- page 13 -->
                                                       2g        Event Management Data Model

   Source                  Registered Node                                                                                Configuration Item

em _eve nt _sou r ce                    xxx                                                                                           cmdb_ci

                                                                                                                                                          Configuration Item

                                                                                                                                                                      cmdb_ci

                                             Resource            The resource on the
                                                                 node that generates the
                                                                 event, such as RAM,                                                                      Affected Services
                                                                 disk, or database
Events created from        Event                                 server.ext                                                              Create Alert to  Alert to CMDB
  monitoring tools                                                                                                                       CMDB Service         Service
                           em_event                                                            Active Alert
                                                                                                                                                link                 xxx
                                                                                                                em_alert

   Source             Event Type             Event Filters                                                                Alert Rule                                      Incident

em_event_source       em _eve nt_typ e        em _eve nt_filter                                                           em_alert_rule                                     incident

                                                                                                                                         Create Incident

      The source that
   generated the event,
such as Icinga or Nagios.

<!-- page 14 -->
                                     3 Service Catalog Data Model

Category              Category Available for              User Criteria                                                                                   Product Catalog
                                                                                                                                                                  Item
sc_cat eg ory         sc_cat eg ory_use r_crit eria_mtom     use r_crit eria
                                                                                                                                                            pc_product_cat_item
                                                                                                                           Product Model
                                                                                                                                                         Business Service
                                                                                                                                cmdb_model                 Catalog Entry

               Category Not Available for                                                                                                                  sc_cat_item_service

               sc_cat eg ory_use r_crit eria_no _mtom

                                                                             Catalog Item
                                                                             Not Available

                                                                                    for

                                                                             sc_cat_item_user_

                                                                             crit eria_no _mtom                            Vendor Catalog                                               Business
                                                                                                                                                                                         Service
                                                          Catalog Item                                                      pc_vendor_cat_tiem
                                                            Available                                                                                                                  cmdb_ci_service
                                                                 for

                                                          sc_cat_item_user_

                                                          crit eria_mtom

                                                                              Catalog Item

                                                                              sc_cat_item

                Ordered Item                                                                                 Item                Shopping
                      Link                                                                                                          Cart
                                                                                                          sc_cart_item
               sc_ordered_item_link                                                                                                  sc_cart

                                                                                                 Creates  Requested                     Request                 Service Offering
                                                                                                               Item
                                                                                                                                             sc_request             service_of fering
                                                                                                          sc_request_item
                                                                                                                            Grouped
                                                                                                                           together by

                                     Workflow

                                                               Workflow       Creates                     Approval
                                                          Approval Activity                                  User

                                                                                                          sysapproval_

                                                                                                            approver

                                                          Workflow Task                                   Approval
                                                               Activity                                     Group

                                                                                                          sysapproval_

                                                                                                               group

                                                             Incident,        Creates tasks to                                              1. Order & Receive
                                                             Change,          fulfill the request                                           2. Configure
                                                          Enhancement                                                                       3. Install
     Record           Creates        Task                    , Defect,                                                     Task                                 When closed it   Configuration
    Producer                                                Project etc                                                                                         creates a CI *         Item

sc_cat_item_producer                                                                                                                                                                    cmdb_ci

<!-- page 15 -->
                                                                  3a Service Catalog Data Model Extensions                                                         Catalog Item               Application File
                                                                                                                                                                      Category
Configuration Item                                                Product Model                                                        Hardware Catalog                                            sys_metadata
                                                                                                                                                                 sc_cat _item _cat eg ory
            cmdb_ci                                                    cmdb_model                                                         pc_hardware_cat_item                               Catalog Item
                                                                                                                                                                      Category
               Business Service                                                                   Hardware Model                       Software Catalog                                          sc_cat_item
                                                                                                                                                                         sc_cat eg ory
                          cmdb_ci_service                                                               cmdb_hardware_product_model       pc_product_cat_item
                                                                                                                                                                       Vendor
                              Service Offering                                                                                          Service Record             Catalog Item
                                                                                                                                            Producer
                                               service_of fering                                                                                                   pc_vendor_cat_item
                                                                                                                                     sc_cat_item_producer_servi
                                                                  Task                                                                                ce               Product
                                                                                                                                                                    Catalog Item
                                                                   task
                                                                                                                                                                   pc_product_cat_item
                                                                         Request
                                                                                                                                                                 Record Producer
                                                                         sc_r eq uest
                                                                                                                                                                  sc_cat _item _pr o duce r
                                                                         Requested Item
                                                                                                                                                                    Content Item
                                                                            sc_request_item
                                                                                                                                                                   sc_cat _item _con te nt
                                                                         Approval Group
                                                                                                                                                                 Wizard Launcher
                                                                           sysapproval_group
                                                                                                                                                                    sc_cat_item_wizard
                                                                         Approval (user)
                                                                                                                                                                    Order Guide
                                                                         sysap pr ova l_ap pr ove r
                                                                                                                                                                    sc_cat_item_guide

                                                                                                                                                                 Business Service
                                                                                                                                                                   Catalog Entry

                                                                                                                                                                    sc_cat_item_service

                                                                         Catalog Task

                                                                                sc_task

<!-- page 16 -->
                                                                    3b Service Portfolio Management Data Model

Category                                                            Business Process                             Is enabled
                                                                                                                      by
sc_cat eg ory                                                       cmdb_ci_business_process

                                                                    Enables

 Catalog Item                               Business Service                                                     Business Service                                           Location                         Department                            Company
    Category                                  Catalog Entry
                                                                                                                      cmdb_ci_service                                       cmn_location                     cmn_de pa rt me nt                    cor e_com p an
sc_cat _item _cat eg ory                       sc_cat_item_service

                                                                In Scope                                                               Parent                                  Subscribed by                     Subscribed by                        Subscribed by
                                                                                                                                                                                   Location                        Department                             Company
                                                                       service_in_scope                                                         Service Offering
                                                                                                                                                                            ser vice_sub scr ib e_loca tion  service_sub scrib e_de pa rt me nt    service_subscribe_company
                                                                                 Out of                                                                  service_of fering
                                                                                  Scope

                                                                                           ser vice_ou t_scop e

                                     Service Scope

                                         service_scope

          Incident                                                                                               Service Commitments                                                                              Subscribed by                       Subscribed by
          incident                                                                                                                                                                                                       Group                               User
                                                                                                                  service_of fering_commitme nt
Task Outage Link                                                                                                                                                                                             ser vice_sub scr ib e_sys_use r_gr p  service_subscribe_sys_user
                                                                                                                            Contract
        task_outage                  Task SLA                       Service SLA                                                                                             Subscribed by
                                                                       Results                                                   ast_contract
                                        task_sla                                                                                                                              cmdb_subscriber
                                                                    service_sla_result
                                                     SLA
                                                                                                                                                                             User                               Group                               User
                                                      contract_sla
                                                                                                                                                                            sys_user                         sys_user_group                        sys_user
                                                                             Commitments
                           Schedule
                                                                                        service_commitment
                          cm n_schu ed ule
                                              Outages During
                                            Interval (calculated)                                                               Service
                                                                                                                              Availability

                                                                                                                             service_availability

                                                                    Vendor Credit

                                                                         vnd r_cr ed it

                  Outages

               service_availability

<!-- page 17 -->
                                                       4 CMDB Data Model

                                                                                                                              User                                            Location

         Business       Is enabled                                              Access              Group       Is member of
         Process             by                                               provided by
                                                                                                     Provides
                                                                                                     access to                                                                         Contains    Data
                                                                                                                                                                              Cools Room          Center

         Enables        Business Email                   Depends on                                                                                   Computer
                         Service                       Used by                                                                                        Room AC
           Bus iness
             Service                                                          Application           Exchange
            Catalog                                                                                    Runs on
                                                                                                                                        Network                                      Computer     Located
              Entry                      Used by                                                                Exchanges                Switch                    Cooled by           Room           in
                                                                                                                 data with
                                                                                      Runs          Server                              Storage                              Houses
                                                                              Exchanges             BES            Sends                 Device
                        Depends on                                             data with                          data to                                                            Located
                                                                                                                                        Depends on                                       in
Catalog                                                BlackBerry                      Application              Receives
  Item                                   Business                                                               data from                                                     Zone
                                          Service                 Depends on
                                                                 Used by
                                                                                                                                                                     Zone
                                                                                                                                                                   contains

                                                                                                    Runs on

                        SLA                                                   Runs                  Server                                              In Rack    Rack              Located
                                                                                                                                                    Rack Contains                    in Zone
                                                   Service - International
                                                  Offering - Local                                               Hosts                                                                Powered by

                                                                                                              Hosted on                                            Powers            Circuit      Fed by
                                                                                                                              Database
                                                       M
             Se rvi ce    Se rvi ce         Se rvi ce                                                                                   Used by
             Offering   Ava ila bi lity  Subscription     Se rvi ce
             Se rvi ce                   by Location   Subscription
         Commitments
                                                          by User

                                                                                                                 Depends on              MSFT                                        Feeds        UPS
                                                                                                                                          SQL
                                                                                                    Provides                            Instance
                                                                                                     DR for

            Se rvi ce   Outages
         Commitment

                                                                                                         DR
                                                                                                    Provided by

                                         Location      User

                                                                                                    Server
                                                                                                      DR

                                                                                                                                                  34

<!-- page 18 -->
                                                 Configuration Item                                         4a CMDB Hardware Data Model Extensions (Eureka)                                                                         Serial Number

                                                             cmdb_ci                                                                                                                                                                cmdb_serial_number

Storage Area              Storage Device         Storage Controller                 Network Adapter          Memory Module            Hardware            Computer                              Accessory     Communication           IP Phone
   Network                                                                                                                                                Peripheral                                                Device
                         cmdb_ci_storage_device  cmdb_ci_storage_controller        cmdb_ci_network_adapter  cmdb_ci_memory_module   cmdb_ci_hardware                                             cmdb_ci_acc                        cmdb_ci_ip_phone
   cmdb_ci_san                                                                                                                                          cmdb_ci_peripheral                                        cmdb_ci_comm

   Disk                                 Fibre Channel                                 Printer          Network Gear      Mass Storage                     Computer                 UPS                           PDU                Out-of-Band Device
                                               Port                                                                          Device
cmdb_ci_disk                                                                       cmdb_ci_print er     cmdb_ci_netgear                                 cmdb_ci_computer        cmdb_ci_ups                   cmdb_ci_pdu           cmdb_ci_outofband_device
                                                 cmdb_ci_fc_port                                                            cmdb_ci_msd

                           SAN Disk

                         cmdb_ci_san_disk

 Storage Disk              iSCSI Disk            Fibre Channel                       IP Firewall              IP Switch                IP Router                                   Server
                                                       Disk
cm db_ci_sto ra ge_disk  cmdb_ci_iscsi_disk                                        cmdb_ci_ip_firewall      cmdb_ci_ip_switch        cmdb_ci_ip_router                          cmdb_ci_server
                                                   cmdb_ci_fc_disk

 Storage Switch                                  Virtualization Server                    Storage Server                            OS/X Server         Windows Server                                         Linux Server
                                                 cm db_ci_vcen te r_ser ve r_ob j
cm db_ci_sto ra ge_switch                                                                cmdb_ci_storage_server                    cmdb_ci_osx_server    cmdb_ci_win_server                                   cmdb_ci_linux_server

                         IBM Mainframe LPAR                         IBM Mainframe                            Netware Server               UNIX Server                             CIM Server                                        Load Balancer

                            cmdb_ci_mainf ra me _lpa r              cmdb_ci_mainf ra me                     cmdb_ci_netware_server       cmdb_ci_unix_server                    cmdb_ci_cim_server                                        cmdb_ci_lb

                            Hyper-V Server                          Vmware vCenter Server                          AIX Server                             HP Server              Solaris Server                                      F5 BIG IP
                                                                               Object
                           cmdb_ci_hyper_v_server                                                                cmdb_ci_aix_server                    cm db_ci_hp ux_ser ve r  cmdb_ci_solaris_server                              cmdb_ci_lb_bigip
                                                                      cmdb_ci_vcenter_server_obj

                                                                                     ESX Server

                                                                                   cmdb_ci_esx_server

<!-- page 19 -->
                                                 Configuration Item                                      4a-1 CMDB Computer Model Extensions (Fuji)                                                          Serial Number

                                                             cmdb_ci                                                                                                                                         cmdb_serial_number

Personal Hardware             Storage Device                                     Network Adapter          Memory Module               Hardware               Accessory                     Computer           Display Hardware
                                                                                                                                                                                           Peripheral
cmdb_ci_personal_hardware    cmdb_ci_storage_device                             cmdb_ci_network_adapter  cmdb_ci_memory_module      cmdb_ci_hardware          cmdb_ci_acc                                    cm db_ci_disp la y_ha r dwar e
                                                                                                                                                                                         cmdb_ci_peripheral

 Personal Data            Converged Personal                    Disk                                                                       Computer                                                           Computer Display
    Assistant                 Data Assistant                                                                                                                                                                         Monitor
                                                             cmdb_ci_disk                                                                cmdb_ci_computer
cmdb_ci_pda_personal     cm db_ci_con ver ge d_pd a_pe r so                                                                                                                                                    cmdb_ci_disp la y_mon it or
                                                                    Personal
                                            nal                    Computer                                                                                                                                  Mainframe Hardware

                                                                cmdb_ci_pc_hardware                                                         Server            Storage Switch                                 cmdb_ci_mainf ra me_ha rdware

                                                                                                                                         cmdb_ci_server      cmdb_ci_storage_switch

  Desktop PC              Workstation PC                       Laptop PC             Rugged Laptop PC             PC Peripherals

cm db_ci_de skto p_pc    cmdb_ci_workstation_pc              cmdb_ci_laptop_pc       cmdb_ci_rugged_laptop_pc     cmdb_ci_peripheral_pc

 Server Hardware             IBM Mainframe                    Storage Server          Netware Server               OS/X Server                        Windows Server        Linux Server                       Mainframe Pe riphe ral
                                                                                                                                                                                                             cmdb_ci_pe rip he ra l_mainf ra me
cmdb_ci_server_hardware      cmdb_ci_mainf ra me             cmdb_ci_storage_server  cm db_ci_ne twar e_ser ve r  cmdb_ci_osx_server                   cmdb_ci_win_server  cmdb_ci_linux_server
                                                                                                                                                                                                                Mainframe DASD
Server Peripherals           IBM Mainframe LPAR                          Virtualization Server                  UNIX Server                CIM Server        Load Balancer
                                                                         cmdb_ci_vcenter_server_obj                                                                                                             cmdb_ci_da sd_mainf ra me
cmdb_ci_peripherals_server      cmdb_ci_mainf ra me_lpa r                                                      cmdb_ci_unix_server       cmdb_ci_cim_server        cmdb_ci_lb
                                                                                                                                                                                                             Mainframe Tape Unit
   Server Chassis                                 Hyper-V Server                  Vmware vCenter                 AIX Server            HP Server              Solaris Server              F5 BIG IP
                                                                                    Server Object                                                                                                               cmdb_ci_ta pe_, mainf ra me
  cmdb_ci_cha ssis_ser ve r                      cmdb_ci_hyper_v_server                                        cmdb_ci_aix_server   cmdb_ci_hpux_server      cm db_ci_sola ris_ser ve r  cmdb_ci_lb_bigip
                                                                                cmdb_ci_vcenter_server_obj                                                                                                    Mainframe Terminal
  Server Tape Unit
                             Network Appliance                                    ESX Server                                                                                                                  cmdb_ci_te rmina l_mainf ra me
    cmdb_ci_tape_server            Hardware
                                                                                cmdb_ci_esx_server                                                                                                             Mainframe Memory
  Server Terminal             cmdb_ci_net_app_server
                                                                                                                                                                                                              cmdb_ci_memory_mainf ra me
  cmdb_ci_terminal_server
                                                                                                                                                                                                                 Mainframe CPU
     Server Rack
                                                                                                                                                                                                                 cmdb_ci_cpu _mainf ra me
    cmdb_ci_rack_server
                                                                                                                                                                                                             Mainframe Controller

                                                                                                                                                                                                             cmdb_ci_con troller_mainf ra me

<!-- page 20 -->
                                Configuration Item                                      4a-2 CMDB Printer & Network Gear Data Model Extensions (Fuji)

                                            cmdb_ci

 Imaging Hardware               Printing Hardware               Network Adapter          Memory Module                     Hardware          Computer          Accessory
                                                                                                                                             Peripheral
cmdb_ci_imaging_hardware        cmdb_ci_print in g_ha rdware   cmdb_ci_network_adapter  cmdb_ci_memory_module            cmdb_ci_hardware                       cmdb_ci_acc
                                                                                                                                           cmdb_ci_peripheral

       Scanner                     Plotter                        Printer               Network Gear                     Mass Storage        Computer             UPS           PDU        Out-of-Band Device
                                                                                                                             Device
      cmdb_ci_scanner           cmdb_ci_plotter                cmdb_ci_print er          cmdb_ci_netgear                                   cmdb_ci_computer    cmdb_ci_ups   cmdb_ci_pdu   cmdb_ci_outofband_device
                                                                                                                            cmdb_ci_msd
 Standard Plotter
                                   Standard Printer                                       Network Terminal                    IP Firewall                            IP Switch                    IP Router
cm db_ci_sta nd ar d_plo tte r                                                                   Server
                                  cmdb_ci_sta nd ard_print er                                                               cmdb_ci_ip_firewall                     cmdb_ci_ip_switch             cmdb_ci_ip_router
 High End Plotter                                                                        cm db_ci_te rm ina l_ne twor k
                                     Color Printer                                                                       Firewall Hardware                      Switch Hardware              Router Hardware
cmdb_ci_high_end_plotter                                                                  WAN Accelerator
                                     cmdb_ci_colo r_print er                                                             cmdb_ci_firewall_network               cmdb_ci_switch_network        cm db_ci_r ou ter_ne twor k
                                                                                        cmdb_ci_wan_accel_network
                                   Personal Printer                                                                      Intrusion Detection                      Hub Hardware               Wireless Access
                                                                                              FDDI Cards                         System                                                              Point
                                  cmdb_ci_pe rsona l_print er                                                                                                     cm db_ci_hu b_ne twor k
                                                                                            cmdb_ci_fddi_network            cmdb_ci_ids_network                                                cmdb_ci_wap_network
                                Multi-function Printer                                                                                                               CSU/DSU
                                                                                          Modem Hardware                   Content Engine                                                   Network Probe Hardware
                                      cmdb_ci_mtp_print er                                                                                                     cmdb_ci_csu_dsu_network     cmdb_ci_network_probe_net
                                                                                          cmdb_ci_modem_network              cmdb_ci_ce_network
                                  Mainframe Printer                                                                                                                                                        work
                                                                                          Network Interface               Content Services
                                 cmdb_ci_mainf ra me_print er                                     Shelf                          Switch

                                                                                        cm db_ci_inte r face_she lf_nw      cmdb_ci_css_network

<!-- page 21 -->
                                            Configuration Item                            4a-3 CMDB SAN-Storage Extensions (Fuji)

                                                        cmdb_ci

Storage Area            Storage Controller           Storage Volume               Storage File Share             Storage HBA          Storage export           SAN Zone                              SAN Endpoint
   Network
                        cmdb_ci_storage_controller  cmdb_ci_storage_volume        cmdb_ci_storage_fileshare     cmdb_ci_storage_hba  cmdb_ci_storage_export  cmdb_ci_san_zone                       cmdb_ci_san_endpoint
   cmdb_ci_san
                                                                                                                                                                                                       SAN Fabric
 Storage Device                             Fibre Channel           Hardware                Storage Pool              Storage Pool                            SAN Zone Alias
                                                  Port                                                                   Member                                                                       cmdb_ci_san_fabric
cmdb_ci_storage_device                                            cmdb_ci_hardware        cm db_ci_sto ra ge_po ol                                           cmdb_ci_san_zone_alias
                                              cmdb_ci_fc_port                                                       cmdb_ci_pool_member                                                            SAN Connection

                                                                                                                                                                SAN Zone Alias                     cmdb_ci_san_connection
                                                                                                                                                                     Member
                                                                                                                                                                                                     SAN Zone Set
                                                                                                                                                             cmdb_ci_san_zone_alias_me
                                                                                                                                                                                                    cmdb_ci_san_zone_set
                                                                                                                                                                             mber

                                                                  Mass Storage        Computer                                                                   SAN Zone Member
                                                                      Device
                                                                                    cmdb_ci_computer                                                                      cmdb_ci_san_zone_member
                                                                     cmdb_ci_msd
                                                                                                                                       SAN export

                                                                                                                                     cmdb_ci_san_export

   Disk                   SAN Disk            Storage Port         Storage Switch            Server

cmdb_ci_disk            cmdb_ci_san_disk    cmdb_ci_storage_port  cmdb_ci_storage_switch  cmdb_ci_server

 Storage Disk             iSCSI Disk        Fibre Channel          Storage Server         Multipath IO Pool           RAID                                     Multipath IO Pool                    RAID Member
                                                  Disk
cmdb_ci_storage_disk    cmdb_ci_iscsi_disk                        cmdb_ci_storage_server     cmdb_ci_mpio_pool      cmdb_ci_raid                             cmdb_ci_mpio_pool_member              cmdb_ci_raid_member
                                              cmdb_ci_fc_disk

<!-- page 22 -->
                                  Configuration Item                   4a-4 CMDB Telecom Data Model Extensions (Fuji)

                                              cmdb_ci

 Radio Hardware                     IP Phone                             Voice System          Communication     Transport Hardware          Accessory
                                                                            Hardware                 Device
cmdb_ci_radio_hardware            cm db_ci_ip_ph on e                                                            cmdb_ci_transport_hardware   cmdb_ci_acc
                                                                       cmdb_ci_voice_hardware      cmdb_ci_comm

      Mobile Radio                    Repeater Radio                      Key Telephone            Frame Relay Access                           Channel Bank
                                                                               System                       Device
      cmdb_ci_mobile_radio            cmdb_ci_rep eat er_rad io                                                                           cmdb_ci_channel_bank_transport
                                                                       cmdb_ci_key_system_voice        cmdb_ci_frad_transport
     Portable Radio                 Multiple Address                                                                                         Transport Terminal
                                      Systems Radio                        Private Branch          Transport Interface                               Server
     cmdb_ci_portable_radio                                                   Exchange                       Shelf
                                        cmdb_ci_m as_r ad io                                                                                  cmdb_ci_terminal_transport
   Microwave Radio                                                           cmdb_ci_pbx_voice    cmdb_ci_iface_shelf_transport
                                  Conventional Radio                                                                                      Fiber Optic Equipment
   cmdb_ci_microwave_radio                                                    Voicemail                  Multiplexer
                                  cm db_ci_con ven tion al_r ad io                                                                             cmdb_ci_optical_transport
Unlicensed Microwave                                                     cmdb_ci_voicemail_voice      cmdb_ci_mux_transport
           Radio                      Trunking Radio
                                                                                                                 Optical Multiplexer         Fiber Optic Terminal
   cmdb_ci_un lice nse d_r ad io      cmdb_ci_trunking_radio                                                                                       Equipment
                                                                                                                  cmdb_ci_omux_transport
        Feed Line                     Radio Console                                                                                             cm db_ci_fo te_tr an spo rt

     cmdb_ci_feedline_radio           cmdb_ci_console_radio

         Antenna                  Radio Control Station

     cm db_ci_an te nna _r ad io  cm db_ci_con tr ol_sta tion_r ad io

<!-- page 23 -->
                                                               Configuration Item                        4b CMDB Application Data Model Extensions

                                                                           cmdb_ci

                                                 Running Process                    CI Relationships

                                                 cmdb_running_process                      cmdb_rel_ci

                      Application                                                   TCP Connection       SNC Component                                                              CIM Profile

                       cmdb_ci_appl                                                 cmdb_tcp_connection  cmdb_ci_snc_component                                                    cmdb_ci_cim_profile

                                                 TCP Connection

                                                          cmdb_tcp

     Pending                        Web Application              Web Service          Web Site                    Custom                 Load Balancer       WBEM Service         Management Server
   Application                                                                                                  Application                Application
                                   cmdb_ci_web_ap plicat io n  cmdb_ci_web_service  cmdb_ci_web_site                                                        cmdb_ci_wbem_service  cmdb_ci_config_automation_
cmdb_ci_appl_pending                                                                                                 sys_app               cmdb_ci_lb_appl
                                                                                                                                                                                                 server

                      Application Server                                            Infrastructure Service       Exchange Service
                                                                                                                     Component
                         cm db_ci_ap p_ser ve r                                          cmdb_ci_infra_service
                                                                                                                cmdb_ci_exchange_service

                                                                                                                          _component

           Tomcat                         JavaServer                     Web Server                        Email Server                  Exchange Client Access                    Puppet Master
                                                                                                                                                     Server
   cmdb_ci_ap p_ser ve r_to mca t    cmdb_ci_app_server_java           cmdb_ci_web_server                cmdb_ci_em a il _ser ve r                                                cmdb_ci_puppet_master
                                                                                                                                                cm db_ci_exch an ge_cas
            JBoss                            Domino                        LDAP Server                      FTP Server
                                                                                                                                         Exchange Mailbox Server
   cmdb_ci_app_server_domino         cmdb_ci_app_server_domino         cmdb_ci_infra_service_ldap         cmdb_ci_ftp_server
                                                                                                                                         cmdb_ci_exch an ge _m ailbo x_ser ve r
     IBM Websphere                        BEA Weblogic                  Directory Server                     IP Server
                                                                                                                                               Exchange Edge
cmdb_ci_app_server_websphere         cmdb_ci_app_server_weblogic       cmdb_ci_direct ory_serve r          cmdb_ci_ip_server                  Transport Server

                                                                        Active Directory                 ExchangeFrontEndServer          cmdb_ci_exchange_edge_transport
                                                                       Domain Controller                                                                    _server
                                                                                                              cmdb_ci_exchange_frontend
                                                                         cmdb_ci_ad_controller                                           Exchange Hub Transport
                                                                                                                                                      Server

                                                                                                                                         cmdb_ci_exchange_hub_transport_
                                                                                                                                                             server

                                                                                                                                         ExchangeBackEndServer

                                                                                                                                              cmdb_ci_exchange_backend

<!-- page 24 -->
                                             Configuration Item                               4c CMDB Database & Software Data Model Extensions
                                                     cmdb_ci
  Application                                                                                   Database                                              Software      Software Instance
(cmdb_ci_appl)                  Patch
                                                                                              cmdb_ci_database                                        cmdb_ci_spkg  cmdb_sof tware_insta nce
                            cmdb_ci_patches

                Database Instance                           Oracle Database                                     Database Catalog
                                                                  Listener
                  (cmdb_ci_db_instance)                                                                            cmdb_ci_db _cat alog
                                                            cmdb_ci_db_ora_listener

 Oracle SQL Instance        MSFT SQL Instance               SQL Server Analysis               MSFT SQL Catalog              Oracle Catalog                               Desktop Software
                                                                    Services                                                                                        cmdb_ci_desktop_software
   cmdb_ci_db_ora_instance  cmdb_ci_db_mssql_instance                                         cmdb_ci_db _mssql_cat alog   cmdb_ci_db _ora_cat alog
                                                            cmdb_ci_db_mssql_analysis                                                                                 Infrastructure Software
      DB2 Instance                                                                                                          MySQL Catalog                               cmdb_ci_inf_software
                               Notes Instance                      SQL Server                  Sybase Catalog
   cmdb_ci_db_db2_instance                                   Integration Services                                         cmdb_ci_db _mysql_cat alog                   Application Software
                            cmdb_ci_db_notes_instance                                         cmdb_ci_db _syb_cat alog
 MongoDB Instance                                           cmdb_ci_db _mssql_inte grat io n                                                                            cmdb_ci_ap plicat io n_sof tware

cmdb_ci_db_mongodb_instan     MySQL Instance                      SQL Server                     DB2 Catalog
                  ce                                         Reporting Services
                            cmdb_ci_db_mysql_instance                                         cmdb_ci_db _db 2_cat alog
    HBase Instance                                          cmdb_ci_db_mssql_reporting

cmdb_ci_db_hbase_instance    PostgreSQL Instance

                            cmdb_ci_db_postgresql_instance

<!-- page 25 -->
                                                                              4d CMDB Virtualization Data Model Extensions                                                       vCenter Folder
                                                                                                                                                                                        Type
                      Configuration Item
                                                                                                                                                                                vmware_vcenter_folder_
                                  cmdb_ci                                                                                                                                                type_m2m

                      AWS EBS Volume                                                                                                                                                KVM Virtual
                                                                                                                                                                                        Device
                      cmdb_ci_aws_ebs_volume
                                                                                                                                                                                     cmdb_kvm_device

 Application                                   AWS Elastic Load                          AWS Elastic Load          Cloud Resource                   Virtual Machine Object
cmdb_ci_appl                                         Balancer                            Balancer Listener
                                                                                                                   cmdb_ci_cloud_resource                   cmdb_ci_vm_object
                                                    cmdb_ci_aws_elb                      cmdb_ci_aws_elb_listener

Virtual Machine       Vmware vCenter           Virtual Machine      Virtual Machine      VMware vCenter              KVM Object                      Hyper-V Object
  cmdb_ci_vm               Instance                Template             Instance                Object
                                                                                                                   cmdb_ci_kvm_object               cmdb_ci_hyper_v_object
                          cmdb_ci_vcenter      cmdb_ci_vm_template  cmdb_ci_vm_instance  cmdb_ci_vcenter_object

     VMware             VMware Virtual         KVM Virtual Machine              VMware vCenter                      VMware vCenter                      Storage Pool              Hyper-V Cluster
                      Machine Template                 Instance                       Cluster                             Network
 cmdb_ci_vm_vmware                                                                                                                                  cmdb_ci_kvm_storage_pool     cmdb_ci_hyper_v_cluster
                      cmdb_ci_vmware_template   cmdb_ci_kvm_vm_instance         cmdb_ci_vcenter_cluster            cmdb_ci_vcenter_network
    Parallels                                                                                                                                              Network              Hyper-V Resource
                                               EC2 Virtual Machine              VMware vCenter                       VMware vCenter                                                       Pool
cmdb_ci_vm_parallels                                   Instance                        Folder                            Datacenter                    cmdb_ci_kvm_network
                                                                                                                                                                                cmdb_ci_hyper_v_resource
      Zones                                        cmdb_ci_ec2_instance         cmdb_ci_vcenter_folder             cmdb_ci_vcen te r_da ta cent er
                                                                                                                                                        Storage Volume           Hyper-V Network
 cmdb_ci_vm_zones                                 Hyper-V Virtual             ESX Resource Pool                      VMware vCenter
                                                 Machine Instance                                                        Datastore                  cmdb_ci_kvm_storage_volume  cmdb_ci_hyper_v_network
       KVM                                                                    cmdb_ci_esx_resource_pool
                                                cm db_ci_hyp er _v_insta nce                                       cmdb_ci_vcenter_datastore
     cmdb_ci_kvm
                                                 VMware Virtual
                                                Machine Instance

                                               cmdb_ci_vmware_instance

                                                 Solaris Virtual                                                                                                                  Hyper-V Resource
                                               Machine Instance                                                                                                                    Pool Component

                                               cm db_ci_sola ris_insta nce                                                                                                      cmdb_ci_hyper_v_rpool_comp

<!-- page 26 -->
                                       Configuration Item                                   4e CMDB High Availabilty Data Model Extensions
                                             (cmdb_ci)

  Cluster        Cluster Virtual IP     Cluster Resource               Cluster Node             Load Balancer       Load Balancer      Load Balancer Pool       Load Balancer         Load Balancer
                                                                                                    Service               Pool                 Member               Interface               VLAN
cmdb_ci_cluster    cmdb_ci_cluster_vip  cmdb_ci_cluster_resource      cmdb_ci_cluster_node
                                                                                                cmdb_ci_lb_service    cmdb_ci_lb_pool   cmdb_ci_lb_pool_member  cmdb_ci_lb_interface    cmdb_ci_lb_vlan

                                                                                                                                        Load Balancer                                 Load Balancer
                                                                                                                                        VLAN Interface                                 Service VLAN

                                                                                                                                       cmdb_lb_vlan_interface                         cmdb_lb_service_vlan

                 Windows Cluster           Windows Cluster             Windows Cluster
                                                Resource                       Node
                   cmdb_ci_win_cluster
                                        cmdb_ci_win_cluster_resource  cmdb_ci_win_cluster_node

                  UNIX Cluster

                 cmdb_ci_unix_cluster

<!-- page 27 -->
                                                                4f  CMDB Network Data Model Extensions

                        Configuration Item
                              (cmdb_ci)

     IP Network            Network         Network Traffic      Virtual Private       IP Device          IP Address          DNS Name
cmdb_ci_ip_network  Infrastructure Item  cmdb_ci_net_traffic        Network      cmdb_ci_ip_device  cmdb_ci_ip_address  cmdb_ci_dns_name

                       dscy_net_base                             cmdb_ci_vpn

                                            Virtual Private Cloud                     Subnet         IP Address to DNS
                                                 cmdb_ci_vpc                     cmdb_ci_subnet               Name

                                                                                                    cmdb_ip_address_dns

                                                                                                              _name

  Switch Forwarding                        Router Interface
            Rule                         dscy_router_interface

 dscy_swtch_fwd_rule                          Switch Port
                                            dscy_switchport
  Next Hop Routing
           Rule                             Switch Partition
                                         dscy_swtch_partition
dscy_route_next_hop
                                                   Wire
Exit Interface Routing                       dscy_net_wire
           Rule

 dscy_route_interface

<!-- page 28 -->
                        Configuration Item     4g CMDB Hostname Data Model Extensions
                              (cmdb_ci)
                                                                                                                                                                IP Address to DNS
 Network Hostname                                                                                                                                                         Name
cmdb_ci_network_host
                                                                                                                                                               cmdb_ip_address_dns
                                                                                                                                                                         _name

                                               Network Appliance          Server Hostname
                                                     Hostname        cmdb_ci_server_hostname

                                               cmdb_ci_ip_device

   Switch Hostname           UPS Hostname                          Windows Hostname      VMWare Hostname
 cmdb_ci_switch_host        cmdb_ci_ups_host                      cmdb_ci_windows_host   cmdb_vmware_host

   Router Hostname           Network Probe                            LINUX Hostname       Z/OS Hostname
 cmdb_ci_router_host             Hostname                            cmdb_ci_linux_host  cmdb_ci_z_os_host

     Hub Hostname       cmdb_ci_nw_probe_host                          UNIX Hostname
   cmdb_ci_hub_host                                                  cmdb_ci_unix_host
                          CSU/DSU Hostname
Wireless Access Point   cmdb_ci_csu_dsu_host    HP UNIX Hostname      SUN UNIX Hostname
        Hostname                               cmdb_ci_hp_unix_host  cmdb_ci_sun_unix_host
                           Access Hostname
   cmdb_ci_wap_host      cmdb_ci_access_host        AIX Hostname
                                               cmdb_ci_ibm_aix_host
  Firewall Hostname          Content Engine
 cmdb_ci_firewall_host           Hostname

   Modem Hostname           cmdb_ci_ce_host
cmdb_ci_modem_host
                             CSS Hostname
                            cmdb_ci_css_host

<!-- page 29 -->
                                                                                                     4h  CMDB Service Data Model Extensions

                                    Configuration Item
                                           cmdb_ci

 Environment                        Business Process                  Business Service                        Group                   Account                  Endpoint
                                                                       cmdb_ci_service                   cmdb_ci_group           cmdb_ci_account          cmdb_ci_endpoint
cmdb_ci_environment                      cmdb_ci_process

Business Activity                   Business SubProcess               Service Offering                                                Service Account
                                                                      service_offering                                           cmdb_ci_service_account
   u_bu sine ss_act ivity           u_cm db_bu sine ss_sub pr oce ss

Service Subscriptions                    Service                         Service Offering                Group Relationship         Environment
      by Company                     Commitment                           Commitments
                                                                                                                cmdb_rel_group   cmdb_environment_to_ci
  service_subscribe_company         service_committment               service_of fering_commitme nt
                                                                                                         People Relationship
Service Subscriptions                   In Scope                      Service Offering SLA
     by Department                                                                                              cmdb_rel_person
                                      ser vice_in_scop e                    service_of fering_sla
service_sub scrib e_de pa rt me nt
                                     Out of Scope                      Service Availability
Service Subscriptions
       by Location                   service_out_scope                       service_availability

   service_subscribe_location

Service Subscriptions
        by Group

  service_subscribe_sys_grp

Service Subscriptions
          by User

  ser vice_sub scr ib e_sys_use r

<!-- page 30 -->
                                                           4i CMDB Physical Infrastructure Data Model Extensions

                            Configuration Item
                                  (cmdb_ci)

Facility Hardware                                                                             Data Cemter                 UPS             Outlet           Circuit
                                                                                                                     cmdb_ci_ups  cmdb_ci_pdu_outlet  cmdb_ci_circuit
cmdb_ci_facility_hardware                                                                     cmdb_ci_da ta cent er

      Building              HVAC Equipment                   Fuel Tank                     Computer Room                  UPS Output
                                                                                                                     cmdb_ci_ups_output
cmdb_ci_building_facility          cmdb_ci_hvac            cmdb_ci_fuel_tank               cmdb_ci_computer_room

Power Equipment                                  Tower Equipment                           Data Center Zone               UPS Bypass
                                                                                                                     cmdb_ci_ups_bypass
    cmdb_ci_power_eq                                 cmdb_ci_tower_eq                             cmdb_ci_zone
                                                                                                                           UPS Alarm
                                                                                                   Rack              cmdb_ci_ups_alarm

                                                                                                  cmdb_ci_rack              UPS Input
                                                                                                                      cmdb_ci_ups_input
   Power Generator            Automatic Transfer                      Tower
                                       Switch
cmdb_ci_generator_power_eq                                         cm db_ci_to we r_eq
                                  cmdb_ci_at s_po wer_eq
 Surge Suppression                                               Tower Beacon
       Equipment              Direct Current Plant
                                    Equipment                 cmdb_ci_beacon_tower_eq
  cmdb_ci_surge_power_eq
                            cmdb_ci_dc_plant_eq_power_eq   Tower Light Controller
Uninterruptible Power
          Supply              Direct Current Plant         cmdb_ci_twr_light_cnt_tower_eq
                                   Battery Bank
    cmdb_ci_ups_power_eq                                         Tower Lights
                             cmdb_ci_dc_plant_battery_pwr
                                                           cmdb_ci_tower_light_tower_eq

<!-- page 31 -->
                                                                        4j CMDB Other Data Model Extensions

                        Configuration Item

                                    cmdb_ci

 Disk Partition           File System                Print Queue                                 IP Service Instance         Tomcat Connector            Websphere Cell

cmdb_ci_disk_partition  cmdb_ci_file_system        cmdb_ci_print_queue                                cmdb_ci_ip_service     cmdb_ci_tomcat_connector  cmdb_ci_ip_websphere_cell

                                             Printer Instance           Printer Instance          IP Service

                                             cmdb_print er_insta nce  cmdb_print_queue_instance  cmdb_ip_service

                                                    Printer Supplies                                Services                                           Depreciation

                                                   disco very_print er_sup plies                 cmdb_ip_service_ci                                    cmdb_depreciation

                                                                                                                                                        Lease

                                                                                                                                                       cmdb_lease

                        NFS File System                                                           UNIX Daemon

                        cmdb_ci_file_syste m_nf s                                                cm db_ci_un ix_da em on

                         SMB File System                                                         Windows Service

                        cmdb_ci_file_system_smb                                                  cm db_ci_windo ws_ser vice

                        NAS File System

                        cmdb_ci_nas_file_system

<!-- page 32 -->
                                                                                   5 Asset Data Model

Transfer Order                                      Transfer Order                                      Catalog                   Hardware Model                    With the Aspen version and earlier the CMDB
                                                           Line                                           Item                                                      was used for both CI and asset information. This
 alm_transfer_order                                                                                                           cmdb_hardware_product_model           was accomplished by having two views of the
                                                   alm_transfer_order_line                            sc_cat alog _item                                             same record with different attributes (and
                                                                                                                                  Software Model                    related lists) displayed

                                                                                                                              cmdb_sof tware_pro duct_mod el

                                                                                   Depreciation                                      Applic ation Model             Asset View                CI Class Specific View
                                                                                                                              cmdb_ap plicat io n_pro duct _mod el  (Financial Attributes)    (Configuration attributes)
                                                                                   cmdb_depreciation                                                                - Assigned to             - OS
                                                                                                                                       Consumable Model             - Cost                    - RAM
                                                                                                      Product Model           cmdb_consumable_product_model         - Purchase date           - Disk capacity
                                                                                                                                                                    - PO number               - Software version
                                                                                                          cmdb_product                    Contract Model            - invoice number          And Relationship to other CI s
                                                                                                                              cmdb_consumable_product_model         - warranty expiry         - Depends on
                                                    Stockroom                      Stock Room                                                                                                 - Used by
                                                                                       Rule                                                                                                   - DR provided by
                                                   alm_stockroom

                                                                                                      Model Category                                                Configuration Item

                                                                                                      cmdb_mod el_cat eg ory                                                    cmdb_ci

                                                                                                          Asset               Hardware                                     Asset                License
                                                                                                          Class                 Asset                                  Entitlement            Entitlement

                                                                                                       Asset                  alm_hardware                          alm_entitlement_asset     alm_en titlem en t

                                                                                                      alm_asset               Software                                     User
                                                                                                                               License                                 Entitlement

                                                                                                                               alm_license                          alm_en titlem en t_use r

                         Company                   Location       Cost Center       User                 SLA                  Consumable

                                  cor e_com p any  cmn_location   cmn_cost_center  sys_use r          con tr act_sla          alm_consumable

 Assets Covered                                                                                                                  Facility

clm_m2m_contract_asset                                                                                                            alm_facility

                                                                                                      Contract                  Lease                               The Contract table had also been extended to
                                                                                                                                                                    support three different types of contracts.
                                                                                                      ast_contract              ast_lease                           This has been deprecated in favour of using
                                                                                                                                                                    the contract model feature
                                                                                                                               Service
                                                                                                                              Contract

                                                                                                                               ast_service

                                                                                                                              Warranty

                                                                                                                              ast _warrant y

<!-- page 33 -->
                                                     5a Hardware Asset Data Model

                                                                                                    CMDB CI Class

Model Category                                                     Asset Class                                                4 of the 28
                                                                                                                        synchronized fields
cmdb_mod el_cat eg ory                                                                                                 between asset and CI

                                                                                                                            Department

                                                                                                                              cmn_de pa rt me nt

                                                                                                                       Cost Center

                                                                                                                       cmn_cost_center

                                      Hardware Model                                                   Assigned         User                                Assigned
                                                                                                           to                                                   to
                                     cmdb_hardware_product_                                                            sys_user
                                                                                                    Stockroom
                                                  m od el
                                                                                                    alm_stockroom

                                                                                                                       Location

                                                                                                                       cmn_location

      Manufacturer                                   Depreciation                                   Hardware                                                 Configuration
                                                                                                                                                                   Item
            core_company                             cmdb_depreciation                              alm_hardware
                                                                                                                                                                    cmdb_ci
    Contract Model                                                      Asset Covered
                                                                                                    Fixed Asset to                             Allocated to
cm db_con tr act_pr o duct _m od el                                         clm_m2m_contract_asset        Asset

                                                                                                    m2m_fixed_as
                                                                                                     set_to_asset

                                                                                                                       Asset Entitlement       Licensed by   Software License

                                                                                                                        alm_entitlement_asset                        alm_license

                                     Contract Model  Contract

                                                     ast_contract

                                                                                                    Expense Lines

                                                                                                      fm_expense_line

<!-- page 34 -->
                                                     5a Hardware Asset Data Model - simplified
                                                              For purpose of import or integration

                                                                                                                       CMDB CI Class

Model Category

cmdb_mod el_cat eg ory

                                     Asset Class

                                                                                                                             2 of the 28
                                                                                                                        synchronized fields
                                                                                                                       between asset and CI

Manufacturer                                          Hardware Model                                                      User

  core_company                                       cm db_ha r dwar e_pr o duct _                                       sys_user

                                                                  model                                                Location

                                                                                                             Assigned  cmn_location          Assigned
                                                                                                                 to                              to

                                                                                   Hardware                                                             Configuration
                                                                                                                                                               Item
                                                                                               alm_hardware
                                                                                                                                                                    cmdb_ci
                                                       Asset Covered

                                                     clm_m2m_contract_asset

    Contract Model                   Contract Model  Contract

cm db_con tr act_pr o duct _m od el                  ast_contract

<!-- page 35 -->
                                                         5b Software Asset Data Model                                                                            Processor                                              Processor
                                                                                                                                                                  Mapping                                                Definition

                                                                                                                                                            sam_processor_mapping                                  cm db_pr o cessor _de finitio n

  Asset Covered                     Manufacturer          Contract                                                                                            Software Discovery                                   Software
                                                                                                                                                                        Model                                       Package
clm_m2m_contract_asset                core_company         ast_contract
                                                                                                                                                            cmdb_sam_sw_discovery_model                            cmdb_ci_spkg
                                                                         Parent

                                                           Software License
                                                               Calculation

                                                         cmdb_sw_license_calculation

                   Model Category                            Software Model                              Software Counter                                                                                          Software Instance

                   cmdb_mod el_cat eg ory                cmdb_sof tware_pro duct _mod el                      sam _sw_cou nt er                                                                                    cmdb_sof tware_insta nce

                                                                        Software Suite                                     Software Counter                     Software
                                                                                                                                   Result                      Installation
                                                                                   cmdb_m2m_suite_model
                                                                                                                                 sam _sw_cou nt er_summary  cmdb_sam_sw_install
                                      Software Upgrade
                     Vendor             and Downgrades                                                                                                                             Software Usage

                   cor e_com p any  cmdb_m2m_downgrade_model                                                                                                                       cmdb_sam_sw_usage

                                                                                                                                Software Counter
                                                                                                                                     Summary

                                                                                                                               sam _sw_cou nt er_summary

Software License                                         Allocated to                                      Computer                                         Software Counter
                                                                                                                                                                    Detail
        alm_license                                        Assigned                                      cm db_ci_com p ute r
                                                                to                                                                                          sam _sw_cou nt er_de ta il
                   Licensed by                                                                                 User
                                                                                                                                                                                Installed on
                       Asset Entitlement                                                                        sys_user                                                                         Accessed
                                                                                                                                                                                                     from
                                  alm_entitlement_asset
                                                                                                                                                                                                             User

Expense Lines           User Entitlement

  fm_expense_line        alm_en titlem en t_use r

<!-- page 36 -->
                        5b Software Asset Data Model - simplified
                                         For purpose of import or integration

  Asset Covered

clm_m2m_contract_asset

                              Manufacturer                                       Contract

                                core_company                                       ast _con tr act

             Model Category                 Software Model                                           Parent

             cmdb_mod el_cat eg ory     cmdb_sof tware_pro duct _mod el       License quantity entitled (Number of license
                                                                                   rights granted by the contract, when applicable)

               Vendor

             cor e_com p any

                                                                             Three Key Compliance Questions for SAM
                                                                             1) How many licenses did I purchase?

                                                                                 - quantity of each purchase
                                                                                 - total quantity of all purchases under contract

                                                                             2) How many are deployed ? (requires discovery tool)

                                                                             3) To whom have we allocated the license purchased?

              Rights (Number of entitlements to be granted by this license)
Software License  PO number, vendor, purchase date for this license
alm_license
              Cost for the total number of rights for this license

             User Entitlement                 Assigned                        User
                                                   to
              alm_en titlem en t_use r                                       sys_user

<!-- page 37 -->
                               5c                          Contract Data Model

Manufacturer                                                                       Service Contract                                    Cost Center

  core_company                                                                             ast_service                                 cmn_cost_center

Model Category                     Contract Model                                                                      Vendor

cmdb_mod el_cat eg ory         cmdb_contract_product_model                                                                core_company

                                                  Contract Model                   Contract             Contract Administrator                           User

                                                                                   ast_contract                                                         sys_user

                                Terms & Conditions

                               clm_m2m_contract_and_terms

                                                             Asset Covered                              Users Covered

                                                           clm_m2m_contract_asset                            clm_m2m_con tr act_use r

                                                                                   Contract Used by

                                                                                    ast_contract_instance

       Terms &                  Asset                      Configuration                                 User                            Contract Rate                        Expense Lines
     Conditions                                                  Item                                                                          Card
                               alm_asset                                                                sys_user                                                                      fm_expense_line
clm_te rm s_an d_con ditio ns                                     cmdb_ci                                                               fm_contract_rate_card
                                                                                                                                                                  For each cost field type in any table

                                                                                                                                                                            Currency Instance

                                                                                                                                                                                   fx_currency_instance

                                                                                                                                                                  Currency

                                                                                                                                                                   fx_currency

<!-- page 38 -->
                                       5d Contract - Asset Relationship

Logical Contract - Asset Relationship                                                             Functional Contract - Asset Relationship
                                                                                                     Providing examples of different combinations

                                                                                 Contract

                                                                              (Software License)
                                                                                Parent Contract

      Contract                         Contract              Contract                             Contract                           Contract         Contract                           Contract

         ast_contract                  (Su bscr iptio n)  (Software License)                      (Maint ena nce )                  (Maint ena nce )     (Lease)                           (Service)

                             Parent        Asset               Asset               Asset                             Asset           Asset             Asset             Asset
                            Contract
  Asset Covered                       (Software License)  (Software License)  (Software License)                    (Hardware)      (Hardware)        (Hardware)        (Hardware)

clm_m2m_contract_asset

        Asset

          alm_asset

                                      Software License    Software License    Software License                         Purchased        Purchased     Leased Hardware   Leased Hardware
                                              only        With Subscription   With Maintenance                      Hardware Asset   Hardware Asset           Asset            Asset
                                                                                                                                    With Maintenance
                                                                contract                                                    only                      With Maintenance

<!-- page 39 -->
                    5e  Procurement & Stock Transfer Process

                        Purchase Order

                                 proc_po

                                                  Purchase Order                               Receiving Slip
                                                      Line Item
                                                                                                    proc_rec_slip
                                                       proc_po_item
                                                                                               Receiving Slip
                                 Ship to                                                             Lines
                        Bill to
                                                                                             proc_rec_slip_item

    Location                                      Assets

     cmn_location       Stockroom                                    Hardware Asset                                Software License

  Stockroom             alm_stockroom                                     alm_hardware                                     alm_license
      Type

alm_stockroom_type

                        From To                                              Configuration                         Expense Lines
                                                                                   Item
                           Transfer Order                                                                            fm_expense_line
                                                                                    cmdb_ci
                              alm_transfer_order

                                                    Transfer Order
                                                           Line

                                                  (alm_transfer_order_line)

<!-- page 40 -->
                                                                            6a                     Model Management Data Model

Configuration Item                                                               Computer          Software Installation
       cmdb_ci                                                              cmdb_ci_computer       cmdb_sam_sw_install

 Asset                                                                      Hardware Asset         Software License           Consumable Asset                                         Contract                    Work Order
                                                                                                                                                                                                                Model Template
alm_asset                                                                        alm_hardware              alm_license              alm_consumable                                     ast_contract
                                                                                                                                                                                                               cmdb_workorder_produc

                                                                                                                                                                                                                          t_model

                        Model Compatibility

                      cmdb_m2m_model_compatibility

  Product Model                                                             Hardware Model          Software Model            Consumable Model         Application Model                Contract Model           Service Order
                                                                                                                                                                                                                      Model
cmd b_prod uct_model                                                        cmdb_hardware_product  cmdb_sof tware_pro duct _  cmdb_consumable_product  cmdb_ap plicat io n_pro duct _  cmdb_contract_product_
                                                                                                               model                                                                                           cmdb_serviceorder_prod
                                                                                       _model                                              _model                    model                         model
                                                                                                                                                                                                                        uct_model

                                     Model Substitution                                                                       Model Category

                                                 cmdb_m2m_model_substitute                                                    cmdb_mod el_cat eg ory

                                      Model Component

                                                cmdb_m2m_model_component

          Model Entry

           cmdb_ci_model_entry

Manufacturer

  core_company

<!-- page 41 -->
                                                      6b  Product Model Table Extension

Product Model

     cmdb_model

Configuration Item
        cmdb_ci

  Asset                     Hardware Model                   Software Model                Consumable Model                        Application Model
alm_asset
                     cmd b_hard wa re_prod uct_model  cmd b_software_prod uct_model  cmd b_consumable_prod uct_model         cmd b_app lica tion_prod uct_model

 Contract                                                       Contract Model
ast_contract
                                                          cmd b_contract_prod uct_model

                                                                                              Service Order Model                 Service Task Model

                                                                                         cmd b_service order_prod uct_model  cmd b_service task_prod uct_model

Facilities Request       Facilities Task                                              Facilities Request Model               Facilities Request Task Model
 facilities_request  facilities_request_task
                                                                                       cmd b_facr eq_prod uct_model              cmd b_factask_prod uct_model
HR Case              HR Task
hr_case               hr_task                                                                HR Case Model                             HR Task Model

 Work Order           Work Task                                                       cmd b_hr_case_prod uct_model               cmd b_hr_task_prod uct_model
wm_workorder         wm_worktask
                                                                                           Work Order Model                          Work Task Model

                                                                                     cmd b_workorder_prod uct_model             cmd b_worktask_prod uct_model

<!-- page 42 -->
                                                                                           7 IT Cost Management Data Model

                           A rate is defined to a specific task type (ie
                               routine change request costs $150

Task                                  Task Rate Card                       Expense is created                                                       Business                   Depends                         Allocation Units
                                                                           based on the fixed                                                        Service                       on
 task                                    fm_task_rate_card                  fee based on task                                                                                                                       Allocation_unit
                                                                                                                                                   cmdb_ci_service
      Time Worked                                or                              rate card                                 Business
                                      Labor Rate Card                                                                       Service                         Used                                               Allocation unit
         task_time_worked                                           Expense is created                                     Expense                           by                                                records define the
                                        fm_labor_rate_card             based on the                                          Lines                                                                             capacity and usage
        Incident has                                                                                                                                                                                           of a business
         a task time                   Billable Rate                workers bill rate or                                                                                       Application    Runs on          service.
        worked for 1                                                fixed fee based on
                                                                                                                                                                                cmdb_ci_appl
             hour                                                      task rate card
                            User                                                                                                 Based on                                      Runs              Server
                                                                                                                           CMDB Relationship      Relationship Path
                           sys_use r                                                                                                                                                          cmdb_ci_server
                                                                                                                                aggregation         fm_relat io nsh ip _pa th

 Defines which CIs to      Distribution Cost                       Generates            Expense Lines
distribute a distribution           Rule                         expense lines
                                                                                          fm_expense_line
          cost to          fm_distribution_cost_rule              for each CI

Costs to be distributed                                                                                                         Expense Allocation          Defines how to process                             Department
  as expense lines to                                                                                                                     Rule              expense lines to assign
                                                                                                                                                            them to a business entity                             de pa rt me nt
multiple CIs based on                                                                                                           fm_expense_allocation_rule  (ie user, group, or
  some logic ie. Data                                                                                                                                       department)                                        Cost Center
                           Distribution Cost                                            Recurring cost
center or Site License                                                                  generated By                                                                                             Associate a   cmn_cost_center
           costs             fm_distribution_cost                                       CI Rate Card                                                                                          budget to one
                                                                                                                                                                                                                  Budget Cost
                                                      Capital Cost                                                                                                                             or more cost           Center
                                                       (one time)                                                                                                                                     centers
                                                                                                                                                                                                               fm_bu dg et_cost _cet ne r
                                                                                                                           Expense Allocation
                                                                                                                                                                                                                     Budget
Configuration                                                                              CI                              fm_expense_allocation
                                                                                                                                                                                                                       fm_budget
 Item                                  (CI) Rate Card                    Creates           Rate Card           Snapshot of current expenses for
                                             Costs                                                              a business service, by cost type                                                                   Track planned,
 cmdb_ci                                                          Distribution              fm_ci_rate_card    Used to allocate expenses to cost                                                               actual, and projected
                                           fm_ci_rate_card_cost        Units                                   centers or other business entities                                                               expense allocations
 Asset                                                                                    Fixed, recurring,
                             Collection of cost related          fm_distribution_units   and depreciation
alm_asset                     entries associated to a                                    cost entries for a
                           group of configuration items                                 individual CI or a CI

                                                                                                model

                           Could define multiple types # of units to associate to CI           Generates expense lines
                            (budget, forecast, actual linked to the CI Rate Card (ie.               based on interval
                                                                 bandwidth, power, support)
                                                                                                  and assets covered

 Asset Covered             Contract                                  Contract Rate                        by contract
                                                                           Card
clm_m2m_contract_asse      ast_contract                                                      Costs can be allocated evenly
                                                                    fm_contract_rate_card    based on all assets covered, or

                                                                                               proportionally based on cost of

                                                                                                               each asset

<!-- page 43 -->
                                                                      7b IT Cost Management Data Model Rate Extensions &
                                                                                                Expense Line Relationships

                                                                                                                 Configuration
                                                                                                                       Item

                                                                                                                        cmdb_ci

Rate Card                                                                                                                        Task

fm_rate_card                                                                                                                      task

                               Labor Rate Card                                                Expense Lines

                                              fm_lab or_r ate _car d                            fm_expense_line

                                Task Rate Card                                                                                   Cost Center

                                              fm_task_rate_card                                                                  cmn_cost_center

                                          CI                                                  Contract
                                    Rate Card
                                                                                              ast_contract
                                                 fm_ci_rate_card
                                                                                                Asset                             User
                                    Rate Card
                                   (Recurring)                                                 alm_asset                         sys_user

                                           fm_recurring_rate_card     Distribution Cost       Fixed AssetS

                                                                        fm_distribution_cost  alm_fixed_assets

                                                                       Contract Rate
                                                                              Card

                                                                      fm_contract_rate_card

                                                                        (CI) Rate Card
                                                                              Costs

                                                                        fm_ci_rate_card_cost

<!-- page 44 -->
                                                                 8 Service Level Agreement Data Model

Company                                                                                                                                                                   Service
                                                                                                                                                                          Contract
core_company
                                                                                                                                                                          ast_service

                   User sys_user                                                               Contract CI                              Assets Covered          Contract Locations            Contract User

                                                                                               (contract_rel_ci)                      (clm_m2m_contract_asset)     (contract_rel_location)    (contract_rel_user)

                                                            Contract SLA                                                                                                                                                Child
                                                                                                                                                                                                                     Contracts
                                                          contract_rel_contract_sla
                                                                                                                                                                                                                     Contract
                   Task                                                                                               Configuration              Asset          Location                       User                                 Contract Rate
                                                                                                                            Item                                                                                     ast_contract         Card
                   (task)                                                                                                                      alm_ha r dwar e  cmn_location                  sys_user
                                                                                                                             cmdb_ci                                                                                               fm_contract_rate_card

                                        Task SLA                   SLA                                                     Relative                                                                                                 Expense Line
                                                                                                                          Duration
                                           task_sla              contract_sla                                                                                                                                                         fm_expense_line
                                                                                                                      cmn_relat ive_du ration
                                                                                                                                                Business
   Metric                                                                                                                                        Service
 Definition
                                                                                                                                               cmdb_ci_service
metric_definition
                   Metric Instance                                                                                                                              (service_subscribe_location)

                       metric_instance

                                                           Schedule                                  SLA                                                Service                        (service_subscribe_sys_user)
                                                                                                Conditions                                             Offering
                                                          cmn_schuedule                                                   Service
                                                                                               sla_con dt io n_class   Commitment                      service_of fering
                                                                    Referenced by
                                  Child Schedule                                                                      service_commitment          Service
                                                                       cmn_ot he r_sche du le                                                  Offering SLA
                                  cmn_ot he r_sche du le
                                                                                                                                                  Results
                                        Schedule Entries
                                                                                                                                               service_sla_result
                                         cm n_schu ed ule_spa n

<!-- page 45 -->
                                                                    9 Knowledge Management Data Model

                                       Who Can Read                                                  KB       Creates  Task
                                      Knowledge Base                                           Submission
                                                                                                                        task
                                        kb_uc_can_read_mtom                                     kb_knowledge

User Criteria                      Who Cannot Read                    Knowledge
user_criteria                       Knowledge Base                        Base

               User                 kb_uc_cannot_read_mtom          kb_knowledge_base

                   sys_user       Who Can Contribute                                           Creates
                                  to Knowledge Base
              Roles                                                 Category                                           Source
                                   kb_uc _can _con tribut e_mtom
               sys_use r_r ole                                      kb_cat eg ory              Knowledge                     CMDB CI         Configuration
                                Who Cannot Contribute                                             Article                                           Item
                                  to Knowledge Base                    Knowledge Record                                  Related
                                                                                                kb_knowledge           to Products                cmdb_ci
                                 kb_uc _can no t_con tribut e_mtom     m2m_document_knowledge
                                                                                                                         m2m_kb_ci
                                                        Author
                                                                                                              Knowledge Applied to Tasks                    Task
                                             Document
                                                                                                                                m2m_kb_task                  task
                                                  dms_document

                                                Content Item        Knowledge                  Knowledge
                                                                     Feedback                       Use
                                               sc_cat_item_content
                                                                      kb_feedback                   kb_use

Knowledge Management Data Model Extensions

Knowledge                       Policy
   Article
                                grc_policiy
 kb_knowledge

Task                                  KB
                                Submission
 task
                                 kb_knowledge

<!-- page 46 -->
                                                                           12 Survey Management Data Model

   Assessable Record

asmt_m2m_cat eg ory_asse ssment

   Assessable                                                                 Survey                          Trigger
      Record                                                                Definition                      Condition

asmt_assessable_reco                                                       asmt_metric_type                 asm t_con ditio n
              rd
                                                                                                                                                                 Assessment
                                      Survey Users                                                                                                             Category Result

                                                asmt_m2m_cat eg ory_use r                                                                                       asmt_cat eg ory_resu lt

 User                                                                        Survey Instance              Survey
                                                                                                         Category
sys_user                                                                   asmt_assessment_instance
                                                                                                     asmt_metric_cat eg ory

                                                                                                                                     Users

                                                                                                                             asmt_m2m_cat eg ory_use r

                                 Assessment                                    Survey                                                  Survey
                                     Group                                  Responses                                                Question

                                 asmt_assessment                           asmt_metric_result                                                     asmt_metric

                                                                                                       Assessment
                                                                                                     Metric Definition

                                                                                                      asm t_m etr ic_de finitio n

                                                                               Assessment
                                                                           Instance Question

                                                                           asmt_assessment_instanc

                                                                                     e_qu est io n

<!-- page 47 -->
                                           13 Structured Problem Analysis (powered by Kepner-Tregoe)

                                                                    Incident                           Problem

                                                                      incident                           problem

                                                                                      Source

                                                                                             Source                                            Confirmation
                                                                                                                                                   method
                                                                        Problem
                                                                       Analysis                                                               kt_cau se_con fir ma tion
                                                                                                                                                       _method
                                                                    kt_problem_analysis
                                                                                                                                                       Cause
                                              Specify                                                                                               Evaluation
                                             Problem
                                                                                                                                                   kt_cause_evaluation
                                           kt_problem_area

                                                              Distinction &                                       Cause
                                                                  Change
                                                                                                                  kt_cause
                                                            kt_distinctions_changes

          WHAT                   WHERE                        WHEN                                                                   EXTENTS

What Object                 Where          When First                                                     How Many
                      Geographically                                                                        Objects
kt_01_what_object                          kt_05_when_first
                      kt_03_where_geograp                                                              kt_08 _ext en t_ob jects
                                hica lly

What Deviation          Where On                            When Since                                 What Is The Size
                           Object
kt_02_what_deviation                                        kt_06_when_since                              kt_09 _ext en t_size
                      kt_04_where_object
                                                                            When In Life                                   How Many
                                                                                Cycle                                      Deviations

                                                                               kt_07 _whe n_lifecycle                       kt_10 _ext en t_de viatio ns

                                                                                                                                              What Is The
                                                                                                                                                  Trend

                                                                                                                                                           kt_11 _ext en t_tren d

<!-- page 48 -->
                    20 Project & Portfolio Management Data Model

                                            Porfolio         Projects

                                            pm _po r tfolio

                                             Portfolio                 Project                                         Project SLA
                                             Projects
                                          (deprecated)                 pm_project                                       pm_project_sla
                        Project View
                                                                                                                                               Project Metric
                    pm_m2m_portfolio_project
                                                                                                                                                          pm_project_metric

                    Portfolio Project                                                       Project Task               Project Task
                                                                                                                             SLA
                     pm_portfolio_project                                                             pm_project_task
                                                                                                                       pm_project_task_sl
                                                                    Successor                                                      a

                                                                                   Predecessor                                                                Project Task
                                                                                                                                                                   Metric

                                                                                                                                                              pm_project_task_m
                                                                                                                                                                        et ric

Goal       Actual   Portfolio Project                          Planned Task
           Goal             Goal                               Relationships
 goal
            Actual     pm_portfolio_goal                     planned_task_rel_plann
  Risk       Risk
                                                                       ed_task
     risk
                                                                                             Project Task                                       Time Card      Task Time
                                                                                                   Link                                                          Worked
                                                                                                                                                   time_card
                                                                                            pm_project_task_link                                              task_time_worked

                    Portfolio Project       Portfolio Project          Group Resource
                            Risk                   Group
                                                                            group_resource
                        pm_portfolio_risk   pm_portfolio_group_res

                     Portfolio Project                  ource
                            Issue
                                                                                                                       Change Request                         Story
                        pm_portfolio_issue
                                                                                                                            cha ng e_r eq uest                rm_story

                                            Portfolio Project          User Resource
                                                Resource
                                                                           user_resource
                                            pm_portfolio_user_reso

                                                        urce

<!-- page 49 -->
                                          21 Resource Management Data Model

 User                                                                                                                         Task Time
                                                                                                                                Worked
sys_user
                                                                                                                                 task_time_worked
                                              Resource
                                                                                                               Time Card
                                          or  Plan
                                                                                                                  time_card
Is member of                   Group          resource_plan
                                                                                                                                                                Schedule
sys_user_grmember              sys_group
                                                                                                                                                                                 cmn_schuedule
            Resource                                                                   Task
            Allocation                                                                                                                 Child Schedule
                                                                                                         task
          resource_allocation                                                                                                                    cmn_ot he r_sche du le
                                               Resource
                                                 Report                                                                                                    Schedule Entries

                                              resource_report                                                                                                                cmn_schuedule_span

                                                             Type

                                                                      Resource
                                                                         Event

                                                                              resource_event

<!-- page 50 -->
                                        22 Demand Management Data Model

Porfolio       User                                              Owner
                                                            Source
pm_portfolio  sys_user

                                                                                  Demand                                 Configuration
                                                                                                                                Item
                                                                                  dmn_demand
                                                                                                                              cmdb_ci

                                         Demand Stakeholder

                                        dmn_m2m_demand_stakeholder

              Stakeholder                                   Requirement                          Risk                 Assessment            Decision      Resource Plan
                 Register                                                                                           Category Result
                                                            dm n_r eq uire m ent                  risk                                      dmn_decision      resource_plan
              dmn_stakeholder_                                                                                       asmt_cat egory_result

                     reg ist er

                                        Assessment                  Assessment                   Bubble Chart            y category           Assessment
                                            Group                   Metric Type                                          x category         Metric Category
                                                                                                 asmt_bubble_chart       z category
                                        asm t_asse ssm ent          asmt_metric_type                                                        asmt_metric_cat eg ory

                  Assessment            Metric Result                     Assessment                    Assessment                                           Assessable Record
                     Instance                                           Metric Definition                   Metric
                                        asmt_metric_result                                                                                                     asmt_m2m_cat eg ory_asse ssment
              asmt_assessment_instance                                   asmt_metric_definition             asmt_metric
                                                                                                                                                                          Assessable
                                                                                                                                                                             Record

                                                                                                                                                                                  asmt_assessable_reco
                                                                                                                                                                                                rd

                                            Assessment
                                        Instance Question

                                        asmt_assessment_instanc

                                                  e_qu est io n

<!-- page 51 -->
                                                25 Test Management Data Model

                                                Project

                                                pm_project

                                                            Project Task

                                                            pm_project_task

                                                                                                   Test
                                                                                             Environment

                                                                                            tm_test_environment

Test Suite                                                           Test Plan

tm_test_suite                                                        tm_test_plan

               Test Case                                                 Test Case                                                        Release
                                                                                                                                         rm_release
               tm_test_case                                          tm_test_case_instance

                                 Test                       Creates                     Test                                               Defect
                                                                                                                                         rm_defect
                                       tm_test                                     tm_te st_insta nce

                                                                                                            Test Case Defects

                                                                                                       m2m_tm_test_case_instance_defect

<!-- page 52 -->
                                                                               30 IT Governance, Risk & Compliance Data Model

          Entity                                                               Authoritative
                                                                                   Source
          grc_entity
                                                                                  (ast_service)

          m2m_policy_entity             m2m_po licy _au th orit ative_sou rce

                                                                                                                    m2m_auth_src_con_auth_src_con

                      Policy                      m2m_policy_auth_src_content                    Authoritative Source
                                                                                                         Content
                      grc_policy
                                                                                                 grc_au th orit ative_src_con te nt

m2m_risk_policy                   m2m_control_policy                                                                                                         Audit Definition
                                                                                                                                                              Requirements
                                                               m2m_control_auth_src_content
                                                                                                                                                                   contract_sla

                                                                                                                                              m2m_au dit_de f_r eq uire m ent

Risks                 m2m_risk_control            Controls                                       Audit Instances                     Creates                 Audit Definition

grc_risk                                          grc_control                                            grc_audit                                            grc_audit_definition

                      Risk Criteria                       Control Test                               Condition                                Activity                                   Audit             Requirements
                                                            Definition                              Collections                                                                     Observations
                             grc_risk _crit eria                                                                                              grc_act ivity                                               grc_audit_requirement
                                                      grc_control_test_definition                grc_con ditio n_collect io n                                                         grc_ob servat io n
           Risk Approach
                  Rules                                      Creates

          grc_risk_approach_rules                         Control Test
                                                            Instance
                                                                                                 Conditions
                                                            gr c_con tr ol_te st
                                                                                                  grc_condition
                                                          Remediation

                                                            grc_remediation

<!-- page 53 -->
                                                                                    40 Service Automation Data Model

                                          Department                                Company                                  Location

                                          cmn_de pa rt me nt                        core_company                             cmn_location

                                                              Service Order Flow                User

                                                                       sf_sm_order                 sys_use r

  Service Order Model                                                                  Service Order

cmdb_ser viceo rd er _pr o duct _m od el                                                        sm_or d er

  Model Knowledges                                              Task SLA                 Affected CIs

  sm_m2m_model_knowledge                                           task_sla         sm_m2m_ord er_af fect ed_ci

                             Service Template                                         Configuration
                                                                                             Item
                                      sm_m2m_somodel_stmodel
                                                                                               cmdb_ci
Knowledge Article

       kb_knowledge

                                                                Service Task Flow                                                          Service Order
                                                                                                                                            Task Dependencies
                                                                         sf_sm_task
                                                                                                                                            sm_m2m_task_dependency
  Service Task Model                                                                              Service Order Task
                                                                                                                                           Sibling Tasks
cmdb_servicet ask_pro duct _mod e                                                                             sm_task
                      l                                                                                                                         (sub tasks)
                                                                                                                                                                            Expense Line
                Part Requirement                                                                                                                     Service Order
                                                                                                                                                    Task Contracts           fm_expense_line
                 cm db_m od el_pa r t_r eq uire m ent
                                                                                                                                                      sm_m2m_task_contract
                                  Product Model
                                                                                                  Task Affected CIs
                                                    cmdb_model
                                                                                                  sm_m2m_task_af fect ed_ci

                                                                                    Task SLA      Configuration                 Service          Contract
                                                                                                        Item                 Management
                                                                                       task_sla                               Incidentals        ast_contract
                                                                                                         cmdb_ci
                                                                                                                               sm_incide nt als

<!-- page 54 -->
                                                                         40b Service Automation Data Model Table Extension

                          Service Order               Work Order          HR Case Model         Facilities Request                  Marketing                    Legal Request              Finance Request
                               Model                     Model                                          Model                  Request Template                      Template                    Template
                                                                         cmdb_hr_case_product_
                        cmdb_serviceorder_prod    cmdb_workorder_produc                         cm db_fa cre q_pr o duct _m o  sn_sm_marketing_reques           sn_sm_leg al_r eq uest _te  sn_sm_finance_request
                                                                                     model
                                 uct_model                   t_model                                           del                       t_template                        mplat e                   _template

Product Model

     cmdb_model

                           Service Task           Work Task Model         HR Task Model         Facilities Request              Marketing Task                      Legal Task                Finance Task
                                Model                                                               Task Model                      Template                         Template                    Template
                                                  cmdb_worktask_product  cmdb_hr_task_product_
                        cmdb_servicet ask_pro du                                                cm db_fa ctask _pr o duct _m   sn_sm_marketing_task_t           sn_sm_legal_task_templ      sn_sm_finance_task_te
                                                             _model                  model
                                  ct_model                                                                    odel                        emplate                             at e                     mplat e

                                                  Work Order             HR Case                Facilities Request             Marketing Request                Legal Request               Finance Request

                                                      wm_order             hr_case                   facilities_request        sn_sm_m ar ketin g_r eq uest     sn_sm_leg al_r eq uest      sn_sm_fina nce_r eq uest

                        Service Order                                    HR Change

                              sm_order                                      hr_change

Task                    Service Order Task        Work Task              HR Task                Facilities Request             Marketing Task                    Legal Task                 Finance Task
                                                                                                         Task
 task                               sm_task           wm_task               hr_task                                            sn_sm_marketing_task             sn_sm_legal_task            sn_sm_finance_task
                                                                                                  facilities_request_task

State Flow

 sf_state_flow

Service Management      Service Order Flow        Work Order Flow        HR Case Flow            Facilities Request             Marketing Request               Legal Request Flow           Finance Request
           Flow                                                                                            Flow                           Flow                                                       Flow
                                 sf_sm_order            sf_work_order          sf_hr_case                                                                         sn_sm_legal_sf_request
            sf_sm_flow                                                                          sn_sm_marketing_sf_request     sn_sm_m ar ketin g_sf_r eq uest                              sn_sm_finance_sf_request
                                                                         HR Task Flow
                        Service Task Flow         Work Task Flow                                Facilities Request             Marketing Request                Legal Request Task          Finance Request
                                                                               sf_hr_task            Task Flow                       Task Flow                            Flow                  Task Flow
                                 sf_sm_task             sf_work_task
                                                                                                sf_facilities_request_task     sn_sm_marketing_sf_task              sn_sm_leg al_sf_ta sk   sn_sm_finance_sf_task

<!-- page 55 -->
                                                           43a                          Field Service Management Data Model

Company                                                                                  Company
(Primary)                                                                               (Customer)

core_company                                                                            core_company

                                                                                                                   Department                                                                         Vendor

                                                                                                                   cmn_de pa rt me nt                                                               core_company

               User                                        Location                                    User
                                                                                                      (Caller)
              sys_user                                     cmn_location
                                                                                                      sys_user
                                                                                                                                                                                      Service
                      Has roles                                                                                                                                                       Contract

   Has Skills                                                                                                                                                                         ast_contract

(sys_user_has_skill)                         Roles           Groups covering:           Work Order                 Task SLA                     SLA                     Contract SLA
                                                                   Qualifier
              Is member of                 sys_user_role           Dispatch                 wm_order                 (ta sk_sla)             contract_sla             (contract_rel_contract_sla)

                 (sys_use r_gr m em be r)    Has roles           Assignment                                                                                                                        Asset Covered

                                                           (sys_group_covers_location)                                                                                                                      (clm_m2m_contract_asset)

                                                                                                                    A rate is defined to a specific task type     (ie
                                                                                                                            routine move task costs $150
                                              Group
                                                                                                                                                                       Task
                                           sys_user_group                                                                                                           Rate Card

Skills                  Group has                                                                     Work Task                                                   fm_task_rate_card   Expense is created
                           skills                                                                                                                                                     based on the fixed
cmn_skill                                                                                                 wm_ta sk                                                                or  fee based on task

                                                                 Affected CI                                                                                                                rate card

                                                           (wm_m2m_ord er_af fect ed_ci)                                                                           Labor Rate
                                                                                                                                                                        Card
                                                                           Affected CI
                                                                                                                                                                  fm_labor_rate_card
                                                                       (wm_m2m_ord er_af fect ed_ci)

Model Category                             Configuration   Product                             Part                                           Task Time
                                                  Item       Model                       Requirement                                            Worked
cmdb_mod el_cat eg ory
                                                cmdb_ci    cmdb_model                   wm_pa r t_r eq uire m ent                            ta sk_tim e_wor ked

                                                                                                                    Asset Usage                                   Billable      Expense is created
                                                                                                                                                                    Rate           based on the
                                                                                                                    wm_asset_usage)
                                                                                                                                                                                workers bill rate or
                                                                                                                                              User                              fixed fee based on

                                                                                                                                             sys_user                              task rate card

 Asset                                                                   Transfer Order                                                                           Location                            Expense
                                                                                                                                                                                                        Lines
alm_asset                                                                 alm_transfer_order                                                                      cmn_location
                                                                                                                                                                                                    fm_expense_line

                                                                                                      Transfer Order Line              From  Stockroom              Stockroom
                                                                                                                                        To                              Type
                                                                                                        alm_transfer_order_line              alm_stockroom
                                                                                                                                                                  alm_stockroom_type

<!-- page 56 -->
43b Work Management Group Data Model

   Group                         Group
 (Initiator)                   (Qualifer)

sys_use r_gr o up             sys_user_group

                                                                            Group
                                                                        (Dispatcher)

                                                                         sys_user_group

                   Locations           Locations                            Dispatches Work Group
                   Covered             Covered                           (wm_m2m_group_dependency)
                                                                          Covered by Dispatch Group

                                                              Locations                                       Group
                                                              Covered                                         (Work)

                                                                                                           sys_user_group

                                         Location                        Locations
                                                                         Covered
                                                cmn_location

                       Has Skills

                   (sys_group_has_skill)

                                                                              Is member of                     Has roles
                                                                         (sys_user_grmember)
                                                                                                           (sys_gr o up_ha s_r ole)
                   Department

                   cmn_de pa rt me nt

                                                               User

                                                              sys_user

 Skill                           Has Skills                             Reports to                           Roles
                                                                                      Has roles
cmn_skill                     (sys_user_has_skill)                                                         sys_use r_r ole
                                                                                      (sys_user_has_role)
     Contained Skills
   (cmn_skill_contains)

<!-- page 57 -->
                                                                                                                44 HR Service Automation Data Model

                                              Position

                                              hr_position

                      HR Profile                                 Department                                     Company                                  Location

                         hr_profile                              cmn_de pa rt me nt                             core_company                             cmn_location

Colleagues                            Direct
                                     Reports

   Emergency                           Employment                     HR Case Flow                                            User
     Contact                               History
                                                                            sf_hr_case                                       sys_use r
hr_emergency_contact                 hr_employment_history

HR Change                                HR Case Model                                                               HR Case

   hr_change                         cmdb_hr_case_product_model                                                        hr_case

                      Model Knowledges

                      sm_m2m_model_knowledge

                                                                                                                     Affected CIs

                                                                                                                sm_m2m_ord er_af fect ed_ci

                                                  HR Template

                                              sm_m2m_somodel_stmodel

                      Knowledge Article                                                            Task SLA     Configuration
                                                                                                                      Item
                             kb_knowledge                                                             task_sla
                                                                                                                       cmdb_ci

                                                                                                   HR Task Flow                                                        Service Order
                                                                                                                                                                        Task Dependencies
                                                                                                         sf_hr_task
                                                                                                                                                                        sm_m2m_task_dependency
                                         HR Task Model                                                                                       HR Task
                                                                                                                                                                       Sibling Tasks
                                     cm db_hr _ta sk_pr o duct _m od el                                                                         hr_task
                                                                                                                                                                            (sub tasks)
                                                   Part Requirement                                                                                                                                     Expense Line
                                                                                                                                                                                 Service Order
                                                    cm db_m od el_pa r t_r eq uire m ent                                                                                        Task Contracts           fm_expense_line

                                                                      Product Model                                                                                               sm_m2m_task_contract

                                                                                       cmdb_model                             Task Affected CIs

                                                                                                                              sm_m2m_task_af fect ed_ci

                                                                                                                Task SLA      Configuration                 Service          Contract
                                                                                                                                    Item                 Management
                                                                                                                   task_sla                               Incidentals        ast_contract
                                                                                                                                     cmdb_ci
                                                                                                                                                           sm_incide nt als

<!-- page 58 -->
                                                                                          43 Facilities Service Automation Data Model

                                     Department                                           Company                                  Location

                                     cmn_de pa rt me nt                                   core_company                             cmn_location

                                                               Facilities Request                     User
                                                                         Flow
                                                                                                         sys_use r
                                                              sn_sm_marketing_sf_request
                                                                                          Facilities Request
Facilities Request Model
                                                                                                 facilities_request
   cmdb_fa cre q_pr o duct _m od el
                                                                                               Affected CIs
  Model Knowledges                                              Task SLA
                                                                                          sm_m2m_ord er_af fect ed_ci
  sm_m2m_model_knowledge                                           task_sla
                                                                                            Configuration
                            Facilities Template                                                    Item

                                      sm_m2m_somodel_stmodel                                         cmdb_ci

Knowledge Article

       kb_knowledge

                                                                Facilities Request                                                               Service Order
                                                                     Task Flow                                                                    Task Dependencies

                                                                sf_facilities_request_task                                                        sm_m2m_task_dependency

Facilities Request Task                                                                                 Facilities Request Task                  Sibling Tasks
            Model
                                                                                                               facilities_request_task                (sub tasks)
  cm db_fa ctask_pr o duct _m od el
                                                                                                                                                           Service Order          Expense Line
               Part Requirement                                                                                                                           Task Contracts
                                                                                                                                                                                   fm_expense_line
                 cm db_m od el_pa r t_r eq uire m ent                                                                                                       sm_m2m_task_contract

                                  Product Model                                                         Task Affected CIs

                                                    cmdb_model                                          sm_m2m_task_af fect ed_ci

                                                                                          Task SLA      Configuration                 Service          Contract
                                                                                                              Item                 Management
                                                                                             task_sla                               Incidentals        ast_contract
                                                                                                               cmdb_ci
                                                                                                                                     sm_incide nt als

<!-- page 59 -->
                                                                                           44 Finance Service Automation Data Model

                                       Department                                          Company                                  Location

                                       cmn_de pa rt me nt                                  core_company                             cmn_location

                                                              Finance Request Flow                   User

                                                                 sn_sm_finance_sf_request               sys_use r

    Finance Request                                                                        Finance Request
          Template
                                                                                           sn_sm_finance_request
sn_sm_fina nce _r eq uest _te mp late

  Model Knowledges                                                                              Affected CIs

  sm_m2m_model_knowledge                                                                   sm_m2m_ord er_af fect ed_ci

                             Finance Template                 Task SLA                     Configuration
                                                                                                 Item
                                      sm_m2m_somodel_stmodel     task_sla
                                                                                                  cmdb_ci
Knowledge Article

       kb_knowledge

                                                              Finance Request Task                                                                Service Order
                                                                          Flow                                                                     Task Dependencies

                                                                   sn_sm_finance_sf_task                                                           sm_m2m_task_dependency

Finance Task Template                                                                                      Finance Task                           Sibling Tasks

 sn_sm_finance_task_template                                                                               sn_sm_finance_task                          (sub tasks)

                                                                                                                                                          Service Order       Expense Line
                                                                                                                                                         Task Contracts
                                                                                                                                                                               fm_expense_line
                                                                                                                                                        sm_m2m_task_contract
   Part Requirement
                                                                                                         Task Affected CIs
cm db_m od el_pa r t_r eq uire m ent
                                                                                                         sm_m2m_task_af fect ed_ci
                     Product Model
                                                                                                         Configuration                 Service
                                   cmdb_model                                                                  Item                 Management
                                                                                                                                     Incidentals
                                                                                           Task SLA             cmdb_ci                                 Contract
                                                                                                                                      sm_incide nt als
                                                                                              task_sla                                                  ast_contract

<!-- page 60 -->
                                                                                        44 Legal Service Automation Data Model

                                Department                                              Company                                  Location

                                cmn_de pa rt me nt                                      core_company                             cmn_location

                                                              Legal Request Flow                    User

                                                                sn_sm_legal_sf_request                 sys_use r

Legal Request Template                                                                     Legal Request

  sn_sm_legal_request_template                                                              sn_sm_leg al_r eq uest

  Model Knowledges                                            Task SLA                       Affected CIs

  sm_m2m_model_knowledge                                         task_sla               sm_m2m_ord er_af fect ed_ci

                               Legal Template                                             Configuration
                                                                                                 Item
                                      sm_m2m_somodel_stmodel
                                                                                                   cmdb_ci
Knowledge Article

       kb_knowledge

                                                              Legal Request Task                                                               Service Order
                                                                        Flow                                                                    Task Dependencies

                                                                  sn_sm_legal_sf_task                                                           sm_m2m_task_dependency

Legal Task Template                                                                                    Legal Task                              Sibling Tasks

 sn_sm_leg al_ta sk_te mp late                                                                        sn_sm_legal_task                              (sub tasks)

              Part Requirement                                                                                                                           Service Order          Expense Line
                                                                                                                                                        Task Contracts
               cm db_m od el_pa r t_r eq uire m ent                                                                                                                              fm_expense_line
                                                                                                                                                          sm_m2m_task_contract
                                Product Model
                                                                                                      Task Affected CIs
                                                  cmdb_model
                                                                                                      sm_m2m_task_af fect ed_ci

                                                                                        Task SLA      Configuration                 Service          Contract
                                                                                                            Item                 Management
                                                                                           task_sla                               Incidentals        ast_contract
                                                                                                             cmdb_ci
                                                                                                                                   sm_incide nt als

<!-- page 61 -->
                                                                                          46 Marketing Service Automation Data Model

                                 Department                                               Company                                  Location

                                 cmn_de pa rt me nt                                       core_company                             cmn_location

    Marketing Request                                          Marketing Request                      User
          Template                                                       Flow
                                                                                                         sys_use r
sn_sm_marketing_request_templat                               sn_sm_marketing_sf_request
                                                                                          Marketing Request
                      e
                                                                                          sn_sm_marketing_request
  Model Knowledges                                              Task SLA
                                                                                               Affected CIs
  sm_m2m_model_knowledge                                           task_sla
                                                                                          sm_m2m_ord er_af fect ed_ci
                            Marketing Template
                                                                                            Configuration
                                      sm_m2m_somodel_stmodel                                       Item

Knowledge Article                                                                                    cmdb_ci

       kb_knowledge

                                                                Marketing Request                                                                Service Order
                                                                      Task Flow                                                                   Task Dependencies

                                                                sn_sm_marketing_sf_task                                                           sm_m2m_task_dependency

     Marketing Task                                                                                     Marketing Request                        Sibling Tasks
         Template
                                                                                                        sn_sm_marketing_request                       (sub tasks)
sn_sm_m ar ketin g_ta sk_te mp late
                                                                                                                                                           Service Order          Expense Line
               Part Requirement                                                                                                                           Task Contracts
                                                                                                                                                                                   fm_expense_line
                 cm db_m od el_pa r t_r eq uire m ent                                                                                                       sm_m2m_task_contract

                                  Product Model                                                         Task Affected CIs

                                                    cmdb_model                                          sm_m2m_task_af fect ed_ci

                                                                                          Task SLA      Configuration                 Service          Contract
                                                                                                              Item                 Management
                                                                                             task_sla                               Incidentals        ast_contract
                                                                                                               cmdb_ci
                                                                                                                                     sm_incide nt als

<!-- page 62 -->
                                                              41 Sales Force Automation Data Model (nashCOPS)

                                                                            Account

                                                                                sales_account

     Opportunity                                                                         Contract

       sale s_op po rt un it y                                                                    sales_contract

 Activity                                                       Invoice

sale s_act ivity                                              u_sales_invoice

                                                                                                                  Project     Assignment                      Group        Name
                                                                                                                                 Group                                     Professional Services
                                                                                                                  pm_project                               sys_user_group  Managed Services

    Product                         Line Item

    sales_product               sale s_op po rt un it y_item

Product Category                                                                                                              Project Task                              Is member of
Services
                                                                                                                              pm_project_task                           sys_user_grmember
Type
Professional Services                                                                                                                   Task Time          Assigned to
Managed Services                                                                                                                          Worked

                                                                                                                                         task_time_worked                   User

                                                                                                                                                                           sys_user

<!-- page 63 -->
                                                         MIDserver                     Credentials                          461a Discovery Data Model                                                                                Process Handler

                                                           ecc_agent                 disco very_cred ent ia ls                                          Classification                                                               discovery_proc_handler
                                                                                                                                                            Criteria
                                                                                                                                                                                             Scan Results                               CI Identifier
                                                                                                                                                               disco very_class_crit eria
                                                                                                                                                                                           discovery_classy_scan                             ci_identifier

Configuration                                                                                                                             CI Classifications                                   Multiprobe                    Invalid Serial Number
 Parameters
                                                                                                                                               discovery_classy                            discovery_probes_multi                   dscy_invalid_serial
 ecc _ag en t_con fig
                                         Log                             Thread                 Property

                                     ecc_agent_log                    ecc_agent_thread       ecc_agent_property

                            IP Ranges                                                              Included in cluster                                                                    Multiprobe Included Probe

                       ecc_agent_ip_range_m2m                                                                   ecc_agent_capability_m2m                                                              discovery_probes_multi_probe

                                                                         Included in cluster                                                                            Triggers probe
                                                                ecc_agent_cluster_member_m2m
                                                                                                                                                                      discovery_classifier_probe

 MIDserver IP                                                         MIDserver Cluster         Capability                                Discovery Port                                   Triggers                    Probe
     Range                                                                                                                                      Probe                                       probe
                                                                          ecc_agent_cluster  ecc_agent_capability                                                                                                  discovery_probes
ecc_agent_ip_range                                                                                                                        disco ver y_po r t_pr o be

Location                               Discovery                  Discovery                   Discovery                                                                                              Triggers                Sensors that
                                        Schedule                   Behavior                Functionality                                                                                              probe                    React to
cmn_location                                                                                                                                                                                                                  This probe
                                     discovery_schedule         discovery_behavior        discovery_functionality

                                                                                                                                          Triggered by                                               discovery_sensor_probe
                                                                                                                                            services

Discovery Status                     Discovery Schedule          Discovery             Functionality                                      IP Services                  Probe Parameter                  Sensor
                                              Range             Range Set                  Criteria
     discovery_status                                                                                                                     cmdb_ip_service             discovery_probe_parameter      disco ver y_sen sor
                                      discovery_schedule_range  disco ver y_r an ge  disco very_fu nc_crit erion
           Devices                                                                                                                                                                                                 Responds
                                     Discovery IP Range                                           Functionality                            Available on                  MultiSensor                                 to Probe
      disco ver y_de vice_histo r y                                                                 Definition
                                         discovery_range_item                                                                             cmdb_ip_service_ci          discovery_sensor_multi                  discovery_sensor_multi_probe
     Discovery Log                                                                                  discovery_function_def
                                                                                                                                             Server                                                             Applications
            discovery_log                                                             Discovery IP Range
                                                                                             Excludes                                     cm db_ci_ser ve r                                                            cmdb_ci_appl

                                                                                     disco ver y_r an ge_item _exclu de                                     Computer                                         Running Process

                                     Configuration Item                IP Networks                                                                                    TCP Connections                            cm db_r un ning_pr o cess

                                                 cmdb_ci              cmdb_ci_ip_network                                                                                                   cmdb_tcp

<!-- page 64 -->
                                 50b Discovery Tables Extensions

                                                     Classifications
                                                    discovery_classy

Process Classification           Windows Classification           UNIX Classification                      SNMP Classification       Scan Results CI Classifier

   disco ver y_classy_pr o cess      disco ver y_classy_windo ws     discovery_classy_unix                    discovery_classy_snmp           discovery_classy_scan

                                 CIM Classification                                 SNMP OID Classification        Appication Classification  Scan Results Application
                                                                                                                     discovery_classy_appl
                                   discovery_classy_cim                                 discovery_classy_snmp_oid                                  discovery_classy_scan_app

Import Export Map                                                     Probe                                           Scheduled Job                                         Log

      sys_impex_map                                               discovery_probes                                              sysauto                                       syslog

        Sensor                      WMI Probe                                          CIM Probe                    Scheduled Script                                 Discovery Log
                                                                                                                         Execution
      discovery_sensor           discovery_probes_wmi                               discovery_probes_cim                                                                 disco ver y_log
                                                                                                                            sysauto_script
    MultiSensor
                                                                                                                   Discovery Schedule
  disco ver y_sen sor_m ulti
                                                                                                                        discovery_schedule
                                    MultiProbe                                         SNMP Probe

                                 discovery_probes_multi                             discovery_probes_snmp

<!-- page 65 -->
                                 99 Consolidated Service Management Platform

Porfolio       User                 Owner                                                         Demand                                       Configuration
                                 Source                                                                                                               Item
pm_portfolio  sys_user                                                                            dmn_demand
                                                                                                                                                    cmdb_ci

              Stakeholder         Demand Stakeholder                                                          Risk                 Assessment                 Decision      Resource Plan
                 Register                                                                                                        Category Result
                                 dmn_m2m_demand_stakeholder                                                    risk                                           dmn_decision      resource_plan
              dmn_stakeholder_                                                                                                    asmt_cat egory_result
                                                                Requirement
                     reg ist er
                                                                            dm n_r eq uire m ent

                                                                                                             Task                A rate is defined to a specific                     Task
                                                                                                                                  task type (ie routine move                     Rate Card
                                                                                                      Project, Enhancement,              task costs $150
                                                                                                              Change etc                                                         fm_task_rate_card

                                                                                                        Affected CI                                                                  or

                                                                                                  (wm_m2m_ord er_af fect ed_ci)                                            Expense is created
                                                                                                                                                                           based on the fixed
                                                                                                                                                                           fee based on task

                                                                                                                                                                                 rate card

                                                             Resource                             Configuration                  Time Card                Task Time                Labor Rate
                                                                 Plan                                    Item                                               Worked                     Card
                                                                                                                                    time,card
                                                                        resource_plan                  cmdb_ci                                           task_time_worked          fm_labor_rate_card

                                   Resource                                                                                                                    User                   Expense is created
                                   Allocation                                                                                                                               Billable based on the
                                                                                                                                                               sys_user
                                 r eso ur ce_alloca tion                                                                                                                      Rate workers bill rate or
                                                                                                                                                                                       fixed fee based on
                                                                                                                                                                                          task rate card

                                                                                                                                                                                                      Expense
                                                                                                                                                                                                        Lines

                                                                                                                                                                                                    fm_expense_line

<!-- page 66 -->
Connector from bottom indicates          Department                                                           This line type Indicates a      Border & connecting line indicate method of record
     link to another table through                                                                            self referential link from a
                          Related Lists                                                                       record in user table to         creation in CMDB:
                                                                                                              another record in the same
                                                                                                              table                                    Discoverable by ServiceNow Discovery
                                                                                             User (ie Manager)                                         Manually input (or imported)
                                                                                                                                                       Must first configure CI Classifier then can discovered
                                                                                                                                                       Populated by BDNA Technopedia integration
                                                                                                                                              C Calculated based on other values in ServiceNow

                                                                                                                                              CE Calculated based on external alerts received

                                                                                                                                                         Application  Exchange          Example
                                                                                                                                                                          Runs on       names in
This line type indicates a one-to -many                                                         Reports to                                                                              purple
r ela tions hip                                                                              Has roles
(ie. a department can have many users but a                                                                      Roles                         Pri nter
user can only be linked to one department)                                                                                                    Instance

                                                                                                                                                         Runs         Server

Connector to side or top indicates link to                                                      This line type indicates a many-to-many       Objects with no            This line type indicates a
another table through field on the form                                                      relationship using an intermediary M2M table      color or light           Upstream CI Relationship.
                                                                                             (ie. user can have multiple roles and each role     green are             There will be a reciprocal CI
                                                                                                                                                 supporting           Relationship for Downstream.
                                                                                                    can be assigned to multiple users)           tables not            Red indicates discoverable,
                                                                                                                                              extended from
                                                                                                                                                CMDB data                 otherwise it is manual
                                                                                                                                                   model

   This line type indicates extending a table.                                                                                                 Record          Creates        Incident
     When a table is extended from another                                                                                                    Producer
     table, a new view is created with all the                                                        Task         Incident
                                                                                                                                               This line type Indicates another record is
fields of the parent. Additional fields can be                                               - Opened by            Problem                   created as a result of a UI Action, Business
        added to the extended table without                                                  - Assigned to
                             affecting the parent                                            - Assignment Group  - Opened by                                 Rule or Workflow
                                                                                             - Company           - Assigned to
                   Indicates fields referenced from this                                                         - Assignment Group
              data model to other data models (ie the                                                            - Company
                                                                                                                 - Caller
                      Task table references fields in the                                                        - Category
                              Organizational Data Model)

                                  Note: the text color matches that of the other Data Model

