# Zurich Strategic Portfolio Management — Now Assist for CWM

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 820–836 of 2289

Sections: Now Assist for CWM (p820); Explore (p822); Configure (p827); Use (p829); Reference (p837)

---

<!-- page 820 -->
• Open: Represents tasks not yet started. For example, states of Draft, Pending, and Ready.
• Work in Progress: Represents tasks currently being worked on. For example, states of In
Progress, Implement, and Testing.
• Closed: Represents tasks that are finished or no longer active. For example, states of are
Complete, Cancelled, and Closed Skipped.

Priority buckets
Priority buckets provide a unified way to understand the urgency of tasks. Priority buckets are
created by mapping existing priority values from the Task table. All tasks are automatically
grouped into five Priority Buckets.
• Planning: Not yet prioritized.
• Low: Minimal urgency.
• Moderate: Medium priority tasks.
• High: Important tasks that require attention soon.
• Critical: Most urgent tasks.

Custom State and Priority values
Your ServiceNow instance may have some extended task types that have custom state or priority
values. These custom values may not align with the default values of the Task table. These work
items with these non-default State or Priority values appear as Others in the bar graphs in My
Work. This method ensures reporting accuracy instead of forcing a state/priority into the wrong
bucket.

Related topics
My Work in CWM

Now Assist for Collaborative Work Management (CWM)
The Now Assist for CWM application uses generative AI skills to improve time to value for the
tasks you perform in the CWM workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

820


<!-- page 821 -->
Get started

Explore

Configure

Learn the features and key benefits

Set up the implementation

Use

Reference

Start using generative
AI capabilities in CWM

Learn about roles, tables,
and system properties

Important:
• Not all model providers are available for customers with in-country SKUs, and some Now
Assist products/features are currently unavailable for in-country customers. For more
information, see the KB1584492
article in the Now Support Knowledge Base. Be sure to
check for model provider availability updates in future releases.
• Some Now Assist products/features are currently unavailable for customers in the
FedRAMP, NSC DOD IL5, or Australia IRAP-Protected data centers, self-hosted
customers, or in other restricted environments. For more information, see the
KB0743854
article in the Now Support Knowledge Base . Be sure to check for availability
updates in future releases.
• Some Now Assist products/features are currently available only for customers in some
regions. Be sure to check for availability updates in future releases.
• Some AI products and skills are not available in Regulated Markets. For more information,
see KB2593939: Regulated Markets AI Products/Skills Not Available . Be sure to check
for availability updates in future releases.
You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI, Google
Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist skills and
AI agents. Use the Configuration Controls in AI Control Tower
to define which options are
available, then set the skill-level preferences in the Now Assist Admin console . For more
information, see Large language models on the ServiceNow AI Platform

®

.

AI limitations
This application uses artificial intelligence (AI) and machine learning, which are rapidly evolving fields of study that generate predictions based on patterns
in data. As a result, this application may not always produce accurate, complete, or appropriate information. Furthermore, there is no guarantee that this
application has been fully trained or tested for your use case. To mitigate these issues, it is your responsibility to test and evaluate your use of this application for
accuracy, harm, and appropriateness for your use case, employ human oversight of output, and refrain from relying solely on AI-generated outputs for decision-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

821


<!-- page 822 -->
making purposes. This is especially important if you choose to deploy this application in areas with consequential impacts such as healthcare, finance, legal,
employment, security, or infrastructure. You agree to abide by ServiceNow’s AI Acceptable Use Policy

, which may be updated by ServiceNow.

Data processing
This application requires data to be transferred from ServiceNow customers' individual instances to a centralized ServiceNow environment, which may be located
in a different data center region from the one where your instance is, and potentially to a third-party cloud provider, such as Microsoft Azure. This data is handled
per ServiceNow's internal policies and procedures, including our policies available through our CORE Compliance Portal

.

Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to develop and improve ServiceNow technologies including ServiceNow
models and AI products. In addition, this application will collect task data (for Case Assist) and chat transcripts (for Chat Assist). Customers can opt out of future
data collection at any time, as described in the Now Assist Opt-Out page
For more information, see the Now Assist documentation

