# SNOW Doc — contents map

Source folder: `C:\Users\<user>\SNOW Doc` (flat, 24 files, 1.2 GB, read-only).
Purpose of this file: tell a chat session which file, and which page range, answers a ServiceNow question. Nothing here is loaded in full; use the page ranges to read only what is needed.

How to read a page range: open the chapter file under `docs/<release>/text/<document>/` (section 8), or run `pdftotext -f <first> -l <last> -layout "<file>" -` on the PDF.

## 1. What is in the folder, by category

| Category | Files | Use it for |
|---|---|---|
| A. Product documentation (official ServiceNow release manuals) | 11 PDFs, 1.13 GB | How a product works, how to configure it, tables, roles, APIs |
| B. Architecture / data model | 3 files | CMDB and CSDM structure, table relationships, service vs offering, TMT catalog structure |
| C. Process / workshop / operating model | 2 files | Running a demand-management workshop, setting up a Centre of Excellence |
| D. Derived text copies | 8 txt + 1 rtf | Faster searching of category A; same content as the matching PDF |

There are no training courses in the classic sense. The closest are the workshop deck (C) and the "Coaching" and "Now Assist" chapters inside ITSM (A).

Release naming: Yokohama < Zurich < Australia (ServiceNow releases are alphabetical). Zurich docs were last updated Feb 2026, Australia docs Jul/Aug 2026.

## 2. Category A — product documentation

All follow the same chapter pattern per product area: Explore → Configure → Use → Integrate → Reference → Now Assist (AI features).

| File | Real title | Release | Pages | Sidecar |
|---|---|---|---|---|
| servicenow-zurich-it-service-management-enus.pdf | Zurich IT Service Management | Zurich | 3857 | yes |
| servicenow-zurich-it-operations-management-enus.pdf | Zurich IT Operations Management | Zurich | 4823 | yes |
| servicenow-zurich-customer-service-management-enus.pdf | Zurich Customer Service Management | Zurich | 2452 | yes |
| servicenow-zurich-it-asset-management-enus.pdf | Zurich IT Asset Management | Zurich | 2359 | yes |
| servicenow-zurich-it-business-management-enus.pdf | Zurich Strategic Portfolio Management | Zurich | 2289 | yes |
| servicenow-zurich-order-management-enus.pdf | Zurich Sales and Order Management | Zurich | 1408 | yes + rtf |
| servicenow-zurich-telecom-network-inventory-enus.pdf | Zurich Telecommunications Network Inventory | Zurich | 425 | no |
| servicenow-australia-order-management-enus.pdf | Australia Sales Customer Relationship Management (note: filename says order management) | Australia | 1645 | yes |
| servicenow-australia-telecom-media-technology-enus.pdf | Australia Telecommunications, Media, and Technology | Australia | 309 | yes |
| servicenow-yokohama-telecom-media-technology-enus.pdf | Yokohama Telecommunications, Media, and Technology | Yokohama | 101 | no |

### A1. Zurich IT Service Management (3857 p)

| Topic | Pages |
|---|---|
| ITSM overview, ML / Predictive Intelligence | 9–20 |
| Asset Management inside ITSM (SAM, Contract, Procurement, Product Catalog) | 21–237 |
| Benchmarks | 238–275 |
| Change Management | 276–488 |
| Coaching (agent training) | 489–524 |
| Continual Improvement Management | 525–583 |
| Expense Line | 584–590 |
| DevOps Change Velocity | 591–1265 |
| DevOps Config | 1266–1487 |
| Digital Product Release | 1488–1591 |
| Digital End-User Experience (DEX) | 1592–1906 |
| Digital Portfolio Management | 1907–2023 |
| ITSM Virtual Agent (+ Lite) | 2024–2115 |
| Walk-up Experience | 2116–2196 |
| Workforce Optimization for ITSM | 2197–2384 |
| Incident Communications Management | 2385–2405 |
| Incident Management (incl. major incidents) | 2406–2568 |
| Now Assist for ITSM (agentic AI, gen-AI skills) | 2569–2715 |
| On-Call Scheduling | 2716–2808 |
| Problem Management | 2809–2903 |
| Release Management | 2904–2915 |
| Request Management | 2916–2929 |
| Service Builder (create service / service offering) | 2930–2940 |
| Service Operations Workspace for ITSM | 2941–3465 |
| Service Owner Workspace | 3466–3502 |
| Service Level Management | 3503–3581 |
| ITSM Success Dashboard, Task Outage, Task Intelligence, Collaboration | 3582–3661 |
| Vendor Management Workspace | 3662–3712 |
| ITSM dashboards, Mobile Agent | 3713–3857 |