.

.

Exploring Now Assist for Collaborative Work Management (CWM)
Learn more about the generative AI capabilities of Now Assist for CWM and how they can
help you save time and improve efficiency for the actions your team performs within the CWM
workspace.

Skills
Generate acceptance criteria for stories
As a product manager, generate clear, comprehensive, and testable acceptance
criteria for your user stories, instead of spending hours writing and refining them
manually.
You can review and refine the suggested options to ensure they meet your story
requirements without slowing down planning. By helping you streamline generating
acceptance criteria as a process, this skill helps save time, improve quality, and
speed up delivery with cleaner backlogs and better collaboration.

CWM Doc generation and insights
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

822


<!-- page 823 -->
Generate content with Now Assist for CWM directly in your Docs using custom
prompts. In addition, summarize existing sections, elaborate where needed, and
refine drafts to help improve your productivity.
You can interact with Now Assist directly in your Doc to create new content, add
context, or improve existing sections. This helps you draft faster, refine ideas, and
keep your work relevant without leaving the page.
Work with content of the whole page
Some examples are:
• For Marketing teams: Create a compelling product launch
announcement highlighting the key benefits and emotional appeal
for our target audience.
• For Legal teams: Write a plain-language summary of the privacy
policy in this doc, that customers can easily understand.
• For product teams: Analyze the customer feedback comments
in this Doc, group into top 5 themes, and suggest top 3
enhancements for highest impact.
Now Assist uses the context from your Doc page to generate a
response.
Refine, elaborate, or improve the existing content within the page
Some examples are:
• If you have a list of stakeholders, you can ask Elaborate on the
scope of these roles.
• Rewrite this in a casual tone.

Take assistance on a blank page
Some examples are:
1. Generate 5 icebreaker questions for a virtual team-building
session.
2. Write a 3-paragraph blog post explaining why [industry trend] is
changing how businesses operate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

823


<!-- page 824 -->
3. Generate an outline for the Instagram campaign tasks for a
Hackathon initiative.

Answer questions in the context of this Doc
Whether the content in the Doc is added manually or generated using
Now Assist, you can ask questions to find anything in the page's
context.
For example, if you have a project charter document, you can try asking
What is the total budget of this project and which part is the most
expensive?

Doc summarization
Gain insights into the contents of the page by summarizing it in CWM Docs.
Whether you're reviewing long documents or preparing for meetings, Doc
summarization skill helps you stay informed and efficient.
With the Doc summarization skill, you can also elaborate and shorten content,
resulting in improved content quality in the CWM Doc pages. Quickly shorten
lengthy paragraphs, paraphrase bullet points, or expand on key points ensuring that
your content is tailored to specific needs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

824


<!-- page 825 -->
Generate CWM Tasks from Docs
Creating tasks with detailed descriptions for your CWM Board requires significant
time and manual effort. If the tasks aren’t detailed enough, it can lead to confusion
and misalignment within the team, affecting their understanding of the expected
outcomes. To avoid this manual effort and improve time to value, Now Assist can
generate tasks for your Board using the information in your Docs. This way, you can
ensure clear and comprehensive task descriptions, allowing you to focus more on
execution and less on the administrative work.
Based on the recommendations, you can ask Now Assist to perform one of the
following:
• Generate task according to its original recommendations.
• Split a task recommendation into multiple tasks.
• Combine multiple task recommendations into one task.
• Remove any task recommendation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

825


<!-- page 826 -->
Thus, by using the Task generation skill within CWM, you can:
• Remove initial roadblocks to create tasks for a CWM Board.
• Save time and increase productivity by automating the task creation process.
You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI, Google
Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist skills and
AI agents. Use the Configuration Controls in AI Control Tower
to define which options are
available, then set the skill-level preferences in the Now Assist Admin console . For more
information, see Large language models on the ServiceNow AI Platform

®

.

Now Assist Admin console
An administrator can activate and manage Now Assist features and skills for the CWM
workspace using the Now Assist Admin console. For more information, see Overview tab in Now
Assist Admin .

Now Assist panel in CWM workspace
A knowledge worker can use the Now Assist panel in CWM workspace. This conversational
interface enables the user to generate CWM tasks from the context of a Doc page. For more
information about the Now Assist panel, see Now Assist panel .

What to explore next
To learn more about configuring and using Now Assist for CWM, see:
• Configure Now Assist for Collaborative Work Management (CWM)
• Generate tasks from Docs in Collaborative Work Management (CWM)
• Now Assist for Collaborative Work Management (CWM) reference
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

826


<!-- page 827 -->
Supporting information for Now Assist for Collaborative Work Management
(CWM)
Learn about supported versions, user interfaces, and application dependencies of Now Assist
for CWM.

Compatible versions
The Now Assist for CWM application is compatible with Yokohama Patch 3 release and later.

Supported user interfaces
The Now Assist for CWM application is supported for Collaborative Work Management version
6.0.0 and later.

Application information
Installing the latest Now Assist for Collaborative Work Management (CWM) store app
(sn_cwm_ai) also installs Now Assist for Platform (sn_genai_platform).
Related topics
Configure Now Assist for Collaborative Work Management (CWM)

Configure Now Assist for Collaborative Work Management (CWM)
If you have the admin role, you can configure the implementation for the Now Assist for CWM
application so that your team members can utilize generative AI skills in the CWM workspace.

Before you begin
• The minimum version of CWM application that is required to support Now Assist for CWM
features is v6.0.0 and later. If you're on earlier versions, upgrade your app through Application
Manager. See Update an application or plugin .
• Install the Now Assist for Collaborative Work Management (CWM) plugin (sn_cwm_ai). See
Install Now Assist plugins .
• Turn on the Now Assist panel

.

Role required: admin

About this task

Use the Now Assist Admin console to configure Now Assist for SPM. All Now Assist for SPM
skills are activated by default. If a skill isn't automatically activated or you want to update its
configuration, follow the steps below.
Use the Now Assist Admin console to activate the following skills of Now Assist for CWM.
• CWM Doc generation and insights
• Acceptance criteria generation
• Tasks generation

Note: Now LLM Service is the default provider for this Now Assist application's skills.
Procedure
1. Navigate to All > Now Assist Admin > Skills.
The Now Assist Skills tab of the Now Assist Admin console is displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

827


<!-- page 828 -->
2. From the Technology grouping, select CWM.
The skills for CWM are displayed as tiles.
3. For the skill that you want to activate, select Activate skill.
4. Review the skill configuration settings from the following sections.
To edit the inputs, switch your application scope to Now Assist for Collaborative Work
Management (CWM). For more information on these inputs, see Skill inputs for Now Assist for
Collaborative Work Management (CWM).

Note: The display options are available based on the skill.
a. Choose inputs: These are the skill settings for summarizing and refining selected content
within a CWM Doc page.
This section is not available for the Tasks generation skill.
b. Select Save and continue.
c. Define access: Review who has access to skills.
▪ Configure ACLs or role-based permissions to ensure who can view or edit the skills.
▪ Review role restrictions to skill.
d. Page inputs: These are the skill settings for summarizing the whole content of a CWM Doc
page.
e. Select Save and continue.
f. Select display:
▪ In-product desktop: Enabling this option shows the skill within the CWM workspace.
▪ Now Assist panel: Enabling this option shows the skill within the Now Assist panel.
g. Select Save and continue.
h. Review and activate: Review your selections for the skill.
5. Select Activate.

Result

The skill is successfully activated.

What to do next

Return to the CWM skill grouping and repeat the process to activate any remaining skills.
If you have custom roles that require access to a skill, update the ACLs for those roles that
require access. For more information, see Implement access control in Now Assist AI agents

.

Related topics
Supporting information for Now Assist for Collaborative Work Management (CWM)
Skill inputs for Now Assist for Collaborative Work Management (CWM)

Skill inputs for Now Assist for Collaborative Work Management (CWM)
Learn about the inputs of each skill of Now Assist for CWM. By configuring inputs for a skill, you
can determine how and when a skill is used within the CWM workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

828