### A2. Zurich IT Operations Management (4823 p)

| Topic | Pages |
|---|---|
| ITOM overview, SU licensing | 5–29 |
| ITOM Cloud Accelerate (Cloud Account Mgmt, Services Catalog, Provisioning & Governance, Config Governance, Action Library) | 30–741 |
| ITOM Optimization | 742–743 |
| ITOM Visibility: Discovery | 748–1359 |
| Firewall Audits, Certificate Inventory | 1360–1449 |
| Service Mapping | 1450–1861 |
| Discovery patterns | 1862–2486 |
| Content Service, Tag Governance, Cloud Discovery Workspace, License Estimator, Infra Services Workspace | 2487–2540 |
| ITOM Visibility reference | 2541–2871 |
| ITOM AIOps: Event Management | 2874–3407 |
| Health Log Analytics | 3408–3719 |
| Service Reliability Mgmt, SLO Mgmt, Service Observability | 3720–3884 |
| Service Operations Workspace for ITOM | 3885–4103 |
| Synthetic monitoring, CSDM guidelines for AIOps | 4104–4131 |
| Agent Client Collector (framework, deployment, monitoring, log analytics) | 4132–4664 |
| Metric Intelligence | 4665–4717 |
| Now Assist for ITOM | 4718–4759 |
| AIOps LEAP, cloud access / MID Server setup | 4760–4823 |

### A3. Zurich Customer Service Management (2452 p)

| Topic | Pages |
|---|---|
| CSM overview, CSM vs ITSM, data management, self-service, omnichannel, case management | 6–26 |
| Configure: environment setup | 27–298 |
| Configure: agent workspaces | 299–893 |
| Configure: communication channels | 894–988 |
| Configure: intelligence | 989–1181 |
| Configure: self-service | 1182–1280 |
| Configure: extend capabilities | 1281–1305 |
| Administer (routing, assignment workbench, escalation, major issue, contracts & entitlements) | 1306–1371 |
| Integrate (ITSM, SPM, CIM, ITOM, Financial Mgmt, AEM, CTI, Outlook, messaging apps, Process Mining, contact centres) | 1372–1506 |
| Use (cases, schedules, automation, agent/customer management, communication, analytics) | 1507–1852 |
| Reference (portal widgets, roles, forms, query rules, installed components, glossary) | 1853–2056 |
| Workforce Optimization for Customer Service | 2057–2221 |
| Now Assist for CSM | 2222–2334 |
| Communities | 2335–2452 |

### A4. Zurich IT Asset Management (2359 p)

| Topic | Pages |
|---|---|
| ITAM overview | 5–9 |
| Software Asset Management (workspace, classic, publisher licences, SaaS, spend detection, admin, Now Assist) | 10–1115 |
| Hardware Asset Management (+ Now Assist, Zero Touch Mobility, Device as a Service) | 1116–1469 |
| Asset Management (core) | 1470–1535 |
| Enterprise Asset Management (+ for Providers) | 1536–2018 |
| Cloud Cost Management | 2019–2227 |
| Asset Audit Response | 2228–2239 |
| Contract Management | 2240–2286 |
| Procurement | 2287–2327 |
| Product Catalog (models, vendor/product catalog items, model categories) | 2328–2354 |
| Content request process, licensing | 2355–2359 |

### A5. Zurich Strategic Portfolio Management (2289 p) — file named it-business-management

| Topic | Pages |
|---|---|
| SPM overview | 7–8 |
| Portfolio Planning (plans, prioritisation, roadmaps, scenario & capacity planning, financials, dashboards) | 9–211 |
| Strategic Planning | 212–681 |
| Now Assist for SPM (AI agents) | 682–733 |
| Collaborative Work Management (+ Now Assist) | 734–836 |
| Goal Framework | 837–883 |
| Data Separation | 884–894 |
| Project Portfolio Management: overview, Innovation Mgmt | 895–938 |
| Demand Management | 939–1037 |
| Project Management, Project Workspace | 1038–1359 |
| Investment Portal, Resource Management | 1360–1479 |
| Portfolio Mgmt, Program Mgmt, Rate Models, Time Cards | 1480–1607 |
| Financial Management (legacy), benefit plans, spend tracking, analytics | 1608–1826 |
| SPM Benchmarks, Investment Funding, Export to PowerPoint | 1827–1868 |
| Agile Development 2.0 | 1869–2085 |
| Scaled Agile Framework (SAFe) | 2086–2194 |
| Test Management 1.0 / 2.0 | 2195–2249 |
| Business Planning Portal | 2250–2254 |
| Cost Management (rate cards, budgets, cost centres, allocation) | 2255–2288 |