<!-- page 829 -->
Acceptance criteria generation skill inputs
The Acceptance criteria generation skill includes the inputs that identify the fields that are used
as context to generate acceptance criteria for a story. The following table provides more details
on the input data.
Story input data for Generate acceptance criteria skill
Input

Description

Table

Story [rm_story]
This value can't be changed.

Fields

Short description, Description
You can choose to add more fields to serve as
context to generate acceptance criteria.

Acceptance criteria template

A default template is provided.
You can choose to modify the existing
template or define a new template based on
your team's requirements.

Reference stories

Tag a story as a reference when it contains
ideal acceptance criteria. These tagged stories
serve as examples for Now Assist, giving it
additional context to generate well-structured
acceptance criteria for new stories.

Related topics
Configure Now Assist for Collaborative Work Management (CWM)

Using Now Assist for Collaborative Work Management (CWM)
Save time, reduce manual effort, and improve overall efficiency by using the generative AI
capabilities of Now Assist for CWM.
The following tasks provide guidance on using Now Assist skills within the CWM workspace.
Navigate to the task that suits your use case.
• Summarize and refine content of a Doc page in Collaborative Work Management (CWM).
• Generate and improve Docs content with Now Assist for Collaborative Work Management
(CWM).
• Generate tasks from Docs in Collaborative Work Management (CWM).
• Generate acceptance criteria for stories in CWM.

Summarize and refine content of a Doc page in Collaborative Work
Management (CWM)
Gain insights into the page content by summarizing it or improve content quality by refining it in
CWM Docs.

Before you begin

Create a Doc in CWM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

829


<!-- page 830 -->
Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. The new default
behavior works as follows:
New customers
When you install a Now Assist product, designated skills are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills that are currently enabled and customized.
A skill is turned on if:
• The Now Assist plugin is installed, but the skill was never turned on.
• An admin has never adjusted roles for the skill.
A skill is not turned on if:
• The skill was previously turned on, and then turned off again.
• An admin has adjusted roles for the skill.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

Role required: sn_cwm_ai.cwm_ai_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From the Spaces menu, navigate to the Space where your Doc is located and open it.

3. From your Doc, open the page you want to summarize or refine.
4. Choose to summarize the selected text on the page or the whole page.
◦ To refine the selected text:
a. Select a single block or multiple blocks of content on the page.
b. Select Now Assist and choose an option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

830


<!-- page 831 -->
▪ Summarize to summarize the selected text.
▪ Elaborate to lengthen the selected text based on the existing context.
▪ Shorten to make the selected text concise.

◦ To summarize the entire content on the page, select Now Assist from the Doc header and
select Summarize.

Tip: If there’s more content to summarize, you can remove some text and retry.
Now Assist analyzes the text and generates an output in a separate pop-up.
5. Optional: Based on the output generated, you can further refine the result.
6. Optional: Copy the generated output by selecting the copy to clipboard icon (
purposes such as sending an email, saving to notes, and others.

) to use it for

Important: Because the output is AI-generated, review it to ensure accuracy.
Generate and improve Docs content with Now Assist for Collaborative Work
Management (CWM)
Generate content with Now Assist for CWM directly in your Docs using custom prompts. In
addition, summarize existing sections, elaborate where needed, and refine drafts to help improve
your productivity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

831


<!-- page 832 -->
Before you begin

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. The new default
behavior works as follows:
New customers
When you install a Now Assist product, designated skills are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills that are currently enabled and customized.
A skill is turned on if:
• The Now Assist plugin is installed, but the skill was never turned on.
• An admin has never adjusted roles for the skill.
A skill is not turned on if:
• The skill was previously turned on, and then turned off again.
• An admin has adjusted roles for the skill.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

Role required: sn_cwm_ai.cwm_ai_user

About this task

You can interact with Now Assist directly in your Doc to create new content, add context, or
improve existing sections. This helps you draft faster, refine ideas, and keep your work relevant
without leaving the page.

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From the Spaces menu, navigate to the Space where your Doc is located and open it.

3. From your Doc, open the page you want to work with and use Now Assist for any of your use
cases.
Choice

Work with content of the whole page

Steps

a. From the page header, select Now Assist.
b. In the text box, enter your prompt.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

832


<!-- page 833 -->
Choice

Steps

Some examples are:
▪ For Marketing teams: Create a com­
pelling product launch announcement
highlighting the key benefits and emo­
tional appeal for our target audience.
▪ For Legal teams: Write a plain-language
summary of the privacy policy in this
doc, that customers can easily under­
stand.
▪ For product teams: Analyze the cus­
tomer feedback comments in this Doc,
group into top 5 themes, and suggest
top 3 enhancements for highest impact.

Note: Now Assist uses the context
from your Doc page to generate a re­
sponse.
a. Select the content blocks that you'd like to
work on.
b. Select the Now Assist icon (

).

c. In the box, enter your prompt.
Some examples are:

Refine, elaborate, or improve the existing
content within the page

▪ If you have a list of stakeholders, you
can ask Elaborate on the scope of these
roles.
▪ Rewrite this in a casual tone.

a. From the page header, select Now Assist.
b. Enter a prompt with context for Now Assist
to create your first draft.
Take assistance on a blank page

Some examples are:
i. Generate 5 icebreaker questions for a
virtual team-building session.
ii. Write a 3-paragraph blog post explain­
ing why [industry trend] is changing
how businesses operate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

833


<!-- page 834 -->
Choice

Steps

iii. Generate an outline for the Instagram
campaign tasks for a Hackathon initia­
tive.

Whether the content in the Doc is added man­
ually or generated using Now Assist, you can
ask questions to find anything in the page's
context.
For example, if you have a project charter doc­
ument, you can try asking What is the total
budget of this project and which part is the
most expensive?
Answer questions in the context of this Doc

Now Assist analyzes the text and generates an output in a separate pop-up.
4. Optional: Based on the output generated, you can further refine the result.
5. Optional: Copy the generated output by selecting the copy to clipboard icon (
purposes such as sending an email, saving to notes, and others.

) to use it for

Important: Because the output is AI-generated, review it to ensure accuracy.
Generate tasks from Docs in Collaborative Work Management (CWM)
Use the generative AI capabilities of Now Assist to create tasks from the content of your Docs
and help you add them to the required Board in CWM workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

834


<!-- page 835 -->
Before you begin

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. The new default
behavior works as follows:
New customers
When you install a Now Assist product, designated skills are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills that are currently enabled and customized.
A skill is turned on if:
• The Now Assist plugin is installed, but the skill was never turned on.
• An admin has never adjusted roles for the skill.
A skill is not turned on if:
• The skill was previously turned on, and then turned off again.
• An admin has adjusted roles for the skill.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

Create a Doc in CWM
Role required: sn_cwm_ai.cwm_ai_user

About this task
https://player.vimeo.com/video/1079861522?
h=a6bccdb612&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From the Spaces menu, navigate to the Space where your Doc is located and open it.

3. From the header of the Doc, select Create Tasks.
The Now Assist panel opens up. Now Assist generates recommendations for tasks based on
the information on your Doc page. So, to experience an easier interaction within the panel, you
can pin it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

835


<!-- page 836 -->
4. Optional: Go through the task recommendations and choose to refine or modify any task
recommendation.
5. You can iterate on refining or modifying the tasks and when you’re satisfied with the
recommendations, select Add to Board.
6. Select the Space of the CWM Board to which you want to add these tasks to.
7. Select the Board to add these tasks to.
Now Assist adds all the generated task recommendations to the selected Board. You can
navigate to the Board through the link provided in the Now Assist message to review them.

Note: If the Space you selected in Step 6 has just one Board, then you won't be asked
to select a Board. The tasks are added to the Board directly.

Generate acceptance criteria for stories in CWM
Create clear, comprehensive, and testable acceptance criteria for user stories without writing
them manually in Collaborative Work Management (CWM). Review and refine suggested options
to ensure they meet your requirements.

Before you begin

Role required: sn_cwm_ai.cwm_ai_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From the Spaces menu, navigate to the Board containing your story.
3. Select the story to open its details in the side panel.
4. From the Acceptance criteria field in the side panel, select the Use Now Assist to... menu (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

836