### A6. Zurich Sales and Order Management (1408 p)

| Topic | Pages |
|---|---|
| Explore: lead & opportunity, CPQ, order mgmt, order ops, post-sales, PRM, lead-to-cash, Business Portal | 5–279 |
| Configure (same areas; agent tools, roles) | 280–886 |
| Use (same areas) | 887–1139 |
| Integrate: Service Bridge, FSM, SPM, diagnostics, CPQ with other apps | 1140–1275 |
| Reference: SOM APIs, TMF APIs, CPQ, order mgmt, PRM, glossary | 1276–1391 |
| Now Assist for SOM and Order Management (AI agents) | 1392–1408 |

### A7. Australia Sales Customer Relationship Management (1645 p)

Successor of A6 with the Australia release naming. Same structure: Explore 5–118, Configure 119–872, Use 873–1193, Integrate (Service Exchange, FSM, SPM, CPQ) 1194–1397, Reference incl. Sales CRM APIs and glossary 1398–1591, Now Assist for SFA / CPQ / Order Management 1592–1645.

### A8. Telecom, Media & Technology docs

| File | Pages | Main topics |
|---|---|---|
| Australia TMT (309 p) | | TSM / TPSM 7–9; Customer Service Problem Mgmt 10–40; Customer Success Mgmt 41; Data Center & Network Asset Mgmt 42–44; FSM for Telecom 44–45; Telecommunications incl. agentic workflows and gen-AI skills 46–155; Sales CRM for Telecom 156–265; Service Exchange 266; Service Test Mgmt 268–277; SPM for Telecom / fibre rollout 278–279; Telecom Customer 360 279–304; TNI 305; TMF APIs 307 |
| Yokohama TMT (101 p) | | Account Lifecycle Events 5; FSM for Telecom 6; Otto (AI agent) for Sales CRM 7–10; Otto for TMT: explore 13, configure 24, agentic workflows 45, using 66–94; Proactive Service Experience 95; Service Exchange 97 |
| Zurich Telecom Network Inventory (425 p) | | Explore 7; data model 10–13; model your workflow 14–22; Network Inventory Workspace 23–29; circuits 30; attribute packs 32; number allocation 33; 5G network function 35; revision/decommission 36; capacity 38; TNI workflows 40; rack visualisation 42; design & assign network services 45; Service Operations Workspace 49+ |

## 3. Category B — architecture and data model

| File | Pages | What it is |
|---|---|---|
| ServiceNow-Data-Model-v3.4.pdf | 66 | Diagram-based reference of the platform data model. Page 1 is the overview; then one section per area: 1 Organizational, 2 Task, 3 Service Catalog, 4 CMDB, 5 Asset & Contract, 6 Service Model, 7 IT Cost Management, 8 SLA, 9 Knowledge. Table names given (cmn_location, core_company, cmn_cost_center, …). Text extraction is diagram-fragmented; read as PDF pages rather than text. |
| services-service-offerings.pdf | 3 | ServiceNow best-practice sheet (2021): service vs service offering vs project, the three service types (business, application, technical), how to categorise services. Basis for CSDM thinking. |
| TMT CATALOG MODEL.avif | 1 image | Diagram of the telecom product / catalog model. Not text-searchable; open as image. |

## 4. Category C — process, workshop, operating model

| File | Pages / slides | What it is |
|---|---|---|
| SPM - Demand Management - Process Workshop Presentation - Zurich.pptx | 97 slides | ServiceNow "Now Create" delivery asset for running a Demand Management process and requirements workshop. Slides 1–16 instructions, housekeeping, agenda, objectives; 17–23 SPM overview; 24–32 demand process and roles (it_demand_manager etc.); 33–60 core process demo: demand stages, creating / enhancing / assessing demands, scoring (size, risk, value, overall formula); 61–63 reporting; 64–67 interaction with EA, digital portfolio, CIM; 68–77 configuration decisions and "we need to know" question lists; 78–84 best practices, architecture checklist, MID Server sizing; 85–90 enablement and next steps; 91–97 scoring calculation appendix. |
| Stand up and evolve a ServiceNow AI-Center of Excellence and Innovation.pdf | 76 | ServiceNow whitepaper (2026, Braun / Paschek / Veltel). Three-stage maturity model for an AI Centre of Excellence and Innovation. Chapters: intro 8; foundational elements 11; advanced elements 15; vision 16; strategy 20; roadmap 24; governance 32; roles and team 36; partner management 40; change management 43; value 46; AI-ready CoEI 49; agility 56; tech advancement 59; regulation 62; workforce skills 66; conclusion 71. |

## 5. Category D — derived text copies

The eight `.txt` files are plain-text extractions of the PDF with the same base name, one form feed per page, so page numbers in section 2 apply to them too. `servicenow-zurich-order-management-enus.rtf` is a second copy of the same content in RTF; ignore it.

Missing sidecars (read via pdftotext instead): Zurich TNI, Yokohama TMT, Data Model, CoEI whitepaper, services-service-offerings.

## 6. Quick routing

| Question is about | Go to |
|---|---|
| Incident / problem / change / request / SLA | A1 |
| Discovery, CMDB population, service mapping, event mgmt, monitoring | A2 |
| Customer cases, contact centre, B2B service | A3 |
| Licences, hardware, contracts, procurement | A4 |
| Demand, project, portfolio, agile, SAFe, cost mgmt | A5, plus workshop deck in C |
| Sales, CPQ, orders, lead-to-cash, TMF APIs | A6 (Zurich) / A7 (Australia) |
| Telecom-specific: TSM, Customer 360, network inventory, Otto | A8 |
| Table relationships, CMDB / CSDM structure | B |
| What is a service / service offering | B (services-service-offerings), A1 Service Builder 2930–2940 |
| AI agents / Now Assist for any product | the "Now Assist" chapter at the end of the product's doc |
| Setting up a CoE, governance, roles | C (whitepaper) |

## 7. Release documentation in this repo (`docs/`)

Markdown copied from the official mirror github.com/ServiceNow/ServiceNowDocs (Apache 2.0). Refresh with `bash tools/update_docs.sh`. Upstream commit per release in `docs/<release>/SOURCE_COMMIT.txt`. No images; the canonical web page is in each file's front matter (`canonical_url`).

| Folder | Files | Start here | Contents |
|---|---|---|---|
| docs/australia/release-notes/ | 347 | `index.md`, `rn-summary-highlights.md`, `new-features-changes.md` | Australia release notes. `rn-summary-*.md` (highlights, new features, changes, upgrade info, activation, plugins, deprecations, accessibility); `australia-patch-1..5.md` and hot-fix notes; `australia-security-notables.md`; `australia-summary-fixes.md`, `australia-all-other-fixes.md`; upgrade planning `upgrades-phase-1..7.md`, `upgrades-planning-checklist.md`, `upgrade-and-migration-tasks.md`; combined notes vs Zurich / Yokohama / Xanadu; sub-folder `release-notes/` with 280 per-product notes |
| docs/australia/delta-zurich-australia/ | 426 | `index.md`, `rn-combined-intro.md` | What changed Zurich → Australia, one file per product: `australia-zurich-<product>-release-notes.md` (e.g. incidentmanagement, nowassistforitservicemanagementitsm, fieldservicemanagementfortelecommunication) |
| docs/australia/delta-yokohama-australia/ | 426 | `index.md` | Same, Yokohama → Australia (for skipping a release) |
| docs/zurich/delta-yokohama-zurich/ | 383 | `index.md`, `rn-combined-intro.md` | What changed Yokohama → Zurich, one file per product: `zurich-yokohama-<product>-release-notes.md`. This is the Zurich release-notes set; the mirror has no separate Zurich release-notes folder. |
| docs/zurich/zurich-prbsummary-release-notes/ | 2 | `index.md` | Zurich known-problem (PRB) summary |
| docs/<release>/common-service-data-model-csdm/ | 57–59 | `csdm-landing-page.md`, `csdm-conceptual-model.md`, `csdm-to-cmdb-mapping.md`, `ci-relationships.md`, `csdm-term-definitions.md` | The official CSDM v5 product documentation: seven domains (foundation, ideation, design, build, service delivery = manage-tech-servs, service consumption = sell-consume, manage business services), CMDB table mapping, CI relationships, life-cycle fields and their mapping to asset and install base, implementation stages foundation/crawl/walk/run/fly, Dynamic CI Groups |
| docs/<release>/csdm-topics/<product>/ | 33 | | CSDM guidance pages that live inside product docs: install base management (CSM), SPM, hardware asset management, DPM, incident form, GRC, EA modelling shapes, Impact accelerators |
| docs/<release>/llms.txt | 1 each | | Upstream table of contents of the whole release family, with paths into the mirror for product docs not copied here |

The CSDM 5 white paper (ServiceNow community PDF, copyright ServiceNow) is kept locally in `private/CSDM-5-white-paper.md`, which is gitignored and not published. Ask for it by that path in a Claude Code session in this repo.

Routing: "what is new / what changed in Australia for product X" → `delta-zurich-australia/australia-zurich-<product>-release-notes.md`. "Upgrade planning" → `australia/release-notes/upgrades-*.md`. "Known issues" → patch notes and `zurich-prbsummary-release-notes`. Product behaviour and configuration → the PDFs in sections 2 to 4, not the release notes.

## 8. Full text of the corpus in this repo (`docs/<release>/text/`)

Every document of the local corpus is in the repo as chapter-sized markdown, filed under its release. Each document folder has a `00-index.md` listing its chapters with page ranges. Every chapter file starts with source file, release and page range, and every page boundary is marked `<!-- page N -->`, so the PDF page can be cited. Regenerate with `bash tools/extract_corpus.sh`.

Routing rule: for any question in sections 2 to 4, open `docs/<release>/text/<document>/00-index.md`, pick the chapter whose page range matches the tables above, and read only that file.

| Release | Document folder | Source | Chapter files | Size |
|---|---|---|---|---|
| yokohama | `docs/yokohama/text/telecom-media-technology` | servicenow-yokohama-telecom-media-technology-enus.pdf | 2 | 248 KB |
| zurich | `docs/zurich/text/customer-service-management` | servicenow-zurich-customer-service-management-enus.pdf | 36 | 5308 KB |
| zurich | `docs/zurich/text/it-asset-management` | servicenow-zurich-it-asset-management-enus.pdf | 34 | 5312 KB |
| zurich | `docs/zurich/text/it-business-management` | servicenow-zurich-it-business-management-enus.pdf (Strategic Portfolio Management) | 46 | 4676 KB |
| zurich | `docs/zurich/text/it-operations-management` | servicenow-zurich-it-operations-management-enus.pdf | 57 | 9760 KB |
| zurich | `docs/zurich/text/it-service-management` | servicenow-zurich-it-service-management-enus.pdf | 71 | 7668 KB |
| zurich | `docs/zurich/text/order-management` | servicenow-zurich-order-management-enus.pdf | 25 | 2728 KB |
| zurich | `docs/zurich/text/spm-demand-management-workshop` | SPM - Demand Management - Process Workshop Presentation - Zurich.pptx (all slides + notes in one file) | 1 | 53 KB |
| zurich | `docs/zurich/text/telecom-network-inventory` | servicenow-zurich-telecom-network-inventory-enus.pdf | 26 | 1268 KB |
| australia | `docs/australia/text/order-management` | servicenow-australia-order-management-enus.pdf (Sales CRM) | 30 | 3360 KB |
| australia | `docs/australia/text/telecom-media-technology` | servicenow-australia-telecom-media-technology-enus.pdf | 6 | 708 KB |
| general | `docs/general/text/ai-coe-whitepaper` | Stand up and evolve a ServiceNow AI-Center of Excellence and Innovation.pdf | 6 | 224 KB |
| general | `docs/general/text/servicenow-data-model-v3.4` | ServiceNow-Data-Model-v3.4.pdf | 1 | 261 KB |
| general | `docs/general/text/services-service-offerings` | services-service-offerings.pdf | 1 | 13 KB |

Not in the repo: `TMT CATALOG MODEL.avif` (image, no text) and the rtf duplicate of the Zurich order-management manual. The data-model PDF is diagrams; its text is fragmentary, use the PDF for the pictures.
