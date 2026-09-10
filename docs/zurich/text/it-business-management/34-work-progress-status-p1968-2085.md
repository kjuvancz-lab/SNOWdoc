# Zurich Strategic Portfolio Management — Work progress status

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1968–2085 of 2289

Sections: Work progress status (p1968); Dashboards (p1970); Integrate (p2003); Reference (p2059); Mobile experience (p2074)

---

<!-- page 1968 -->
Field

Description

For example, if it's your team's first sprint,
enter 1.
Start date

Start date of the team's sprint.

Duration (days)

Sprint duration of the team.

Number of Sprints

Number of sprints that you want to add to the
team.
For example, if you want to add four sprints to
the team, enter 4.

6. Click OK.
You can see new sprints for the team on the program planning board.

Work Progress Status for Agile Teams
The Work Progress Status for Agile Teams application provides you with indicators such
as estimated completion date and progress status (green, yellow, red) for all your Agile
Development 2.0 epics.
As a product owner or a team lead, these indicators help you understand if your Agile team
could complete the epics' work by the planned end dates so that you can adjust your plans
accordingly. As a team member working on stories of an epic, these status indicators help you
understand your contribution to the overall work and your progress so that you can review your
work strategy if necessary.

Note: You must enter a value for the Planned end date field for an Agile Development 2.0
epic for these work progress status indicators to populate.

Install Work Progress Status for Agile Teams
Install the Work Progress Status for Agile Teams (sn_scrum_progress) application from
ServiceNow Store.

Before you begin
• Activate the Agile Development 2.0 (com.snc.sdlc.agile.2.0) plugin.
• Install Performance Analytics Content Pack for Agile 2.0.
To verify that plugins and applications are activated and installed, navigate to Subscription
Management > Subscriptions in your instance. The list displays the subscriptions your
organization has purchased. Activation of Agile Development 2.0 and Performance Analytics
Content Pack for Agile 2.0 on production instances may require separate licenses. Contact
ServiceNow Support for details.
Role required: admin

Procedure
®

1. Navigate to ServiceNow Store

.

2. Search for Work Progress Status for Agile Teams.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1968


<!-- page 1969 -->
3. Click the application tile.
You can view detailed information about the application you are installing.

Note: Consider reading the Other Requirements and Dependencies sections, as
applicable.
4. Click Get and enter your Now Support login credentials.
5. Click Request Install.
6. In the Instance Name field, enter your details and click Validate Instance.
7. In the Reason for the Instance field, enter your details and click Request.
You receive an email with detailed installation instructions.
8. Log in to the instance you want to install Work Progress Status for Agile Teams on.
9. Navigate to System Applications > Applications.
10. Locate the Epic Progress Status for Agile 2.0 application, select it, and click Install.

What to do next

If you haven't already, start the [Scrum] Daily Data Collection job. For more information, see
Enable daily data collection for Agile 2.0 dashboards.

Reviewing progress status for Agile Development 2.0 epics
Understand if your work would be completed by the planned end dates by reviewing progress
status of your Agile Development 2.0 epics.
Navigate to Agile Development 2.0 > Epics and filter the epics for your team.
The Status column of the epics list shows a Green, Yellow, or Red indicator for each epic to
indicate the following:
• Green: Your epic is on track to be complete by the planned end date.
• Yellow: Your epic is off track and your plan of execution must be reviewed.
• Red: Your epic is not progressing well and might be at risk of not being complete by the
planned end date,
The estimated completion date displays a date with the likelihood of the epic's completion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1969


<!-- page 1970 -->
Wok progress of Epics

The [Scrum] daily data collection job helps generate the burnup report for your epics. Using
the data generated for these epic burnup reports, an estimated completion date is determined
for each of your epics. You can see that this date is the intersection of Completed and Scope
forecast series in the respective epic burnup reports.
Based on this estimated completion date, the progress status for your epics is determined.
Progress status for an epic is calculated only under the following conditions:
• Planned end date is populated in the epic.
• Percentage completion of the epic is a value greater than 0.
The color of the progress status indicator is determined using the following conditions:
• Green: Estimated completion date is on or before the planned end date.
• Yellow: Estimated completion date is beyond the planned end date by a deviation of 1% to 14%.
• Red: Estimated completion date is beyond the planned end date by a deviation of 15% or more.
Related topics
Agile 2.0 Epic Dashboard

Performance Analytics Content Pack for Agile 2.0
Improve your Agile processes and practices using preconfigured dashboards with data
visualizations from the Platform Analytics Content Pack for Agile 2.0.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1970


<!-- page 1971 -->
Enabling the Performance Analytics Solution
Use the Performance Analytics widgets on the dashboard to visualize data over time, analyze
your business processes, and identify areas of improvement. With solutions, you can get value
from Performance Analytics for your application with minimal setup.

Note: Solutions include some dashboards that are inactive by default. You can activate
these dashboards to make them visible to end users according to your business needs.
For unlimited access to all features of this Platform Analytics Solution, purchase a
Performance Analytics subscription. For more information, see Activating your Performance
Analytics subscription .
To use this Platform Analytics Solution, you must activate your subscription to Performance
Analytics for Business Management. For more information about entitlements to Performance
Analytics, see Activating your Performance Analytics subscription .
This base system Performance Analytics Solution is available from the ServiceNow Store. To
enable this solution, as an admin, navigate to System Applications > Search ServiceNow Store.
When the landing page for the ServiceNow Store opens, search for Performance Analytics
Content Pack for Agile 2.0. When you find the solution, follow the instructions in the ServiceNow
Store. The ServiceNow Store has its own documentation.

Business stakeholder role support
The business stakeholder role (sn_agile_read) has read-only access to all Agile 2.0 dashboards.
For more information, see Business stakeholder role for Agile Development 2.0.
Related topics
Activate your Performance Analytics subscription

Install Performance Analytics Content Pack for Agile 2.0
Install the Performance Analytics Content Pack for Agile 2.0 application from the ServiceNow
Store.

Before you begin
• Activate the Agile Development 2.0 (com.snc.sdlc.agile.2.0) plugin.
• Activate the Performance Analytics (com.snc.pa) plugin.
Role required: admin

Note:
• To verify that plugins and applications are installed and activated, navigate to
Subscription Management > Subscriptions in your instance. The list displays the
subscriptions your organization has purchased.
• Activation of the Agile Development 2.0 and Performance Analytics plugins on
production instances may require separate licenses. Contact ServiceNow Support for
details.

Procedure
®

1. Navigate to ServiceNow Store

.

2. Search for Performance Analytics Content Pack for Agile 2.0.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1971


<!-- page 1972 -->
3. Click the application tile.
You can view detailed information about the application you are installing.

Note: Consider reading the Other Requirements and Dependencies sections, as
applicable.
4. Click Get and enter your Now Support login credentials.
5. Click Request Install.
6. In the Instance Name field, enter your details and click Validate Instance.
7. In the Reason for the Instance field, enter your details and click Request.
You receive an email with detailed installation instructions.
8. Log in to the instance you want to install Performance Analytics Content Pack for Agile 2.0 on.
9. Navigate to System Applications > Applications.
10. Locate the application, select it, and click Install.

Result

You can access the Agile Development 2.0 dashboard from Agile Development > Dashboards.

What to do next

Start the [Scrum] Daily Data Collection job. For more information, see Enable daily data collection
for Agile 2.0 dashboards.

Enable daily data collection for Agile 2.0 dashboards
Enable scheduled data collection to begin collecting scores on new data automatically. Data
collection jobs automatically collect scores for automated indicators and breakdowns.

Before you begin

Role required: pa_admin or admin

About this task

Note: Historical data collection is not supported for the underlying indicators of the
[Scrum] Daily Data Collection job.

Procedure
1. Navigate to All > Performance Analytics > Data Collector > Jobs.
2. Find and open the [Scrum] Daily Data Collection job.
3. Start the [Scrum] Daily Data Collection job.
a. Scroll down to the Job parameters section.
b. Set the Run as field to a user that has one of the following roles: pa_admin,
pa_data_collector, or admin roles.
c. Verify that the time zone in the Run As tz field is appropriate for your organization.
This timezone is used for the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1972


<!-- page 1973 -->
▪ Database queries created for this job
▪ Indicator conditions such as [[Created][on][Today]]
d. Enable the scheduled run of the job by selecting the Active checkbox.
4. Click Update.

Upgrading the layout of Agile 2.0 dashboards
Upgrade to the latest layout of Agile 2.0 dashboards using Solution Library.
Existing users who upgraded to the latest version 1.1 of Performance Analytics Content Pack for
Agile 2.0 can install the latest layout of the dashboards from Solution Library.
For example, if you are upgrading from version 1.0.2 or earlier of the application, then install the
following dashboards from Solution Library to access the latest layout:
• Agile 2.0 Epic Dashboard
• Agile 2.0 Sprint Dashboard
• Agile 2.0 Prior Sprint Dashboard
• Agile 2.0 Release Dashboard
• Agile 2.0 Team Dashboard

Note: For users on the Paris release, the Install and Upgrade buttons are not visible on
the Solution Library content form. For information on resolving this issue, see Allow PA
Solution Library for Store apps .

Agile 2.0 Epic Dashboard
Visually analyze the progress of the stories of an epic over a given period using the Epic
Dashboard.
Navigate to All > Agile Development > Dashboards and select Agile 2.0 Epic Dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1973


<!-- page 1974 -->
Epic Summary tab

Cycle Time tab

The Agile 2.0 Epic Dashboard provides the following information:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1974


<!-- page 1975 -->
• Displays the number of stories that are complete, and number of stories that are missing
estimates for an epic.
• Displays the number of stories of the epic in their current state and their progress.
• Indicates the scope changes, if any, and trends of those scope changes.
• Indicates the pace at which the team is working on stories in the epic.
• Forecasts when the epic is likely to be completed based on scope change and completion rate
trends.
• Shows time elapsed for the stories of an epic to go from an in-progress state to a completed
state.
Canceled stories are not included in any of this data.

End user and roles
End user goal with required role and benefits
End user and goal

Required role

Scrum master: Needs clear
visibility into real-time
progress of team stories and
the changes in scope for the
epic to complete the epic on
time.

scrum_user

Benefits

• View current states and time
in each state for the stories
of the epic
• View epic burnup trend
• Estimate epic completion
dates
• Identify outlier stories that
took longer than expected

Indicators
Scrum: Sum of story points of all stories in epics
Generates the scope series in the Epic Burnup report, which indicates the size of
the epic.
Scrum: Sum of story points of completed stories in epics
Generates the completed series in the Epic Burnup report, which indicates the
amount of work that has been completed in the epic.
Scrum: Count of all stories in the current epic
Generates the area series the Epic Cumulative Flow Diagram report, which indicates
the number of stories of the current epic by state.

Breakdowns
• Scrum: Epic
• Scrum: State

Widgets
Total Story Count
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1975


<!-- page 1976 -->
Indicates the total number of stories in the epic.
Stories Completed
Indicates the number of stories in the epic that are complete.
Missing Estimates
Indicates the number of stories in the epic that are missing estimates.

Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Agile 2.0, then install this dashboard from Solution Library to upgrade its layout and access the
following data visualizations:
• Epic Cumulative Flow Diagram
• Story Cycle Time
For more information, see Upgrading the layout of Agile 2.0 dashboards.
Epic Summary
Title

Type

Epic Burnup

Description

Shows the epic burnup trends. You can estimate when the epic
completed.
Line chart

The Epic Burnup report comprises the following series that can b
displayed based on your preference:
• Scope: Indicates the size of the epic.

• Scope Forecast: Predicts the possibility of scope change for t
which is based on historical data.

• Completed: Indicates the amount of work in the epic that is co

• Completed Forecast: Predicts the burnup for the future dates
whether you can complete the epic on time. This prediction is
historical data.

Note: The point at which the Completed Forecast series in

crosses the Scope Forecast series is a predictor for when th
completed. If the Completed Forecast series and the Scope
do not appear to ever intersect, it is a warning that scope is
faster than work is being completed.
Epic Cumulative
Flow Diagram

Area

chart

Monitor the progress of all the stories of your epic between its a
end dates.

View the number of stories in each state by their arrival to a state
state, and its departure from this state.

The Epic Cumulative Flow Diagram report comprises the followin
be hidden or displayed based on your preference:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1976


<!-- page 1977 -->
Epic Summary (continued)
Title

Type

Description

• Ready: Indicates the number of stories of the epic that are rea
on.
• Work in Progress: Indicates the number of stories of the epic
development.

• Ready for Testing: Indicates the number stories of the epic th
tested.

• Testing: Indicates the number of stories of the epic that are cu
tested.
• Complete: Indicates the number of stories that are complete.

Note: Stories in Ready and Cancelled states are not includ
Cycle Time
Title

Type

Description

Bubble chart

Identify the time taken for
each story in the epic to move
from an in-progress state to
completion.

Story Cycle Time

Each bubble on the graph
represents a story. The height
of the bubble from the xaxis shows how long that
story took to move from an inprogress state to completion.
The size of the story bubbles
are relative to each other
based on their story points.
Hovering your mouse cursor
over a bubble displays the
following details about that
story:
• Story points
• Date that the story is moved
to completion
• Total cycle time (in days) of
the story
• Number of days that the
story was in the Work in
progress state

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1977


<!-- page 1978 -->
Cycle Time (continued)
Title

Type

Description

• Number of days that the
story was in the Ready for
testing state
• Number of days that the
story was in the Testing
state
From the Story State section
towards the right of the report,
you can filter the report to view
the cycle time of the stories for
the selected states. The chart
displays the cycle time for
each story as the cumulative
sum of all duration of the
selected states.
If there are too many stories
at any area of the chart and
the bubbles appear crowded
on the report, you can zoom
in that particular area of the
report for a clearer view.

You can customize the Burnup and Cumulative Flow Diagram reports. For more information, see
Customizing Agile 2.0 dashboard reports.

Agile 2.0 Sprint Dashboard
Track the progress of your stories in the current sprint and forecast sprint completion using the
Sprint Dashboard.
Navigate to All > Agile Development > Dashboards and select Agile 2.0 Sprint Dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1978


<!-- page 1979 -->
Agile sprint dashboard widgets

Agile sprint dashboard burndown report

Agile sprint dashboard burnup visualization

Agile sprint dashboard cumulative flow diagram

The Agile 2.0 Sprint Dashboard provides the following insights:
• Displays details of the sprint such as percentage of work that is complete, time elapsed, and
total number of stories that are missing estimates.
• Displays the number of stories of the sprint in their current state and their progress.
• Indicates the scope changes, if any, and trends of those scope changes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1979


<!-- page 1980 -->
• Indicates the way the team needs to progress on stories to achieve the sprint goal.
• Forecasts data showing the likelihood of completing the sprint as planned.

End user and roles
End user and goal

Required role

Scrum master and sprint
planner: Need visibility into
scope changes, completed
and remaining work for a
sprint to adjust plans to
complete the sprint on time.

scrum_user

Benefits

• Analyse the sprint burnup
and burndown trends
• Analyse the scope change
for the sprint
• View current states and
analyse the time in each
state for the stories of the
sprint
• Estimate sprint completion
dates

Indicators
Scrum: Sum of story points of all stories in the current sprint
Generates the scope series in the Sprint Burndown and Burnup reports. The scope
series indicates the amount of work (in story points) that is the planned for the
sprint.
Scrum: Sum of story points of active stories in the current sprint
Generates the completed series in the Sprint Burndown and Burnup reports. The
completed series indicates the amount of work (in story points) completed in the
sprint.
Scrum: Time elapsed in sprint
Calculates the time to be displayed in the Time Elapsed widget.
Scrum: Count of all stories in the current sprint
Generates the area series in the Sprint Cumulative Flow Diagram report. It indicates
the number of stories in the current sprint.
Scrum: Percent Completed by Points
Calculates the amount of work (in percentage) completed for the sprint. The value is
the result of the following formula:
([[Scrum: Sum of story points of completed stories in
current sprint]]/[[Scrum: Sum of story points of all
stories in the current sprint]]*100)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1980


<!-- page 1981 -->
Breakdowns
• Scrum: Sprint
• Scrum: Current Sprint
• Scrum: State

Widgets
Scope
Indicates the amount of work in story points that is planned for the sprint. This
widget lets you see at a glance how much work must be completed to achieve the
sprint goal. It also lets you drill down to detail on the stories planned into the sprint.
Percent Completed
Indicates the percentage of work that has been completed in the sprint using story
points. This widget lets you see at a glance how much work has been completed in
the sprint. Together with the adjacent Time Elapsed widget, these widgets let you
easily see whether you are completing work at a rate consistent with achieving the
sprint goal on schedule.
Time Elapsed
Indicates the percentage of time that has elapsed between the start date and
planned end date of the sprint. Together with the adjacent Percent Completed
widget, these widgets let you easily see whether you are completing work at a rate
consistent with achieving the sprint goal on schedule.
Committed Points
Indicates the committed scope (in number of story points) of the sprint. Together
with the adjacent Scope widget, these widgets let you see difference between the
scope committed at the start of the sprint and the current scope of the sprint.

Note: This widget is not visible by default. You can add it from Reports to your
dashboard. For more information, see Edit a responsive dashboard

.

Missing Estimates
Indicates the total number of stories in the sprint that are missing estimates. It is
required that you use estimates for the other indicators, widgets, and reports on this
dashboard to be meaningful.

Tip: If you do not estimate stories, enter a "1" in the Story Points field. The
other indicators, widgets, and reports will then effectively function by count.
Blocked Work
Indicates the amount of work (in story points) in the sprint that is blocked.

Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Agile 2.0, then install this dashboard from Solution Library to upgrade its layout and access the
following visualizations:
• Sprint Burnup
• Sprint Cumulative Flow Diagram
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1981


<!-- page 1982 -->
For more information, see Upgrading the layout of Agile 2.0 dashboards.

Note: For all reports shown in the Sprint dashboard, the planned end date of the Sprints is
used as a filter. Completed Sprints appear in the chart only if their Planned end date is less
than or equal to the current date.

Title

Type

Description

Line

Indicates the scope changes, if any, and trends of those scope
changes. Indicates the ideal pace of work, how much work is
remaining, and if the scope is likely to be completed before the
end of the sprint.

Sprint
Burndown

The Sprint Burndown report comprises the following series that
can be hidden or displayed based on your preference:
• Scope: Indicates the amount of work that is planned for the
sprint.
• Scope Forecast: Predicts the possibility of scope change for
the future dates, which is based on historical data.
• Ideal Burndown: Indicates how the team needs to progress on
stories to complete the sprint on time.
• Remaining: Indicates the amount of work left for completion in
the sprint. If the actual burndown is above the ideal burndown,
it implies that there is more work left than originally estimated.
The team is running behind the schedule of the sprint. If the
actual burndown is below the ideal burndown, it implies that
there is less work left than originally estimated. The team is
running ahead of the schedule of the sprint.
• Remaining Forecast: Predicts the burndown for the future
dates. It indicates whether you can complete the sprint on time.
The prediction is based on historical data.
Sprint
Burnup
Line

Shows the sprint burnup trend indicating scope changes.
Forecasts future changes in scope and the trend of work
completion.
The Sprint Burnup report comprises the following series that can
be hidden or displayed based on your preference:
• Scope: Indicates the amount of work that is planned for the
sprint.
• Scope Forecast: Predicts the possibility of scope change for
the future dates, which is based on historical data.
• Completed: Indicates the amount of work completed in the
sprint.
• Completed Forecast: Predicts the burnup for the future dates.
It indicates whether you can complete the sprint on time. The
prediction is based on historical data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1982


<!-- page 1983 -->
Title

Type

Sprint
Cumulative
Flow
Area
Diagram

Description

Monitor the progress of all the stories of your sprint between its
actual start and end dates.
View the number of stories in each state by their arrival to a state,
time in this state, and its departure from this state.
The Sprint Cumulative Flow Diagram report comprises the
following areas that can be hidden or displayed based on your
preference:
• Ready: Indicates the number of stories in the sprint that are
ready to start work on.
• Work in Progress: Indicates the number of stories in the sprint
that are in development.
• Ready for Testing: Indicates the number stories in the sprint
that are ready to be tested.
• Testing: Indicates the number of stories in the sprint that are
currently being tested.
• Complete: Indicates the number of stories in the sprint that are
complete.

Note: Stories in Ready and Cancelled states are not
included in this report.
You can customize the Burnup, Burndown, and Cumulative Flow Diagram reports. For more
information, see Customizing Agile 2.0 dashboard reports.

Agile 2.0 Prior Sprint Dashboard
Prior Sprint Dashboard provides data visualization on scope, actual burndown and burnup, and
forecast trends of previous sprints. Analyze the data and plan the work for upcoming sprints.
Navigate to All > Agile Development > Dashboards and select Agile 2.0 Prior Sprint Dashboard.
Agile 2.0 prior sprint dashboard widgets

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1983


<!-- page 1984 -->
Agile 2.0 prior sprint dashboard burndown visualization

Agile 2.0 prior sprint dashboard burnup visualization

Note: Canceled stories are not included in any of this data.
End user and roles
End user and goal

Required role

Scrum master and sprint
scrum_user
planner: Need visibility into
actual changes in scope and
forecast trends of the previous
sprints.

Benefits

• Analyze sprint burndown
and burnup trends
• Use the data to plan for
upcoming sprints

Indicators
The following are the indicators which are used to generate the data for the reports of this
dashboard.
Scrum: Sum of story points of all stories in the current sprint
Generates the scope series in the Sprint Burndown and Sprint Burnup reports.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1984


<!-- page 1985 -->
Scrum: Sum of story points of active stories in the current sprint
Generates the completed series in the Sprint Burndown and Sprint Burnup reports.

Breakdowns
The following are the breakdowns used by the indicators.
• Scrum: Sprint
• Scrum: Prior Sprint

Widgets
Committed points
Indicates the committed scope (in number of story points) of the sprint.
Stories Completed
Indicates the total number of stories that were completed in the previous sprint.
Completed
Indicates the amount of work (in story points) that was completed in the previous
sprint.
Missing Estimates
Indicates the total number of stories in the previous sprint that were missing
estimates.

Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for Agile
2.0, then install this dashboard from Solution Library to upgrade its layout and access the Sprint
Burnup visualization. For more information, see Upgrading the layout of Agile 2.0 dashboards.

Title

Type

Sprint
Line
Burndown
chart

Description

Indicates the scope changes, if any, and trends of those scope
changes. Indicates the ideal pace of work, how much work is
remaining, and if the scope is likely to be completed before the end
of the sprint.
The Sprint Burndown report comprises the following series that can
be hidden or displayed based on your preference:
• Scope: Indicates the amount of work that is planned for the sprint.
• Ideal Burndown: Indicates how the team needs to progress on
stories to complete the sprint on time.
• Remaining: Indicates the amount of work left for completion in the
sprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1985


<!-- page 1986 -->
Title

Type

Description

If Remaining is above the Ideal Burndown, it implies that there
is more work left than originally estimated. The team is running
behind the schedule of the sprint.
If Remaining is below Ideal Burndown, it implies that there is less
work left than originally estimated. The team is running ahead of
the schedule of the sprint.
Analyze the burndown trends and accordingly plan the workload for
an upcoming sprint.

Sprint
Burnup

Line

chart

Shows the previous sprint burnup trend indicating scope changes.
Analyze future changes the trend of team's work completion.
The Sprint Burnup report comprises the following series that can be
hidden or displayed based on your preference:
• Scope: Indicates the amount of work that is planned for the sprint.
• Completed: Indicates the amount of work completed in the sprint.

You can customize the Burnup and Burndown reports. For more information, see Customizing
Agile 2.0 dashboard reports.

Agile 2.0 Release Dashboard
Track the progress of your stories and analyze scope changes in the current release using Agile
2.0 Release Dashboard.
Navigate to All > Agile Development > Dashboards and select Agile 2.0 Release Dashboard.
Release Summary tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1986


<!-- page 1987 -->
Cycle Time tab

The dashboard:
• Displays important details of the release such as percentage of work that is complete, time
elapsed, and total number of stories that are missing estimates.
• Displays the number of stories of the release in their current state and their progress.
• Indicates the scope changes, if any, and trends of those scope changes.
• Indicates the pace at which the team is completing stories that are planned for the release.
• Forecasts data showing the likelihood of completing the release as planned.
• Shows time elapsed for the stories of a release to go from an in-progress state to a completed
state.

Note: Canceled stories are not included in any of this data.
End user and roles
End user goal with required role and benefits
End user and goal

Required role

Product owner: Needs
visibility into scope changes,
team's pace, and real-time
progress of the stories for the
release.

scrum_user

Benefits

• Track progress of your
stories that are planned for
a release
• Resolve any bottlenecks to
deliver the release on time
• Identify outlier stories that
took longer than expected

Indicators
Scrum: Sum of story points of completed stories in the active releases
Generates the Completed series in the Release Burndown and Burnup reports.
These series indicate the amount of work in story points that has been completed
for the release.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1987


<!-- page 1988 -->
Scrum: Sum of story points of active stories in the current releases
Generates the scope series in the Release Burndown and Release Burnup reports.
The scope series indicates the amount of work in story points that is planned for the
release.
Scrum: Time elapsed in the release
Calculates the time to be displayed in the Time Elapsed widget.
Scrum: Count of all stories in the current release
Generates the area series in the Release Cumulative Flow Diagram report, which
indicates the number of stories of the current release by state.

Breakdowns
• Scrum: Release
• Scrum: State

Widgets
Percent Completed
Indicates the percentage of work (in story points) that has been completed in the
release. This widget lets you see at a glance how much work has been completed in
the release. Together with the adjacent Time Elapsed widget, these widgets let you
easily see whether you are completing work at a rate consistent with achieving the
release goal on schedule.
Scope
Indicates the amount of work in story points that is planned for the release. This
widget lets you see at a glance how much work must be completed to achieve the
releaser goal. It also lets you drill down to detail on the stories planned into the
release.
Time Elapsed
Indicates the percentage of time that has elapsed between the start date and
planned end date of the release. Together with the adjacent Percent Completed
widget, these widgets let you easily see whether you are completing work at a rate
consistent with achieving the Release goal on schedule.
Blocked Work
Indicates the total number of stories in the release that are missing estimates. It is
required that you use estimates for the other indicators, widgets, and reports on this
dashboard to be meaningful.

Note: If you do not estimate stories, enter a "1" in the Story Points field. The
other indicators, widgets, and reports will then effectively function by count.
Blocked Work
Indicates the number of stories in the release that are missing estimates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1988


<!-- page 1989 -->
Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Agile 2.0, then install this dashboard from Solution Library to upgrade its layout and access the
following visualizations:
• Release Cumulative Flow Diagram
• Story Cycle Time
For more information, see Upgrading the layout of Agile 2.0 dashboards.
Release Summary
Title

Type

Description

Release
Burnup

Line

Analyse the burnup trends, and estimate when the release work is
likely to be completed. The release burnup report comprises the
following series that can be hidden or displayed based on your
preference:
• Scope: Indicates the amount of work that is planned for the
release.
• Scope Forecast: Predicts the possibility of scope change for
the future dates. This prediction is based on historical data.
• Completed: Indicates the amount of release work that is
complete.
• Completed Forecast: Predicts the burnup for the future dates in
the release. It indicates whether you can deliver the release on
time.

Note: The point at which the Completed Forecast series
intersects with or crosses the Scope Forecast series is a
predictor for when the release might be completed. If the
Completed Forecast series and the Scope Forecast series
do not appear to ever intersect, it is a warning that scope is
being added faster than work is being completed.

Release
Burndown

Line

Indicates the scope changes, if any, and trends of those scope
changes. Indicates the ideal pace of work, how much work is
remaining, and if the scope likely to be completed before the
end of the sprint. The Release Burndown report comprises the
following series that can be hidden or displayed based on your
preference:
• Scope: Indicates the amount of work that is planned for the
release.
• Scope Forecast: Predicts the possibility of scope change for
the future dates in the release. This prediction is based on
historical data.
• Ideal Burndown: Indicates how the team needs to progress on
stories to deliver the release on time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1989


<!-- page 1990 -->
Release Summary (continued)
Title

Type

Description

• Remaining: Indicates the amount of work that is completed.
If Remaining is above the ideal burndown, it implies that there
is more work left than originally estimated. The team is running
behind the schedule of the release. If the Remaining is below
the ideal burndown, it implies that there is less work left than
originally estimated. The team is running ahead of the schedule
of the release.
• Completed Forecast: Predicts the burndown for the future
dates in the release. It indicates whether you can deliver the
release on time.
Release
Cumulative
Flow
Diagram

Area

Monitor the progress of all the stories of your release between its
actual start and end dates.
View the number of stories in each state by their arrival to a state,
time in this state, and its departure from this state.
The Release Cumulative Flow Diagram report comprises the
following areas that can be hidden or displayed based on your
preference:
• Ready: Indicates the number of stories in the release that are
ready to start work on.
• Work in Progress: Indicates the number of stories in the
release that are in development.
• Ready for Testing: Indicates the number stories in the release
that are ready to be tested.
• Testing: Indicates the number of stories in the release that are
currently being tested.
• Complete: Indicates the number of stories in the release that
are complete.

Note: Stories in Ready and Cancelled states are not
included in this report.
Cycle Time
Title

Type

Description

Story Cycle Time

Bubble chart

Identify the time taken for
each story in the release to
move from an in-progress
state to completion.
Each bubble on the graph
represents a story. The height
of the bubble from the xaxis shows how long that
story took to move from an in-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1990


<!-- page 1991 -->
Cycle Time (continued)
Title

Type

Description

progress state to completion.
The size of the story bubbles
are relative to each other
based on their story points.
Hovering your mouse cursor
over a bubble displays the
following details about that
story:
• Story points
• Date the story is moved to
completion
• Total cycle time (in days) of
the story
• Number of days that the
story was in the Work in
progress state
• Number of days that the
story was in the Ready for
testing state
• Number of days that the
story was in the Testing
state
From the Story State section
towards the right of the report,
you can filter the report to view
the cycle time of the stories for
the selected states. The chart
displays the cycle time for
each story as the cumulative
sum of all duration of the
selected states.
If there are too many stories
at any area of the chart and
the bubbles appear crowded
on the report, you can zoom
in that particular area of the
report for a clearer view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1991


<!-- page 1992 -->
Cycle Time (continued)
Title

Type

Description

You can customize the Burnup, Burndown, and Cumulative Flow Diagram reports. For more
information, see Customizing Agile 2.0 dashboard reports.

Agile 2.0 Prior Release Dashboard
Prior Release Dashboard provides data visualization on scope, actual burnup and burndown,
and forecast trends of previous releases. Analyze the data and plan the work for upcoming
releases.
Navigate to All > Agile Development > Dashboards and select Agile 2.0 Prior Release
Dashboard.
Agile 2.0 prior release burndown report

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1992


<!-- page 1993 -->
Agile 2.0 prior release burnup report

Note: Canceled stories are not included in any of this data.
End user and roles
End user goal with required role and benefits
End user and goal

Required role

Product owner: Needs
scrum_user
visibility into actual changes in
scope and forecast trends of
the previous releases.

Benefits

Analyze trends for the
following:
• Scope changes
• Previous releases

Indicators
Scrum: Sum of story points of completed stories in the active releases
Generates the actual burndown series in the Release Burndown report, and the
completed series in the Release Burnup report.
Scrum: Sum of story points of all stories in active releases
Generates the scope series in the Release Burndown and Release Burnup reports.

Breakdowns
• Scrum: Release
• Scrum: Prior release

Widgets
Stories Completed
Indicates the total number of stories that were completed in the previous release.
Completed
Indicates the amount of work (in story points) that was completed in the previous
release.
Missing Estimates
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1993


<!-- page 1994 -->
Indicates the total number of stories in the release that are missing estimates.

Data visualizations
Prior release Summary
Title

Type

Release
Burnup

Line

chart

Description

Analyze the burnup trends of a previous release.
The prior release burnup report comprises the following series that
can be hidden or displayed based on your preference:
• Scope: Indicates the amount of work that was planned for the
release.
• Completed: Indicates the amount of release work that is complete
for this release.

Release
Line
Burndown
chart

Shows the scope and rate of scope change, the ideal rate for
work completion, and the actual rate of work completion. Analyze
the burndown trends and accordingly plan the workload for an
upcoming release.
The prior release burnup report comprises the following series that
can be hidden or displayed based on your preference:
• Scope: Indicates the amount of work that was planned for the
release.
• Ideal Burndown: Indicates how the team had to progress on
stories to deliver the release on time.
• Remaining: Indicates the amount of work that is completed.
If the actual burndown (Remaining) is above the ideal burndown,
it implies that the team was running behind the schedule of the
release. If the actual burndown (Remaining) is below the ideal
burndown, it implies that the team was running ahead of the
schedule of the release.

You can customize the Burnup and Burndown reports. For more information, see Customizing
Agile 2.0 dashboard reports.

Agile 2.0 Team Dashboard
Team Dashboard provides a visualization of the team's progress on stories over a given period.
It provides team predictability charts and helps you plan the team's capacity for the upcoming
sprints. In addition, it provides details of all the team members.
Navigate to All > Agile Development > Dashboards and select Agile 2.0 Team Dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1994


<!-- page 1995 -->
Work item progress tab

Sprint Performance tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1995


<!-- page 1996 -->
Team Members tab

Cycle Time tab

End user and roles
End user goal with required role and benefits
End user and goal

Required role

Team member: Needs visibility scrum_user
into team's predictability and
progress in completing stories

Benefits

• View progress of the team
by work items
• Analyze the time taken for
stories to move from one
state to another
• Analyze sprint performance
of the team
• Analyze trends in sprint
variance of the team
comparing completed work
to expected capacity and
committed work

Indicators
Scrum: Scrum: Average Story State Duration
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1996


<!-- page 1997 -->
Generates data that is displayed in the Average Cycle Time per State report.
Scrum: Story State Duration
Generates data that is displayed in the Time in State report.
Scrum: Total stories in a sprint
Generated data that is displayed in the Active Stories by State report.

Breakdowns
• Scrum: Group
• Scrum: State

Data visualizations
The Team Dashboard reports are segregated into the following three tabs:
• Work item progress: Reports of Active Stories by State, Time in State, and Average Cycle Time
per State
• Sprint Performance: Reports of Velocity History and Sprint Variance
• Team Members: List of all the members of the team

Note: For existing customers who upgrade to the latest version, the list of the team
members appears in both the Work item progress and Team Members tabs but only one
of these locations would display the accurate information. You can remove this widget
from the Work item progress tab to avoid this issue. For more information on how to
remove a widget, see Edit a responsive dashboard .
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Agile 2.0, then install this dashboard from Solution Library to upgrade its layout and access the
following visualizations:
• Velocity History
• Velocity by Type
• Sprint Variance
• Story Cycle Time
For more information, see Upgrading the layout of Agile 2.0 dashboards.
Work item progress
Title

Active Stories by
State

Time in State

Type

Bar chart

Stacked bar
chart

Description

View the total number of stories in each state of a story,
for example, testing, work in progress, and testing.

View the time in hours that the team spends in each
state of a story.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1997


<!-- page 1998 -->
Work item progress (continued)
Title

Average Cycle
Time per State

Type

Description

Line chart

View how the work in progress is trending over time and
what are the most significant cycle times.

Sprint Performance
Title

Type

Description

Bar chart

Gain an insight on the overall
velocity of the team for the
past 10 sprints. Understand if
the team is achieving a stable,
predictable velocity, and is
meeting the commitments.

Velocity History

The Team Velocity History
report comprises the following
series per sprint that can be
hidden or displayed based on
your preference:
• Team Capacity: Indicates
the team capacity (in story
points) for the sprint.
• Committed Story Points:
Indicates the number of
story points committed by
the team for the sprint.
• Completed Story Points:
Indicates the number of
story points completed by
the team for the sprint.
• Average Completed Points:
Indicates the average
number of story points
completed by the team for
the sprint.
• Linear (Actual): Indicates
if the amount of completed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1998


<!-- page 1999 -->
Sprint Performance (continued)
Title

Type

Description

work is trending up, trending
down, or relatively stable
over sprints.
Velocity by Type

Stacked bar chart

Analyze the way your team's
velocity changes over time
and compare the team's
strategic workload with
operational or other types of
workload.
The bar charts have two
stacks that show the sum
of the story points of the
following types of completed
stories:
• Regular stories
• Stories added to the unified
backlog from the items in
the triage board
Clicking any bar would take
you to its corresponding sprint
details.
Data displayed in this report is
of the past 10 sprints with the
earliest sprint on the left.

Note: This report is not
available by default. You
can add it from Scrum
custom charts to your
dashboard. For more
information, see Edit a
responsive dashboard .
Sprint Variance

Bar chart

Analyze the percentage
variance of the team
compared to the capacity and
committed points, for the past
10 sprints.
The Team Sprint Variance
report comprises the following
series per sprint that can be
hidden or displayed based on
your preference:
• Completed to Capacity:
Indicates the percentage of
completed work compared

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1999


<!-- page 2000 -->
Sprint Performance (continued)
Title

Type

Description

to the expected capacity for
the sprint.
• Completed to Committed:
Indicates the percentage of
completed work compared
to the committed work of the
team for the sprint.
Team Members
Title

Type

Team Members

List

Description

View the details of all team
members.

Cycle Time
Title

Type

Description

Story Cycle Time

Bubble chart

Identify the time taken for
each story, which the team
has worked on, to move
from an in-progress state to
completion.
Each bubble on the graph
represents a story. The height
of the bubble from the xaxis shows how long that
story took to move from an inprogress state to completion.
The size of the story bubbles
are relative to each other
based on their story points.
You can compare the cycle
times of stories with different
story points and analyze
the trend in the time taken
by the team to complete
them. Identify the stories that
took longer to complete and
analyze the reasons so that
you can chart an action plan
to reduce the team's cycle
time in the future.
Hovering your mouse cursor
over a bubble displays the
following details about that
story:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2000


<!-- page 2001 -->
Cycle Time (continued)
Title

Type

Description

• Story points
• Date the story is moved to
completion
• Total cycle time (in days) of
the story
• Number of days that the
story was in the Work in
progress state
• Number of days that the
story was in the Ready for
testing state
• Number of days that the
story was in the Testing
state
From the Story State section
towards the right of the report,
you can filter the report to view
the cycle time of the stories for
the selected states. The chart
displays the cycle time for
each story as the cumulative
sum of all duration of the
selected states.
If there are too many stories
at any area of the chart and
the bubbles appear crowded
on the report, you can zoom
in that particular area of the
report for a clearer view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2001


<!-- page 2002 -->
Cycle Time (continued)
Title

Type

Description

Note: The stories
shown in this chart are
the ones that the team
has completed in the
past 30 days.

Customizing Agile 2.0 dashboard reports
Customize the Burnup, Burndown, and Cumulative Flow Diagram reports of your Agile 2.0
dashboards according to the custom states of your scrum stories.
• Configure indicators to reflect your customizations.
For example, if there are any new states introduced to the scrum story table, then the
corresponding indicators and indicator sources for the story table that rely on the State field
must be updated as well.
For more information, see Customize indicators of your Agile 2.0 dashboard reports.
• Update or clone UI scripts for modifications to use your own indicators.
Add customizations by overriding methods in empty implementation (Impl) classes of UI
scripts such as ScrumAreaChartImpl and ScrumVelHistoryImpl.
For more information, see Update UI scripts to use customized indicators for Agile 2.0
dashboards.
Customize indicators of your Agile 2.0 dashboard reports
Configure indicators to reflect your customizations on the Agile 2.0 dashboards.

Before you begin

Role required: admin or pa_admin

Procedure
1. Navigate to All > Performance Analytics > Indicators > Automated Indicators.
2. Search for and open the required indicator.
For example, if you want to customize the Sprint Burnup report, open Scrum: Sum of story
points of completed stories in current sprint from the list of indicators.
3. In the Additional conditions section, modify the conditions according to your preferences.
4. Click Update.
Update UI scripts to use customized indicators for Agile 2.0 dashboards
Customize UI scripts by overriding methods in empty implementation (Impl) classes.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2002


<!-- page 2003 -->
Procedure
1. Navigate to All > System UI > UI Scripts.
2. Search for and open the required UI script.
For example, if you want to customize the Sprint Cumulative Flow Diagram report, open
ScrumAreaChartImpl from the list of UI scripts.
3. Overwrite the base implementation according to your preferences.
4. Click Update.
Customize story states of your Agile Development 2.0 dashboard reports
Configure story states to reflect your customizations on the Agile Development 2.0 dashboards.

Before you begin

Role required: admin or pa_admin

Procedure
1. Navigate to All > Agile Development > Stories.
2. Open a story to which you would like to add the custom states.
3. Right-click State and select Configure Choices from the drop-down menu.
4. In the New item text field, enter the new custom state name.
5. In the Numeric value field, enter any corresponding number.
6. Click Add.
The new state appears in the Selected list.
7. Click Save.

Integrating Agile Development 2.0 with third-party applications
Integrate third-party applications such as Microsoft Azure DevOps or Atlassian Jira with
Agile Development 2.0, so that the planned and executed work can be synchronized in both
applications.
After the integration is set up, plan the work, such as epics and stories, in Agile Development
2.0 and enable your teams to deliver using the execution application of their choice, such as
Microsoft Azure DevOps or Atlassian Jira.
All the existing work items are synced between the two applications. New items that are created
in either application are easily exported and imported between each other. Changes made to
these items would automatically synchronize between the two applications.
To get started with configuring these integrations, see:
• Microsoft Azure DevOps Integration for Agile Development
• Atlassian Jira Integration for Agile Development

Atlassian Jira Integration for Agile Development
®

Enable bidirectional synchronization of records between Atlassian Jira and ServiceNow Agile
Development by integrating the two applications.
If the source of your work is in the ServiceNow platform while the progress of the work is tracked
in Jira, you can perform integrated tracking of your product development efforts by integrating
Agile Development 2.0 with Jira.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2003


<!-- page 2004 -->
For example, if you update a record in Jira, you can find that update in Agile Development 2.0.
Similarly, if you update a record in Agile Development 2.0, you can find the same update in Jira.
When you synchronize Jira with Agile Development 2.0, you can:
• View available Jira projects and boards in Agile Development 2.0.
• Perform a bulk import of records from Jira to Agile Development 2.0.
• Perform single record updates between Jira and Agile Development 2.0.
• Avoid duplicating record update entries in Jira and Agile Development 2.0.
• Plan, track, and update your tasks from a single application.
Starting with version 1.1.1, Atlassian Jira Integration for Agile Development 2.0 supports map
configuration at the project level and not at the instance level. Also, the application supports the
following project types associated with Jira Cloud and Jira Server:
• Classic
◦ Scrum
◦ Kanban
◦ Bug tracking
• Next-gen
◦ Scrum
◦ Kanban

Note: Integration with Jira Data Center, Jira Align and other Atlassian products is not
available.

Importing issues from Kanban projects in Jira
Before importing Jira projects that are of the Kanban type, consider the following notes:
• Issues such as epics and stories are imported to Agile Development 2.0
• If your Kanban project has one or more Jira Boards, not all those Boards would be mapped to
distinct Agile groups. The Jira project is mapped to a single group in Agile Development 2.0
and all issues of this project, regardless of their association to boards, would be assigned to
one Agile group.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Install Atlassian Jira Integration for Agile Development
Install the Atlassian Jira Integration for Agile Development (sn_agile_jira_int) application v2.0.1
from ServiceNow Store.

Before you begin

Ensure that the application and all of its associated store applications have valid ServiceNow
entitlements. For more information, see Get entitlement for a ServiceNow product or
application .
Complete the following setup tasks for a smooth installation and configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2004


<!-- page 2005 -->
1. Navigate to Subscription Management > Subscriptions in your instance. The list displays the
subscriptions that your organization has purchased.
2. Verify that Agile Development 2.0 (com.snc.sdlc.agile.2.0) is activated.
3. Verify that ServiceNow Integration Hub Starter Pack Installer (com.glide.hub.integrations) is
activated.
4. Verify that Jira Spoke 2.6.8 (sn_jira_spoke) is activated.
5. Verify that Integrations - External Authentication Framework (com.glide.external.app) is
activated.
Role required: admin

Note: Activation of the Agile Development 2.0, ServiceNow Integration Hub Starter
Pack Installer, Jira Spoke, and Integrations - External Authentication Framework plugins
on production instances may require separate licenses. Contact ServiceNow Customer
Support for details.

Procedure
1. Navigate to the ServiceNow Store

.

2. In the ServiceNow Store, search for Atlassian Jira Integration for Agile Development.
3. Click the application tile.
You can view detailed information about the application. Consider reading the Other
Requirements and Dependencies sections, as applicable.
4. Click Get and enter your Now Support login credentials.
5. Click Request Install.
6. In the Instance Name field, enter your details and click Validate Instance.
7. In the Reason for the Instance field, enter your details and click Request.
You receive an email with detailed installation instructions.
8. Log in to the instance on which you want to install the Atlassian Jira Integration for Agile
Development application.
9. Select System Applications > All Available Applications > All.
10. Locate the application using the filter criteria and search bar, select it, and click Install.

Result

The following components are installed with installation of the application:
• Roles
• Scheduled Jobs
• Tables
For more information, see Components installed with Atlassian Jira integration for Agile
Development.
Components installed with Atlassian Jira integration for Agile Development
Several types of components are installed with activation of the Atlassian Jira integration for
Agile Development application, including tables, user roles, and scheduled jobs.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2005


<!-- page 2006 -->
Roles installed
Role title [name]

Description

Contains roles

Jira integration
admin

Has complete access to the application

• sn_jira_int.user

[sn_jira_int.admin]
Jira integration
user
[sn_jira_int.user]

• sn_int_common.admin

• Sets up integration between Jira and Agile
Development
• Can create new or update the existing
map configurations between Jira and Agile
Development

• connection_admin
• sn_int_common.user
• credential_admin

Scheduled jobs installed
Scheduled job Description

Import Jira
Issue

Imports issues and sprints from Jira automatically at a scheduled time.
This job is inactive by default.
For more information, see Schedule a job to auto-import issues from Jira to Agile
Development 2.0.

Tables installed
Table

Description

Attachment Map

Stores the mapping of attachments to issues
between Jira and Agile Development.

[sn_int_common_attachment_map]
Choice Map
[sn_int_common_choice_map]
Event Type
[sn_int_common_input_event_type]
External Identifiers
[sn_int_common_external_identifiers]
External Project
[sn_int_common_project]
External system
[sn_int_common_external_system]

Stores the list of workflow state mapping for
Jira projects.
Stores information of the type of webhook
events such as create, update, or delete of a
work item.
Stores the list of all Jira reference identifiers
such as External ID, External Key, External
Project, External URL, and so on.
Stores information of the Jira project such as
project ID, the Jira instance of this project,
project name, and so on.
Stores information of Jira application used for
the integration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2006


<!-- page 2007 -->
Table

Description

External System Version

Stores version information of Jira application
used for the integration.

[sn_int_common_external_system_version]
Field Map
[sn_int_common_field_map]
Jira Board

Stores the list of field mapping of different
issue types for Jira projects.
Stores the list of imported boards from Jira.

[sn_jira_int_board]
Jira Import Request
[sn_jira_int_import_request]

Stores the list of all import requests created
to import projects, boards, and project style
mappings from Jira.

Jira Instance

Stores the list of all Jira instances.

[sn_jira_int_instance]
Jira Project

Stores the list of all imported projects from Jira.

[sn_jira_int_project]
Project Integration Settings
[sn_agile_jira_int_import_settings]
Project Style Mapping
[sn_jira_int_prj_style_mapping]
Table Map

Stores the list of one-to-one relation between
a Jira project, board, and an Agile assignment
group.
Store the list of map configuration templates
per Jira project style.
Stores the list of table maps for Jira projects.

[sn_int_common_table_map]
Webhook Registry
[sn_int_common_webhook_registry]

Stores details of the registry callback path for
webhooks registered in Jira to receive event
updates.

Setting up the integration between Jira and Agile Development 2.0
Understand the setup process of Atlassian Jira Integration for Agile Development 2.0.
After you have the application installed in your ServiceNow instance, you can proceed to set up
the integration, using the sn_jira_int.user role.
The setup process for the integration includes the following tasks:
1. Connect Agile Development 2.0 with Jira.
2. Discover and import available projects and boards from Jira.
3. Enable import and export of issues and import issues in bulk from Jira projects to Agile
Development 2.0.
4. Associate Jira projects with assignment groups in Agile Development 2.0.
5. Import sprints from Jira to Agile Development 2.0.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2007


<!-- page 2008 -->
6. Enable a scheduled job to periodically import projects and issues from Jira.
7. Create custom map configurations for tables, fields, and workflow states between Jira and
Agile Development 2.0.

Using guided setup to implement integration between Jira and Agile
Development 2.0
Guided setup provides a sequence of tasks that help you configure Agile Development 2.0
Jira integration on your ServiceNow instance. To open guided setup for SPW Jira Integrations,
navigate to All > Strategic Planning > Jira integration > Guided Setup.
Connecting Agile Development 2.0 to Jira
Establish a connection between Agile Development 2.0 and Jira using a Jira connection alias
and a Jira instance.
When you connect Agile Development 2.0 to Jira, a webhook is registered in Jira which receives
the following event updates between Jira and Agile Development 2.0.
• Creating or updating projects.
• Creating, updating, or deleting information of epic, story, sprint, and any custom table maps
and their fields.
Create a Jira connection alias for integration with Agile Development 2.0
Create a Basic Auth credential and an HTTP(s) connection with a Jira connection alias to
establish a connection with Jira.

Before you begin
Roles required:

• admin to create a connection and credential alias
• sn_jira_int.admin or sn_jira_int.user to create basic authorization credentials and HTTP(s)
connection

Procedure
1. Create a Connection & Credential alias
◦ You can use the connection alias (sn_jira_int.Jira) that is available by default.
◦ You must create a connection alias for every Jira instance that you use.
◦ For Jira server (on-prem) users, ensure that the server_type and server_version connection
attributes are present.
2. Create Basic authorization credentials .
Ensure that the user for whom the basic authorization credentials are created has access to all
Jira projects.
3. Create an HTTP(s) connection

.

Create a Jira Instance for integration with Agile Development 2.0
Create a Jira instance record using the connection alias that you created to enable the setup of
Jira integration with Agile Development 2.0.

Before you begin

Role required: sn_jira_int.admin or sn_jira_int.user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2008


<!-- page 2009 -->
Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Click New.
3. On the form, fill in the fields.
Jira Instance form
Field

Description

Name

Name of the Jira instance. Enter a name of
your choice.

Connection Alias

Jira connection alias that you already
created. Use the lookup (
your connection alias.

Version

) option to select

Jira version. Use the lookup (
select your Jira API version.

) option to

4. Click Submit.
Connect Agile Development 2.0 to Jira
Connect Jira to Agile Development 2.0 to enable the integration.

Before you begin

Role required: sn_jira_int.user

Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. Click Connect.

Result
• If the connection is successful, the State field on the Jira Instance record shows Connected. A
webhook is now registered in Jira to receive update events.
• If the connection could not be established, the State field on the Jira Instance record shows
Connection Failed. You can view the reason for the failure in the error message.

What to do next

Discover and import Jira projects and boards
.
Discover and import Jira projects and boards
Discover and import all available Jira projects and boards into Agile Development 2.0 to start
using the integration between the two applications.

Before you begin
• Connecting Agile Development 2.0 to Jira.
• Role required: sn_jira_int.user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2009


<!-- page 2010 -->
About this task
Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. Click Discover Projects.
This action creates requests to import Jira projects, map configuration for all these projects,
and Jira Boards. You can view all the import requests in the Jira Import Requests related list
and the initial state of all the requests would be Requested.

Result

Once the status of each import request changes to Complete, you can see that the related lists
of this Jira instance are populated as follows:
• Jira Projects: All available projects from Jira
• Jira Boards: All available boards from Jira
• Project Style Mappings: Map configuration for all the imported Jira projects according to the
type of your Jira instance as follows:
◦ The classic_on_prem project template contains the map configurations related to the Jira
Server projects.
◦ The classic project template contains the map configurations related to Jira Cloud Classic
projects.
◦ The next-gen project template contains the map configurations related to Jira Cloud Nextgen projects.
Once the status of the Create Mappings request changes to Completed, you can see the map
configuration for each of the imported Jira project under the Mapping Config column of the Jira
Projects related list. For more information on the default map configuration of work items, see
Default mapping configuration between Agile Development 2.0 and Jira.

What to do next

Import your issues from Jira to Agile Development 2.0. For more information, see Importing
issues and sprints from Jira to Agile Development 2.0.
Default mapping configuration between Agile Development 2.0 and Jira
Understand the default field mapping configuration for work items of a project between Jira and
Agile Development 2.0.
Mapping configuration is used to map records in Jira to Agile Development 2.0 for a project. If the
table map does not exist for an issue type in your Jira project, the issue cannot be imported and
exported between Jira and Agile Development 2.0.
By looking at the default mapping configuration, you can understand how issue types in Jira
are mapped to task types in Agile Development 2.0. You can also see how fields are mapped
between the two applications. When you import the available issues and sprints of a Jira project,
this data is stored in tables as defined in the project's map configuration.
From version 1.1.1 onwards, mapping configuration is generated per project and not at the
instance level. You must update any custom maps that you previously configured to ensure that
the import and export of work items is not impacted.
Here's how you can view the default map configuration tables of your Jira project.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2010


<!-- page 2011 -->
1. Navigate to Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. From the Jira Projects related list, open a Jira project.
4. From the Table Maps related list, open the record for Story or Epic.
The following table lists the default field map configuration for a Story and Epic.
Map configuration for Epic
Field in Jira

Field in Agile Development

Epic Name

Short Description

Priority

Priority

Summary

Description

Status

State

Map configuration for Story
Field in Jira

Field in Agile Development 2.0

Status

State

Sprint

Sprint

Description

Description

Priority

Priority

Epic Link

Epic

Summary

Short Description

Assignee

Assigned to

You can add or update the configuration for field, table, and choice maps of your projects
between Jira and Agile Development 2.0 according to your organizational preferences. For
details, see Customizing map configuration for your Jira projects.
Importing issues and sprints from Jira to Agile Development 2.0
Understand the process of importing existing issues and sprints from Jira to Agile Development
2.0.
You can import existing issues from Jira projects as stories and epics, and existing sprint data
from Jira boards as sprints to Agile Development 2.0. After importing the available data, any
updates that you make to the epic, story, or sprint records will be synchronized automatically in
both Jira and Agile Development 2.0.

Importing issues
From version 2.0.1, you can proceed to import issues from a Jira project directly after discovering
projects from Jira. You do not have to create team integration settings. However, the imported
issues are not associated to any assignment group in Agile Development 2.0. You can manually
assign these issues to an assignment group later.
If you want your imported issues to be assigned to an assignment group automatically, you can
create team integration settings for your Jira project by associating it to an Agile 2.0 assignment
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2011


<!-- page 2012 -->
group and then proceed to import the issues. This setting ensures that any imported issues that
belong to a Jira project are assigned to its associated assignment group.

Importing sprints
Importing sprint data from Jira boards require that the board has team integration settings
that associate it to an Agile 2.0 assignment group. Sprint data of a Jira board is imported to its
assignment group, only if these sprints have already started in Jira. Also, only the completed and
current sprints of Jira are imported.

Team integration settings
From version 2.0.1, the Project Integration Settings module is available as Team Integration
Settings. Team integration settings help you associate Jira projects and boards with Agile 2.0
assignment groups to facilitate the bidirectional synchronization of record updates.
Associating a Jira project to an assignment group allows the following:
• Enable import and export of all available stories and epics between this project and its
associated group.
• View any new stories and epics or updates made to the existing stories and epics in both Agile
Development 2.0 and Jira.
Associating a Jira board to an assignment group allows the following:
• Import all completed and current sprints from this board into the associated group.
• View any completed and current sprints or updates made to them in both Agile Development
2.0 and Jira.
To understand the workflow of the import and export of issues between Agile Development 2.0
and Jira, see Importing and exporting issues between Agile Development 2.0 and Jira.
Associate a Jira project and board with an assignment group in Agile Development 2.0
Associate your Jira projects and boards with assignment groups in Agile Development 2.0 to
enable import and export of all available issues between the associated project and assignment
group.

Before you begin
• Discover and import Jira projects and boards.
• Create assignment groups in Agile Development 2.0. See Create an assignment group in Agile
Development 2.0.
• Ensure that your Jira project has a defined mapping configuration.
• Role required: sn_jira_int.user

About this task

Create team integration settings to associate a Jira project and Jira board with an Agile 2.0
assignment group.

Important: You can associate an assignment group with only one project and board from
Jira.

Procedure
1. Navigate to All > Agile Jira Integration > Team Integration Settings.
2. Click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2012


<!-- page 2013 -->
3. On the Team Integration Settings form, select the following:
◦ A Jira project
◦ A Jira board
◦ An assignment group in Agile Development 2.0 to which you want to associate the selected
Jira project and board
Selecting a Jira board in the form is optional. If you do not want to synchronize the sprint data
of the board between Agile Development 2.0 and Jira, you can skip selecting a Jira board.

Note: If your Jira project is of Kanban type, you can leave the Jira board field empty. All
issues of your Kanban project will be mapped to a single Agile 2.0 group.
4. Click Submit.

What to do next

You can import or issues from this Jira project or sprints from this Jira board to the associated
assignment group.
Related topics
Import issues from a Jira project to Agile Development 2.0
Import sprints from Jira to Agile Development 2.0
Import issues from a Jira project to Agile Development 2.0
Import available issues from a Jira project, with or without the team integration settings for this
project, so that you can update existing records of Jira from Agile Development 2.0.

Before you begin
• Discover and import Jira projects and boards
• Role required: sn_jira_int.user

About this task

If your Jira project has team integration settings, then the imported issues are assigned to an
assignment group according to the team integration settings. If your Jira project does not have
team integration settings, then the imported issues are not associated to any assignment group.

Note: This task does not explain importing sprints. For information on how to import
sprints from Jira, see Import sprints from Jira to Agile Development 2.0.

Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. From the Jira Projects related list, open the project from which you want to import the issues.
4. Enable the import and export of issues by selecting the Enable Import and Enable Export
options as applicable.
Synchronisation of multi-select fields between Agile and Jira is now supported.
5. Click Import Issues.
6. Select a date range from which you want to import the issues from Jira.
7. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2013


<!-- page 2014 -->
An import request of type Import Issues is created in the Jira Import Requests related list.
Once the state of this request changes to Completed, you can view all the imported records in
the Epics and Stories modules in Agile Development 2.0. The relationship between the stories
and epics is retained as it is in Jira.

Note: Existing comments and attachments of issues are not imported from Jira during a
bulk import.
Import sprints from Jira to Agile Development 2.0
Import sprints from a Jira board so that you can track progress of these sprints directly in Agile
Development 2.0.

Before you begin
• Ensure that the Jira board from which you want to import the sprints has team integration
settings. For more information, see Associate a Jira project and board with an assignment
group in Agile Development 2.0.
• Role required: sn_jira_int.user

About this task

Import completed and current sprints of Jira board into Agile Development 2.0.

Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. From the Jira Projects related list, open the project that is associated to a Jira board from which
you want to import the sprints.
4. Enable the import and export of sprints by selecting the Enable Import and Enable Export
options as applicable.
5. Click Import Issues.
6. Select a date range from which you want to import the sprints from Jira.
7. Click Submit.
An import request of type Import Sprints is created in the Jira Import Requests related list.
Once the state of this request changes to Completed, you can view all the imported sprint data
in the Sprints related list of the associated assignment group in Agile Development.
Schedule a job to auto-import issues from Jira to Agile Development 2.0
Schedule a job to auto-import issues and sprints periodically from Jira into Agile Development
2.0.

Before you begin

Role required: sn_jira_int.user

About this task

After you've configured the scheduled job, it imports issues from all the projects for which you've
selected the Enable import option.
If you do not configure the scheduled job, you must manually import issues for the discovered
projects.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2014


<!-- page 2015 -->
Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Open the Import Jira Issue job.
The job is inactive by default.
3. Execute the job manually by clicking Execute Now.
4. Set the job to run at a scheduled time by selecting the Active check box.
You can edit the details of the Run and Time fields according to your preference.
5. Click Update.
Customizing map configuration for your Jira projects
Customize the field, table, or workflow state map configuration for your Jira projects. You can
customize map configuration of a single project or multiple projects of the same project style.

Note: Only fields of type number, select, text, and date are supported for custom map
configuration.
Customize your table map configuration
Map a Agile Development 2.0 table of your preference for a Jira project.

Before you begin
• Discover and import Jira projects and boards.
• Role required: sn_jira_int.user

About this task

Create a custom table map of your preference for your Jira project and configure its fields.
If you have a custom table that is applicable to all Jira projects of a specific project type, see
Apply custom map configuration to multiple Jira projects.

Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. From the Jira Projects related list, open a Jira project for which you want to customize the map
configuration.
4. From the Table maps related list of the Jira project, click New.
5. On the form, fill in the fields.
Table Map form
Field

Description

Internal Table

Table name in Agile Development 2.0.

Map configuration

Map configuration for this project.
This field is auto-populated based on the
project.

External Table

Table ID in Jira.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2015


<!-- page 2016 -->
Field

Description

External Table Name

Display name of the table in Jira.

6. Save the table configuration.
7. From the Field Maps related list of your table map record, create new field maps for the
following fields:

Field in Jira

Field in Agile Development 2.0

Summary of the issue

Short description

Description of the issue

Description

For information on how to configure field mapping for a table, see Customize your field map
configuration. You can also create other field maps for your new table configuration.

What to do next
1. Validate your new table map configuration by clicking Validate and fix mapping from your
project form.
2. In the Table maps related list of your project, if the Valid column of your configuration shows:
◦ true, validation of your map configuration is successful.
◦ false, validation of your map configuration failed. Ensure that you enter correct values for all
the fields and validate again.
3. Create a business rule to support export of this new table map configuration to Jira. See Create
a business rule to apply a custom Agile Development 2.0 table map configuration.
4. If you want to support import and export of attachments for this new table map, see Allow
import and export of attachments on a custom Agile Development 2.0 table.
5. If you want to enable display of fields that reference Jira identifiers in your custom table map,
see Populate Jira project identifier reference fields for Agile Development 2.0 custom table.
Customize your field map configuration
Map a field of your preference for a Jira project.

Before you begin
• Discover and import Jira projects and boards.
• Role required: sn_jira_int.user

About this task

If you have a custom field for a Jira project that you want to map with a field in Agile Development
2.0, you can create custom field map configuration that would apply only to this Jira project.
If you have a custom field that is applicable to all Jira projects of a specific project type, see
Apply custom map configuration to multiple Jira projects.The following field types are supported
for custom field map configuration:
• Number
• Select
• Text
• Date
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2016


<!-- page 2017 -->
• Identity
• Date time
• Reference
• List

Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. From the Jira Projects related list, open a Jira project for which you want to customize the map
configuration.
4. From the Table Maps related list, open the Sprint, Epic, or Story record to add a new field map
configuration for that record.
5. From the Field Maps related list, click New.
6. On the form, fill in the fields.
Field Map form
Field

Description

Internal Field

Field name in Agile Development 2.0.

Table Map

Table map in Agile Development 2.0, in which
this field is created.
This field is auto-populated based on the
table map record you select.

Internal Table

Table in Agile Development 2.0.
This field is auto-populated based on the
table map record you select.

External Field

Field ID in Jira.

External Field Name

Display name of the field in Jira.
Ensure that this field is added to the Jira
project screen.

7. Click Update.

What to do next
1. Validate your field map configuration by clicking Validate and fix mapping from your project
form.
2. From the Table maps related list of your project, navigate to your new field map configuration. If
the Valid column of your configuration shows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2017


<!-- page 2018 -->
◦ true, validation of your map configuration is successful.
◦ false, validation of your map configuration failed. Ensure that you enter the correct values for
all fields and validate again.

Important: If your custom map configuration is invalid or if the custom field
configured is not added to the default screen scheme of the issue, the export action
does not work.
Configuring a reference field in Jira
Understand how to configure a reference field while creating a new field map configuration.
When you select a reference field for the Internal Field field, you must select a value for the
Lookup Column Name field. The value from the Lookup Column Name field is used during the
import and export of work items between Jira DevOps and Agile Development 2.0.
During import, the integration application searches for the record in the reference table using the
Lookup Column Name field. If the record is not found, the value in the work item will be empty in
Agile Development 2.0.

Customize your workflow state configuration
Create a custom workflow state map of your preference for a Jira project.

Before you begin
• Discover and import Jira projects and boards.
• Role required: sn_jira_int.user

About this task

Map a custom workflow state from Jira to Agile Development 2.0.
You can map a workflow state in Jira to multiple workflow states in Agile Development 2.0. In such
cases, the state in Agile Development 2.0 for an issue type depends on the choice order value
that you provide for this state configuration.
For example, the In Progress state in Jira is mapped to multiple states such as Work in progress,
Ready for testing, and Testing in Agile Development 2.0 using a choice order of 10, 20, and 30.
So, when an In Progress issue from Jira is imported, the State field in Agile Development 2.0 is
set to Work in progress as it has the lowest choice order value.
You can also map multiple workflow states in Jira to a single workflow state in Agile Development
2.0.

Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. From the Jira Projects related list, open a Jira project for which you want to customize the
choice map configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2018


<!-- page 2019 -->
4. Open the workflow state map for this project.
a. From the Table Maps related list, click Story.
b. From the Field Maps related list, click Status.
5. From the Choice Maps related list, click New.
6. On the form, fill in the fields.
Choice Map form
Field

Description

Internal Choice

Value of the workflow state in Agile
Development 2.0. This value is an integer.

External Choice

ID of the workflow transition in Jira.

Note: In case there is no transition,
insert the ID of the workflow state.
External Choice Name

Display name of the workflow transition in
Jira.

Note: In case there is no transition,
insert the display name of the workflow
state.

7. Click Update.

What to do next
1. Validate your choice map configuration by clicking Validate and fix mapping from your project
form.
2. From the Table maps related list of your project, navigate to your new choice map
configuration. If the Valid column for your configuration shows:
◦ true, validation of your map configuration is successful.
◦ false, validation of your map configuration failed. Ensure that you enter correct values for all
fields and validate again.
Apply custom map configuration to multiple Jira projects
Add a custom table or field, which is applicable to all your Jira projects of a specific type, to the
map configuration template in Agile Development 2.0.

Before you begin
• Discover and import Jira projects and boards.
• Role required: sn_jira_int.user

Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2019


<!-- page 2020 -->
3. From the Project Style Mappings related list, select the project template to which you want to
add the custom field.
For example, if the field that you want to add is applicable to all Jira projects of the type
Classic, then select classic.
4. Add the custom table or field from Agile Development 2.0 to the existing map configuration in
the Default Mapping field.
You can copy the contents of the Default Mapping field into a JSON viewer to view the
contents in a format of your preference. For example, as shown in the following figures, you
can add a new table for Defect [rm_defect] to map the Bug table from Jira or a new field in the
existing Story [rm_story] table to map story points.
Custom table map for Defects

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2020


<!-- page 2021 -->
Custom field map for Story Points

Custom field map for Multi-select fields

If you're adding a new field, ensure that the custom field configured is added to the default
screen scheme of the issue.
5. Click Update.

What to do next

Apply the custom project style map to all its related Jira projects.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2021


<!-- page 2022 -->
1. Delete the existing map configuration of all the imported Jira projects.
You can delete the map configuration of a project by making its Mapping Config field empty.

Tip: From the Jira Projects related list, make a multiple select on the Mapping Config
field of all the Jira project records and remove their value, making all these fields empty.
2. If you've created a new table map, create a business rule to apply this new table map
configuration. See Create a business rule to apply a custom Agile Development 2.0 table map
configuration.
3. Import these projects from Jira by clicking Discover Projects.
This would import all the Jira projects with their map configuration as per the customized
project style map.
Create a business rule to apply a custom Agile Development 2.0 table map configuration
Create a business rule to enable export from your new custom Agile Development 2.0 table map
configuration to your Jira projects.

Before you begin

Role required: admin or sn_jira_int.admin

About this task

After you create a custom table map for a single or multiple Jira projects, create a business rule
similar to Synch Story with Jira to support export of information from this new table map from
Agile Development 2.0 to Jira.

Procedure
1. Navigate to All > System Definition > Business Rules.
2. From the list of available business rules, locate and open the Synch Story with Jira rule.
3. From the context menu (
), perform an Insert and Stay operation on this business rule.
If you have not enabled the Insert and Stay action in your ServiceNow instance, see Allow
insert options on records .
4. On the business rule form, edit the following fields.
Business rule form
Field

Description

Name

Unique name for the business rule.
For example, if your new table map is to map
defects, name this rule as Sync Defect with
Jira.

Table

Select the Agile Development 2.0 table for
which you've created the custom map.
For example, Defect [rm_defect].

5. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2022


<!-- page 2023 -->
Allow import and export of attachments on a custom Agile Development 2.0 table
Enable import and export of attachments between Jira and Agile Development 2.0 for a custom
Agile 2.0 table that you added to the map configuration.

Before you begin

Role required: admin or sn_jira_int.admin

Procedure
1. Navigate to All > System Definitions > Business Rules.
2. From the list of business rules, locate and open the Sync Attachment to Jira rule.
3. In the When to run section of the form, include your custom table map by adding it to the filter
conditions.
For example, if the custom table that you added is Defect, do the following:
a. Click Add "OR" Clause.
b. Set the new clause to Table name is rm_defect.
4. Click Update.
Populate Jira project identifier reference fields for Agile Development 2.0 custom table
Enable Jira identifier reference fields for your Agile Development 2.0 custom table that you
added to the map configuration.

Before you begin

Role required: admin or sn_jira_int.admin

About this task

You can display references of ID, key, Jira project, and the project URL on your custom table form
by adding this table to the Populate External Identifier Reference business rule.

Procedure
1. Navigate to All > System Definitions > Business Rules.
2. From the list of business rules, locate and open the Populate External Identifier Reference rule.
3. In the When to run section of the form, include your custom table map by adding it to the filter
conditions.
For example, if the custom table that you added is Defect, do the following:
a. Click Add "OR" Clause.
b. Set the new clause to Reference table is rm_defect.
4. Click Update.

What to do next

Configure the form layout or personalize the list layout of your custom table to display any or all of
the following fields.
• External ID
• External Key
• External Project
• External URL

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2023


<!-- page 2024 -->
Related topics
Personalise a v2 list
Configuring the form layout
Reset mapping configuration of Jira projects
Reset the existing mapping configuration for multiple Jira projects to a default mapping
configuration.

Before you begin
• Discover and import Jira projects and boards
• Role required: sn_jira_int.user

About this task

Apply a default mapping configuration to all or a few Jira projects. Any existing custom mapping
configuration for these projects will be deleted after you reset the mappings.
If you've cleared the Mapping Config field or deleted the existing table maps for this project,
resetting the mappings for this project will restore the mapping configuration to the default
configuration.

Procedure
1. Navigate to All > Agile Jira Integration > Jira Instances.
2. Open your Jira instance record.
3. Reset the mappings of multiple Jira projects using one of the following ways.
Choice

Action

Reset mappings for a single project

a. From the Jira From the Jira Projects related
list, open the required project.
b. Click Reset Mappings.

a. From the Jira Projects related list, select the
required projects.
Reset mappings of multiple projects that be­
long to different project styles
b. Click the Actions on selected rows list.
c. Click Reset Mappings.
From the Project Style Mappings related list,
open a project template.
For example, if you want to reset the map­
pings of Jira Cloud Classic projects, select
Reset mappings of multiple projects that be­ classic.
long to the same project style
a. Verify the mapping configuration in the
Default Mapping field and update it if re­
quired.
b. Select the required projects from the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2024


<!-- page 2025 -->
Choice

Action

c. Click the Actions on selected rows list.
d. Click Reset Mappings.
Reset mappings of all projects that belong
to the same project style

From the Project Style Mappings form, click
Reset Mappings.

Result

The mapping configuration of the projects is updated to as per the Default Mapping field in the
Project Style Mappings form that the selected projects belong to.
Importing and exporting issues between Agile Development 2.0 and Jira
Understand the workflow for the import and export of issues between Agile Development 2.0 and
Jira.
To export and import issues between Agile Development 2.0 and Jira, you must complete the
team integration settings for your Jira projects.

Importing to Agile Development 2.0 from Jira
• When you create an issue of type epic in a Jira project, an epic is created for the assignment
group according to the team integration settings that you configured.
• When you create an issue of type story in a Jira project, a story is created for the assignment
group according to the team integration settings that you configured.
◦ The relationship between the story and its epic is retained as it is in Jira.
◦ The Assigned To field in the story displays the user from Jira, only if a user with the same
email address is found in Agile Development 2.0.
• Only the fields that are defined in the field map are retained in the story or epic. For details
of the default mapping configuration, see Default mapping configuration between Agile
Development 2.0 and Jira.
• When you add an attachment to an issue in Jira, the same attachment is added to the
corresponding story or epic in Agile Development 2.0.
• When you add comments for an issue in Jira, they are updated in the Work notes field of the
story or epic in Agile Development 2.0, based on the map configuration.

Note: The images added in the comments appear as attachments.
• When you delete an issue in Jira, the corresponding record is deleted in Agile Development
2.0.

Note: To delete records in Agile Development 2.0, set the Can Delete field to true in the
Application access of the respective tables. For details, see Table design and runtime
settings .
• When you start a sprint in Jira, a sprint is created for the assignment group in Agile
Development 2.0, if the Jira board is configured in the team integration settings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2025


<!-- page 2026 -->
Import workflow for issue
created in Jira

Import workflow for issue
updated in Jira

Exporting from Agile Development to Jira
• When you create an epic for an assignment group, it is exported to the project in Jira according
to the team integration settings that you configured.
• When you create a story for an assignment group, it is exported to the project in Jira according
to the team integration settings that you configured.
◦ The relationship between the story and its epic is retained in Jira.
◦ Updates to the Assigned To field in the ServiceNow platform is exported to Jira.
• When you add an attachment to a story or an epic, the same attachment is added to the
corresponding issue in Jira.
• When you add work notes to a story or an epic, they are updated in the corresponding issue in
Jira as comments.
• When you update the assignment group of an existing story in Agile Development 2.0, the
issue is recreated in the Jira project that is associated with the updated assignment group.
• When you create a sprint for an assignment group in Agile Development 2.0, it is exported to
Jira only if you configured the Jira board in the team integration settings.
Troubleshooting issues of Jira integration with Agile Development 2.0
Resolve common issues that you might face while working with the integration of Jira and Agile
Development 2.0.

Issue

The export action is not working.

Action

• Review your custom map configuration.
If your custom map configuration is invalid or
if the custom field configured is not added
to the default screen scheme of the issue,
export does not work.
• Ensure that the Enable Export check box is
selected in the project integration settings
for this Jira project or board.
• Check if your Jira password has expired.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2026


<!-- page 2027 -->
Issue

Action

The sprint is not associated to the imported
stories.

Verify if the sprint is started in Jira. If the sprint
that is associated with the stories is a future
sprint, then it is not associated to the stories in
Agile Development.
Sprint data from Jira is updated in Agile
Development only if the sprint is active in Jira.

The sprint is not imported into Agile
Development 2.0.

A value from a field in Jira is not populated in
Agile Development 2.0.

• Ensure that your sprint in Jira has dates.
• Ensure that the dates of a sprint in Jira does
not overlap with another sprint in the same
assignment group in Agile Development 2.0.

Verify if the custom field map is configured.

The value of Priority or State fields from Jira is Verify if the custom workflow state map is
not populated in Agile Development 2.0.
configured.
An update by a user in Jira is not updated in
Agile Development 2.0.

Ensure that the user credentials that are used
to set up the integration of Jira with Agile
Development are not used to perform record
updates.

The issue is deleted in Jira and not deleted in
Agile Development 2.0.

Ensure that the Can Delete field in the
Application access of the respective tables is
set to true.

For Jira cloud users, when you import, you see Verify the cyclic payload. Ensure that the
duplicate comments.
privacy settings should be enabled for the
connection user (used in http connection in
Agile Development 2.0) to make the Email
address visible in webhook events.
Deleting a project or board in Jira does not
result in any action in Agile Development 2.0.

Using rich text in Jira results in garbled text in
Agile Development 2.0.
For a Next-gen Jira project, when a story
is created for an epic in Jira, the relation
between story and epic is not imported to
Agile Development 2.0.

After deleting the project or board in Jira, the
Jira administrator must manually delete the
associated stories in the Agile Development
2.0.
The wiki text format that is used in Jira is not
supported.
In Jira, make a nominal update to the story
which would send the epic relation along with
this update to the Agile Development 2.0.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2027


<!-- page 2028 -->
Issue

Action

Sub tasks information is neither imported nor
To enable import of sub tasks from Jira to
exported between Jira and Agile Development Agile Development 2.0, you must manually
2.0.
configure custom mapping for this task type.
For more information, see Customize your
table map configuration.
For a Next-gen Jira project, scrum tasks are not The application supports only the import of
exported from Agile Development 2.0 to Jira.
sub tasks from Jira to the Agile Development
2.0 but not the export of these tasks to Jira.
After discovering and importing projects, map
configuration is not generated for a project.

Ensure that the user for whom the connection
alias is created has access to all Jira projects.

The UI actions for Connect, Disconnect, and
Validate and Fix result in an error when using
for the first time.

This is a known issue. Retry the UI action.

While fetching Jira project metadata, the
API call fails in the Flow designer, with a API
response size exceeded error.

Reduce the value of the batch size property by
setting it to any value between 1 and 50. For
more information, see Define batch size for
Jira project metadata.

Import Issues are staying in 'Processing' state
forever.

Import requests are stuck because Reset
mapping in't working as server type, as it was
incorrectly set as 'cloud' instead of 'server'.
Few customers will not setup connection
attributes, and therefore 'server type' and
'server verions' are defaulted to 'cloud' and
'8' respectively. Set guidelines for Jira onprem customers to use proper connection
attributes.

Bulk importing of work items data fails with a
API response size exceeded error.

Reduce the value of MAX_LIMIT in the
JiraConstants Script Include and then try to
bulk import the work items data again.

Enabling detailed project logs
To view all the details on project logging, enable the integration project logging property. For
more information, see Enable detailed project logging in Jira Integration with Agile Development.
Enable detailed project logging in Jira Integration with Agile Development
Understand how to enable integration project logging in Jira so that you can view details of the
project logs.

Before you begin

Role required: sn_jira_int.admin (with edit access) or sn_jira_int.user (with read access).

About this task

Enable the project logging property in the Agile Jira Integration application.

Procedure
1. Navigate to All > Agile Jira Integration > Properties.
2. Click the Enable Integration Project Logging check box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2028


<!-- page 2029 -->
Agile Jira Integration Properties

3. Click Save.
Define batch size for Jira project metadata
Define a batch size value that is used to fetch the metadata from the Jira projects.

Before you begin

Role required: sn_jira_int.admin (with edit access) or sn_jira_int.user (with read access).

About this task

Reduce the value of the batch size property to resolve the API response size exceeded error that
you might get while fetching Jira project metadata.

Procedure
1. Navigate to All > Agile Jira Integration > Properties.
2. Modify the Define the batch size for fetching Jira project metadata field value to a value less
than 50.
The suggested value range is 5–50.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2029


<!-- page 2030 -->
Define the batch size for fetching Jira project metadata

3. Click Save.

Microsoft Azure DevOps Integration for Agile Development
Enable bidirectional synchronization of work items between Microsoft Azure DevOps and
®
ServiceNow Agile Development 2.0 by integrating the two applications.
For example, if you update a record in Microsoft Azure DevOps, the update is reflected in Agile
Development 2.0. Similarly, if you update a record in Agile Development 2.0, the update is
reflected in Microsoft Azure DevOps.
The Integration of Microsoft Azure DevOps with Agile Development enables you to do the
following:
• View available Microsoft Azure DevOps projects in Agile Development.
• Perform a bulk import of records from Microsoft Azure DevOps to Agile Development 2.0.
• Perform single record updates between Microsoft Azure DevOps and Agile Development 2.0.
• Avoid duplicating record update entries in Microsoft Azure DevOps and Agile Development
2.0.
• Plan, track, and update your tasks from a single application.
Starting with version 1.3, Microsoft Azure DevOps Integration for Agile Development supports
process-level map configuration enabling you to configure multiple processes to be
synchronized with Agile Development 2.0.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Install Microsoft Azure DevOps Integration for Agile Development
Install the Microsoft Azure DevOps Integration for Agile Development (sn_agile_ado_int)
application version 1.3 from the ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2030


<!-- page 2031 -->
Before you begin

Complete the following setup checklist for a smooth installation and configuration.
1. Verify that the Agile Development 2.0 plugin (com.snc.sdlc.agile.2.0) is activated.
2. Verify that the ServiceNow IntegrationHub Standard Pack Installer plugin
(com.glide.hub.integrations.standard) is activated.
3. Verify that the Azure DevOps Boards Spoke 1.6.1 plugin (sn_azure_dev_spoke) is activated.

Tip: Navigate to Subscription Management > Subscriptions. The list displays the
subscriptions that your organization has purchased.
Role required: admin

Note: Activation of the Agile Development 2.0, ServiceNow IntegrationHub Standard Pack
Installer, and Azure DevOps Board Spoke plugins on production instances may require
separate licenses. Contact ServiceNow Customer Support for details.

Procedure
1. Navigate to ServiceNow Store

.

2. In the ServiceNow Store, search for Microsoft Azure DevOps Integration for Agile Development.
3. Click the application tile.
You can view detailed information about the application.

Note: Consider reading the Other Requirements and Dependencies sections, as
applicable.
4. Click Get and enter your Now Support login credentials.
5. Click Request Install.
6. In the Instance Name field, enter your details and click Validate Instance.
7. In the Reason for the Instance field, enter your details and click Request.
You receive an email with detailed installation instructions.
8. Log in to the instance on which you want to install the Microsoft Azure DevOps Integration for
Agile Development application.
9. Select System Applications > Applications.
10. Locate the application, select it, and click Install.

Result

The following components are installed with the installation of the application:
• Roles
• Scheduled Jobs
• Tables
For more information, see Components installed with Microsoft Azure DevOps integration for
Agile Development.
Components installed with Microsoft Azure DevOps integration for Agile Development
Several types of components are installed with activation of the Microsoft Azure DevOps
integration for Agile Development application, including user roles, scheduled jobs, and tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2031


<!-- page 2032 -->
Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed
Role title [name]

Description

Contains roles

Azure DevOps
integration admin

Has complete access to the application

• sn_ado_int.user

[sn_ado_int.admin]
Azure DevOps
integration user
[sn_ado_int.user]

• sn_int_common.admin

• Sets up integration between Azure DevOps
and Agile Development
• Can create new or update the existing map
configurations between Azure DevOps and
Agile Development

• connection_admin
• sn_int_common.user
• credential_admin

Scheduled jobs installed
Scheduled job

Description

Discover Azure Project Job

Discovers new Azure DevOps projects at a scheduled time
and imports them automatically.

Import Azure DevOps Teams
Areas and Iterations

Imports teams, areas, and iterations from Azure DevOps
automatically at a scheduled time.

Import Azure DevOps Work
Items

Imports work items from Azure DevOps automatically at a
scheduled time.

All the scheduled jobs are inactive by default. For more information, see Schedule jobs to import
projects, teams, areas, and work items from Azure DevOps.

Tables installed
Table

Description

Area Team M2M

Stores the relationship between teams and areas.

[sn_ado_int_m2m_area_team]
Attachment Map
[sn_int_common_attachment_map]
Azure DevOps Area
[sn_ado_int_area]
Azure DevOps Import Request

Stores the mapping of attachments to issues
between Azure DevOps and Agile Development.
Stores the list of imported areas from Azure
DevOps.
Stores the list of all import requests created to
import projects and process mappings from Azure
DevOps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2032


<!-- page 2033 -->
Table

Description

[sn_ado_int_import_request]
Azure DevOps Instance

Stores the list of all Azure DevOps instances.

[sn_ado_int_instance]
Azure DevOps Iteration
[sn_ado_int_iteration]
Azure DevOps project
[sn_ado_int_project]
Azure DevOps Subscriptions
[sn_ado_int_subscription]
Azure DevOps Team

Stores the list of imported iterations from Azure
DevOps.
Stores the list of imported projects from Azure
DevOps.
Stores the subscription IDs of the event type for
the webhooks registered in Azure.
Stores the list of imported Azure DevOps teams.

[sn_ado_int_team]
Choice Map
[sn_int_common_choice_map]
Event Type
[sn_int_common_input_event_type]
External Identifiers
[sn_int_common_external_identifiers]
External Project
[sn_int_common_project]
External System
[sn_int_common_external_system]
External System Version
[sn_int_common_external_system_version]
Field Map
[sn_int_common_field_map]
Process Mapping
[sn_ado_int_process_mapping]
Table Map
[sn_int_common_table_map]

Stores the list of workflow state mapping for Azure
DevOps projects.
Stores information of the type of webhook events
such as creating, updating, or deleting a work
item.
Stores the list of all Azure DevOps reference
identifiers such as External ID, External Key,
External Project, External URL, and so on.
Stores information of the Azure DevOps project
such as project ID, the Azure DevOps instance of
this project, project name, and so on.
Stores information of the Azure DevOps
application used for the integration.
Stores the API version information of the Azure
DevOps application used for the integration.
Stores the list of field mapping of different work
items for Azure DevOps projects.
Stores the list of map configuration templates per
Azure DevOps process.
Stores the list of table maps for Azure DevOps
projects.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2033


<!-- page 2034 -->
Table

Description

Team Integration Settings

Stores the list of one-to-one relation between
Azure DevOps project, team, and an Agile
assignment group.

[sn_agile_ado_int_import_settings]
Webhook Registry
[sn_int_common_webhook_registry]

Stores details of the registry callback path for
webhooks registered in Azure DevOps to receive
event updates.

Setting up the integration between Microsoft Azure DevOps and Agile Development 2.0
Understand the setup process of Microsoft Azure DevOps Integration for Agile Development 2.0.
After you have the application installed in your ServiceNow instance, you can proceed to set up
the integration, using the sn_ado_int.user role.
The setup process for the integration includes the following tasks:
1. Connect Agile Development 2.0 with Azure DevOps.
2. Discover and import available projects from Azure DevOps.
3. Import area, teams, and iterations into Agile Development 2.0 from Azure DevOps.
4. Set up the import and export between Agile Development 2.0 and Azure DevOps.
a. Register webhooks for an Azure DevOps project.
b. Associate Azure DevOps projects with assignment groups in Agile Development 2.0.
5. Bulk import work items and iterations into Agile Development 2.0. Enable a scheduled job to
auto-import issues from Azure DevOps.
6. Create custom map configurations for tables, fields, and workflow states between Azure
DevOps and Agile Development 2.0.
Connecting Agile Development 2.0 and Azure DevOps
Establish a connection between Agile Development 2.0 and Azure DevOps using a connection
alias and an Azure DevOps instance.
Create an Azure DevOps connection alias
Create a Basic Auth credential and an HTTP(s) connection which will together be used as a
connection alias to establish a connection with Azure DevOps.

Before you begin
Roles required:

• admin to create a connection and credential alias
• sn_ado_int.admin or sn_ado_int.user to create basic authorization credentials and HTTP(s)
connection

Procedure
1. Create a Connection & Credential alias
◦ A connection alias (sn_ado_int.Azure_DevOps) is available by default.
◦ You must create a connection alias for every Azure DevOps organization that you use.
2. Use OAuth 2.0 or Basic Auth to create credentials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2034


<!-- page 2035 -->
◦ OAuth 2.0: See Set up the Microsoft Azure DevOps Boards spoke using OAuth

.

Important: Make sure to specify a username in the OAuth 2.0 Credentials
[oauth_2_0_credentials] table for the Credential Alias record. This username must
correspond to the service account used to interact with Azure DevOps.
◦ Basic Authentication: See Basic authentication credentials

.

Note: When creating Basic Auth credentials, use the details of your personal access
token in Azure DevOps.
▪ Set the Password field of the basic authentication credential as the personal access
token in Azure DevOps.
▪ Set the User Name field of the basic authentication credential as the username used
to create the personal access token in Azure DevOps.
If your login is in the format of domainname\username, use only the username.
3. Create Create an HTTP(s) connection

.

What to do next

Create an Azure DevOps instance
.
Create an Azure DevOps instance
Create an Azure DevOps instance record using the connection alias that you created. This
instance is used to establish an integration between Agile Development 2.0 and Azure DevOps.

Before you begin

Role required: sn_ado_int.admin or sn_ado_int.user

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Click New.
3. On the form, fill in the fields.
Azure DevOps Instance form
Field

Description

Name

Name of the Azure DevOps instance. Enter a
name of your choice.

Connection Alias

Azure DevOps connection alias that you
already created. Use the lookup (
to select your connection alias.

Version

) option

Azure DevOps version. Use the lookup (
)
option to select your Azure DevOps version.

4. Click Submit.

What to do next

Connect to Azure DevOps
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2035


<!-- page 2036 -->
.
Connect to Azure DevOps
Connect Azure DevOps with Agile Development 2.0 to enable the integration.

Before you begin

Role required: sn_ado_int.user

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. Click Connect.

Result

If the State field on the Azure DevOps Instance record shows:
• Connected, the connection is successful.
• Not connected, the connection could not be established. You can view the reason for the
failure in the error message.

What to do next

Discover and import Azure DevOps projects
.
Discover and import Azure DevOps projects
Discover and import all available Azure DevOps projects into Agile Development 2.0 to start
using the integration between the two applications.

Before you begin
• Complete connecting Agile Development and Azure DevOps.
• Role required: sn_ado_int.user

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. Click Discover Projects.
This action creates requests to import Azure DevOps projects and process map configuration
for all these projects. You can view all import requests in the Azure DevOps Import Requests
related list. The initial state of these requests is Requested.

Result

Once the status of each import request changes to Complete, you can see that the related lists
of this Azure DevOps instance are populated as follows:
• Azure DevOps Projects: All available projects from Azure DevOps
• Process Mappings: Map configuration for all the imported Azure DevOps projects according to
the process type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2036


<!-- page 2037 -->
For example, default process types such as Agile, Basic, and CMMI or any custom process
types that you defined for your Azure DevOps projects.
For more information on the default map configuration of work items, see Default map
configuration for Azure DevOps integration with Agile Development 2.0.

What to do next

Import areas, teams, and iterations from Azure DevOps
.
Default map configuration for Azure DevOps integration with Agile Development 2.0
Understand the default field map configuration, of different process types, between Azure
DevOps and Agile Development 2.0.
By looking at the default map configuration for different process types, you can see how work
item types in Azure DevOps are mapped in Agile Development. You can also see how fields are
mapped between the two applications.
When you import available epics, stories, and issues from Azure DevOps, this data is stored in
tables as defined in the process map configuration.

Note:
When you upgrade to version 1.3 of the application, map configuration is generated at the
process level per process type and not at the instance level. You must update any custom
maps that you previously configured to ensure that the import and export of work items is
not impacted.
Here's how you can view the default map configuration for different process types.
1. Navigate to Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. From the Process Mappings related list, open the record for a process map.
You can add or update the configuration for field, table, and choice maps between Azure DevOps
and Agile Development 2.0. For details, see Customizing your map configuration for Azure
DevOps integration.
The following are the details of the default map configuration for various process types in Azure
DevOps.

Default mapping for Agile process
Default mapping configuration for Agile Process
Table in Azure DevOps

Table in Agile Development 2.0

User Story

Story [rm_story]

Epic

Epic [rm_epic]

Feature

Feature [ sn_safe_feature]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2037


<!-- page 2038 -->
Default mapping for Basic process
Default mapping configuration for Basic process
Table in Azure DevOps

Table in Agile Development 2.0

Issue

Story [rm_story]

Epic

Epic [rm_epic]

Default mapping for CMMI process
Default mapping configuration for CMMI process
Table in Azure DevOps

Table in Agile Development 2.0

Epic

Epic [rm_epic]

Requirement

Story [rm_story]

Default mapping for Scrum process
Default mapping configuration for Scrum process
Table in Azure DevOps

Table in Agile Development 2.0

Product Backlog Item

Story [rm_story]

Epic

Epic [rm_epic]

Import areas, teams, and iterations from Azure DevOps
Import areas, teams, and iterations of your Azure DevOps projects. These details are used to
import sprint data and associate your Azure DevOps projects with assignment groups in Agile
Development 2.0.

Before you begin
• Discover and import Azure DevOps projects.
• Role required: sn_ado_int.user

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. From the Azure DevOps Projects releated list, open a project record.
4. Click Import Areas, Iterations and Teams.
Details of your import requests are available in the Azure DevOps Import Requests related list.
You can view all the imported teams, iterations, and areas in the Azure DevOps Teams, Azure
DevOps Iterations, and Azure DevOps Areas related lists of this project.

What to do next

Setting up import and export between Azure DevOps and Agile Development 2.0
.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2038


<!-- page 2039 -->
Setting up import and export between Azure DevOps and Agile Development 2.0
Configure the settings for the import and export actions of work items between Agile
Development 2.0 and Azure DevOps.
To enable synchronization of work items, register webhooks for your Azure DevOps projects and
associate your Azure DevOps projects and teams with assignment groups in Agile Development
2.0.
Register webhooks for an Azure DevOps project
Register webhooks to subscribe to the events from your Azure DevOps projects to Agile
Development 2.0.

Before you begin
• Discover and import Azure DevOps projects.
• Role required: sn_ado_int.user

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. From Azure DevOps Projects related list, open your project record.
4. Click Register Webhooks.
If the webhook registration is successful, the State field in the project form changes from Not
Registered to Registered.

Result

When you register webhooks in Azure DevOps,it receives the following event updates between
Azure DevOps and Agile Development 2.0.
• Create a work item
• Update a work item
• Delete a work item
• Restore a work item
• Comment on a work item
For more information on synchronization of work items according to these webhook events, see
Importing and exporting work items between Agile Development and Azure DevOps.

What to do next

Associate Azure DevOps projects with assignment groups in Agile Development 2.0
.
Associate Azure DevOps projects with assignment groups in Agile Development 2.0
Associate your Azure DevOps projects and teams with assignment groups in Agile Development
2.0 to enable import and export of issues between the two applications.

Before you begin
• Import areas, teams, and iterations from Azure DevOps.
• Create assignment groups in Agile Development. See Create an assignment group in Agile
Development 2.0.
• Role required: sn_ado_int.user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2039


<!-- page 2040 -->
About this task

After you associate an Azure DevOps team with an assignment group, you can:
• Import all available stories and epics of this team into the associated group.
• View any new stories and epics or updates made to the existing stories and epics in both Agile
Development 2.0 and Azure DevOps.
• Import iterations as sprints in Agile Development 2.0.

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Team Integration Settings.
2. Click New.
3. In the Team Integration Settings form, select:
◦ An Azure DevOps project.
◦ A team of your Azure DevOps project.
◦ An assignment group in Agile Development 2.0 with which you want to associate the
selected Azure DevOps team.
The value of the Default Area field is filled automatically depending on the selected team.

Note: If a Default Area value is already used for a Team Integration Settings record,
then it cannot be used for another Team Integration Settings record because Backlog in
Agile Development 2.0 can't be shared among multiple assignment groups.
Stories or epics that don't have an Assignment group in Agile Development 2.0 will not be
synced with Azure DevOps. This is because values from the Team Integration Setting record
are used determine which ADO project a story or epic in Agile Development 2.0 belongs to.
4. Click Submit.
You can view the details of your settings in the Team Integration Settings in the Azure DevOps
Project form.

Note: You can associate an assignment group with only one Azure DevOps team.
What to do next

Import work items from Azure DevOps to Agile Development 2.0
.
Related topics
Importing and exporting work items between Agile Development and Azure DevOps
Import work items from Azure DevOps to Agile Development 2.0
Import work items and iterations of an Azure DevOps project into Agile Development to track and
update the status of your work.

Before you begin
• Set up team integration settings for your Azure DevOps projects. For more information, see
Associate Azure DevOps projects with assignment groups in Agile Development 2.0.
• Role required: sn_ado_int.user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2040


<!-- page 2041 -->
Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. From the Azure DevOps Projects related list, open a project record.
4. Enable import and export of work items by selecting the Enable Workitems Import and Enable
Workitems Export options.
5. Enable synchronization of sprint data by selecting the Sync Sprints option.
6. Click Import Work Items.
7. Select a date and time range.
8. Click Submit.

Note: The bulk import action doesn’t import the Description and Acceptance criteria
fields. However, if there’s an update on these records in Azure DevOps after the import is
done, these fields are synced in Agile through webhook events.
Details of your import requests are available in the Azure DevOps Import Requests related list.
You can view all the imported work items and sprints in the Agile Development application.
◦ The relationship between the stories and epics stays as it is in Azure DevOps.
The Assigned to field of the story is set to the user based on the user's email address, which
must be unique per user account.
◦ The mapping of states of an iteration in Azure DevOps to sprints in Agile Development is as
follows:

State in Azure DevOps

State in Agile Development 2.0

Past

Completed

Future

Draft

Current

Current

◦ Sprints are not created in Agile Development 2.0 for the following conditions:
▪ If the date fields of the iteration in Azure DevOps are empty.
▪ If the iteration has a child iteration associated to it.
▪ If the sprints have overlapping dates.
◦ If two or more teams share a backlog iteration in Azure DevOps, a separate sprint record for
each team is created in Agile Development 2.0.

What to do next

Schedule jobs to import projects, teams, areas, and work items from Azure DevOps
.
Schedule jobs to import projects, teams, areas, and work items from Azure DevOps
Schedule jobs to automatically import new projects, teams, areas, work items, and sprints
periodically from Azure DevOps into Agile Development 2.0.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2041


<!-- page 2042 -->
Before you begin

Role required: admin

About this task

If you do not configure the scheduled job, you must manually discover projects and import areas
and teams.

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Open one of the following jobs:
◦ Discover Azure Project Job
◦ Import Azure DevOps Teams Areas and Iterations
◦ Import Azure DevOps Work Items
These jobs are inactive by default.
3. To execute the job manually, click Execute Now.
4. To run the job at a scheduled time, select the Active check box.
You can edit the details of the Run and Time fields according to your preference.
5. Click Update.
6. Repeat the procedure for the other two scheduled jobs.
Customizing your map configuration for Azure DevOps integration
Customize the table, field, or state map configuration between Azure DevOps and Agile
Development 2.0 according to your organizational preferences.
• Any modifications that you do to the existing map configuration of the process types would
apply to all the Azure DevOps projects that use this process map.
• Only fields of type number, select, text, date, identity, date, date time, and reference are
supported for custom map configuration.
Customize your table map configuration
Configure table maps between tasks, iterations, and work areas of Azure DevOps and tables in
Agile Development 2.0 and configure its fields for Azure DevOps projects of a process type.

Before you begin
• Discover and import Azure DevOps projects.
• Role required: sn_ado_int.user

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. From the Process Mapping related list, open a process map for which you want to customize
the map configuration.
4. From the Table maps related list, click New.
5. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2042


<!-- page 2043 -->
Table Map form
Field

Description

Internal Table

Name of the table in Agile Development 2.0.

External Table

Table ID in Azure DevOps.

External Table Name

Display name of the table in Azure DevOps.

6. Save the table configuration.
7. From the Field Maps related list of your table map record, create new field maps to map the
following fields.

Field in Azure DevOps

Field in Agile Development

Title of the work item

Short description

For information on how to configure field mapping for a table, see Customize your field map
configuration. You can also create other field maps for your new table configuration.

What to do next
1. Validate your new table map configuration by clicking Validate and fix mapping from your
process map form.
2. In the Table maps related list, if the Valid column of your configuration shows:
◦ true, validation of your map configuration is successful.
◦ false, validation of your map configuration failed. Ensure that you enter correct values for all
fields and validate again.
3. Create a business rule to support export of this new table map configuration to Azure DevOps.
For more information, see Create a business rule to apply a custom table map configuration.
Customize your field map configuration
Create a custom field map configuration to map a field in an Agile Development 2.0 table for
Azure DevOps projects of a process type.

Before you begin
• Discover and import Azure DevOps projects.
• Role required: sn_ado_int.user

About this task

The following field types are supported for custom field map configuration:
• Number
• Select
• Text
• Date
• Identity
• Date time

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2043


<!-- page 2044 -->
• Reference
• List

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. From the Process Mapping related list, open a process map for which you want to customize
the map configuration.
4. From the Table maps related list, open a record to create a field map configuration for that table
map.
5. From the Field Maps relates list, click New.
6. On the form, fill in the fields.
Field Map form
Field

Description

Internal Field

Field name in Agile Development 2.0.

Lookup Column Name

This field is required when you select a
reference field as the internal field.
For more information, see Configuring a
reference field in Azure DevOps.

Table Map

Table map in Agile Development 2.0, in which
this field is created.
This field is auto-populated based on the
table map record you select.

External Field

Field ID in Azure DevOps.

External Field Name

Display name of the field in Azure DevOps.

7. Click Submit.

What to do next
1. Validate your new table map configuration by clicking Validate and fix mapping from your
process map form.
2. From the Table maps related list, navigate to your new field map configuration. If the Valid
column of your configuration shows:
◦ true, validation of your map configuration is successful.
◦ false, validation of your map configuration failed. Ensure that you enter the correct values for
all fields and validate again.

Important: If your custom map configuration is invalid or if the required fields are not
mapped for that work item, the export and import action does not work.
Configuring a reference field in Azure DevOps
Understand how to configure a reference field while creating a new field map configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2044


<!-- page 2045 -->
When you select a reference field for the Internal Field field, you must select a value for the
Lookup Column Name field. The value from the Lookup Column Name field is used during the
import and export of work items between Azure DevOps and Agile Development 2.0.
During import, the integration application searches for the record in the reference table using the
Lookup Column Name field. If the record is not found, the value in the work item will be empty in
Agile Development 2.0.

Customize your state map configuration
Create a custom state map for a field of an Agile Development 2.0 table to map the workflow
states of your preference for Azure DevOps projects of a process type.

Before you begin
• Discover and import Azure DevOps projects.
• Role required: sn_ado_int.user

About this task

You can map a state in Azure DevOps to multiple states in Agile Development 2.0. In such cases,
the state in Agile Development 2.0 for an issue type depends on the choice order value that you
provide for this state configuration.
For example, when an work item from Azure DevOps that is in the Active state imported, the
State field in Agile Development 2.0 is set to Work in progress as it has the lowest choice order
value.
You can also map multiple states in Azure DevOps to a single state in Agile Development 2.0.

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. From the Process Mapping related list, open a process map for which you want to customize
the choice map configuration.
4. Open the workflow state map for this process type.
a. From the Table Maps related list, click User Story.
b. From the Field Maps related list, click state.
5. From the Choice maps related list, click New.
6. On the form, fill in the fields.
Choice Map form
Field

Description

Internal Choice

Value of the state in Agile Development 2.0.
This value is an integer.

External Choice

Name of the state in Azure DevOps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2045


<!-- page 2046 -->
Field

Description

External Choice Name

Display name of the state in Azure DevOps.

7. Click Submit.

What to do next
1. Validate your new table map configuration by clicking Validate and fix mapping from your
process map form.
2. Navigate to your new choice map configuration. If the Valid column of your configuration
shows:
◦ true, validation of your map configuration is successful.
◦ false, validation of your map configuration failed. Ensure that you enter the correct values for
all fields and validate again.
Create a business rule to apply a custom table map configuration
Create a business rule to enable export from your new custom map configuration of an Agile
Development 2.0 table to your Azure DevOps projects.

Before you begin

Role required: admin

About this task

After you create a custom table map for an Azure DevOps process type, create a business rule
similar to Synch Story with Azure DevOps to support export of information using this new table
map to Azure DevOps.

Procedure
1. Navigate to All > System Definition > Business Rules.
2. From the list of available business rules, locate and open the Synch Story with Azure DevOps
rule.
3. From the context menu (
), perform an Insert and Stay operation on this business rule.
If you have not enabled the Insert and Stay action in your ServiceNow instance, see Allow
insert options on records .
4. On the business rule form, edit the following fields.
Business rule form
Field

Description

Name

Unique name for the business rule.
For example, if your new table map is to map
defects, name this rule as Sync Defect with
Azure DevOps.

Table

Select the table in Agile Development 2.0 for
which you've created the custom map.
For example, Defect [rm_defect].

5. Click Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2046


<!-- page 2047 -->
Allow import and export of attachments on a custom table
Enable import and export of attachments between Azure DevOps and Agile Development 2.0 for
a custom table that you added to the map configuration of a process type.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definitions > Business Rules.
2. From the list of business rules, locate and open the Sync Attachment to Azure rule.
3. In the When to run section of the form, include your custom table map by adding it to the filter
conditions.
For example, if the custom table that you added is Defect, do the following:
a. Click Add "OR" Clause.
b. Set the new clause to Table name is rm_defect.
4. Click Update.
Populate Azure DevOps identifier reference fields for a custom table
Enable Azure DevOps project identifier reference fields for an Agile Development 2.0 table that
you added to the map configuration of a process type.

Before you begin

Role required: admin

About this task

You can display references of ID, key, Azure DevOps project, and the project URL on your custom
table form by adding this table to the Populate External Identifier Reference business rule.

Procedure
1. Navigate to All > System Definitions > Business Rules.
2. From the list of business rules, locate and open the Set external URL for Work Items rule.
3. In the When to run section of the form, include your custom table map by adding it to the filter
conditions.
For example, if the custom table that you added is Defect, do the following:
a. Click Add "OR" Clause.
b. Set the new clause to Reference table is rm_defect.
4. Click Update.

What to do next

Configure the form layout or personalize the list layout of your custom table to display any or all of
the following fields.
• External ID
• External Key
• External Project
• External URL

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2047


<!-- page 2048 -->
Related topics
Personalise a v2 list
Configuring the form layout
Configuring Azure DevOps integration with SAFe
Understand how to set up Microsoft Azure DevOps integration with SAFe in your ServiceNow
instance.
1. Identify the process in Azure DevOps that maps to SAFe.
From the Process Mappings related list of your Azure DevOps instance record, identify the
process that maps to SAFe configuration.
If the Process Mappings related list is empty, discover Azure DevOps projects and try again.
2. Update the map configuration to import SAFe entities.
For information on how to create a table, field, and workflow state mapping for SAFe entities,
see Customizing your map configuration for Azure DevOps integration.
3. See Configuring Azure DevOps projects for SAFe.
Configuring Azure DevOps projects for SAFe
Set up SAFe related configuration in Azure DevOps projects and understand the workflow of
SAFe PI and Sprint integration with Azure DevOps.
After creating map configuration for SAFe entities, import areas, teams, and iterations for your
Azure DevOps projects and update the following fields. These fields are mandatory if Sync
Sprints is set to true.
• ART: Select an agile release train (ART).
• ART Iteration Path: Select an iteration that is an equivalent to the parent of PI.

Note: If the ART Iteration Path lookup (

) does not return any records, import areas,
teams, and iterations from Azure DevOps and try again.
For the example shown in the following screenshot, Fabrikam must be selected as the ART
Iteration path.
The application will then automatically identify PI 1 as the program increment and Sprint 1, Sprint
2, and so on, as the corresponding SAFe sprints in the ServiceNow instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2048


<!-- page 2049 -->
Important:
• To create team integration settings for a project, the SAFe teams must be a part of the
project's ART.
• All teams of an ART must share the same sprint cycle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2049


<!-- page 2050 -->
SAFe sprint and PI integration workflow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2050


<!-- page 2051 -->
Troubleshooting issues of Azure DevOps integration with SAFe
Resolve common issues that you might face while working with the integration of Azure DevOps
and SAFe.

Issue

Action

The ART and ART Iteration Path fields are not Ensure that table mapping exists for SAFe
displayed in the Azure DevOps project form.
stories.
Sprint is not imported from Azure DevOps to
SAFe.

• Check the state of the sprints. Sprints of
only the states Future and Current are
imported.
• Ensure that there are no overlapping sprints.

PI is not imported from Azure DevOps to SAFe.

• Ensure that there are no overlapping PIs.
• Ensure that the correct ART Iteration Path is
selected in the Azure DevOps project form.

The error message Ensure that the

selected assignment group
belongs to the ART and try
again is displayed in the Azure DevOps
project form.

The assignment groups in all the team
integration settings of this Azure DevOps
project must be the SAFe teams that belong to
the ART selected for this project.
If not, add these SAFe teams to the ART and
proceed to create team integration settings
using these SAFe teams as assignment
groups.

Sprints are not linked with SAFe features

Features can be linked to the PI but not with
the sprints, as it's not supported in SAFe.
Select the PI iteration path in the feature in the
Azure DevOps portal, which should link the
feature to the PI in SAFe.

Related topics
Troubleshooting issues for Azure DevOps integration with Agile Development
Generate a default map configuration between Azure DevOps and Agile Development 2.0
Generate a default mapping for an Azure DevOps process type if you want to reset the existing
map configuration.

Before you begin
• Discover and import Azure DevOps projects.
• Role required: sn_ado_int.user

About this task

You can restore the default map configuration of an Azure DevOps process type by deleting the
existing table maps and then creating mappings for this process type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2051


<!-- page 2052 -->
When you import available work items such as epics and stories from Azure DevOps, this data is
stored in tables as defined in the map configuration of the project's process type.
If the table map does not exist for a work item in your Azure DevOps process, this work item
cannot be imported and exported between Azure DevOps and Agile Development 2.0.

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Azure DevOps Instances.
2. Open your Azure DevOps instance record.
3. From the Process Mapping related list, open a process map for which you want to generate the
default map configuration.
4. Click Create Mappings.

Note: If a table maps already exist for this process, the Create Mappings button is not
displayed.
A request of the type Create Mappings is created and is visible in the Azure DevOps Import
Requests related list of your Azure DevOps instance.

Result

Once the state of the Create mappings request changes to Completed, you can see that the
Mapping Config field of this Azure DevOps process is populated. Also, you can see the default
map configuration in the Table Maps related list of this process.
Related topics
Customizing your map configuration for Azure DevOps integration
Importing and exporting work items between Agile Development and Azure DevOps
Understand the workflow for the import and export of work items between Agile Development
and Azure DevOps.
To enable import and export of work items between Agile Development 2.0 and Azure DevOps,
you must configure the settings.

Importing to Agile Development 2.0 from Azure DevOps
• When you create a work item of type epic in Azure DevOps, an epic is created for the
assignment group according to the team integration settings that you configured.
• When you create a work item of type story in Azure DevOps, a story is created for the
assignment group according to the team integration settings that you configured.
The relationship between the story and its epic is retained as it is in Azure DevOps.
• Only the fields that are defined in the field map configuration are retained in the story or
epic. For the details of the default map configuration, see Default map configuration for Azure
DevOps integration with Agile Development 2.0.
• When you add an attachment to a work item in Azure DevOps, the same attachment is added
to the corresponding story or epic in Agile Development 2.0.
• Any new iterations created in Azure DevOps do not create a corresponding sprint record in
Agile Development 2.0 immediately.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2052


<!-- page 2053 -->
When a work item is added for the first time to the new iteration in Azure DevOps, only then a
corresponding sprint record is created in Agile Development 2.0. To ensure consistent data
across the two applications at all times, create sprints in Agile Development 2.0.
• Only leaf level iterations are retained as sprints in Agile Development 2.0.
• When you add comments for an issue in Azure DevOps, they are updated in the Work notes
field of the story or epic in Agile Development, based on the map configuration.

Note: The images added in the comments are not supported.
• When you delete a work item in Azure DevOps, the corresponding record is deleted in Agile
Development 2.0.
• When you delete an iteration in Azure DevOps, the corresponding sprint is deleted in the Agile
Development 2.0.

Note: To delete records in the Agile Development 2.0, set the Can Delete field to true in
the Application access of the respective tables. For details, see Table design and runtime
settings .
• When you restore a work item from recycle bin in Azure DevOps, a corresponding record is
created in Agile Development 2.0 according to its team integration settings.
Import workflow for work items created in Azure DevOps

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2053


<!-- page 2054 -->
Import workflow for areas updated in Azure DevOps

Exporting from Agile Development to Azure DevOps
• When you create an epic for an assignment group, it is exported as a work item to the area in
Azure DevOps according to the team integration settings that you configured.
• When you create a story for an assignment group, it is exported as a work item to the area in
Azure DevOps according to the team integration settings that you configured.
The relationship between the story and its epic is retained in Azure DevOps.
• When you add an attachment to a story or an epic, the same attachment is added to the
corresponding work item in Azure DevOps.
• When you update the assignment group of an existing story in the Agile Development 2.0,
the work item is recreated for the Azure DevOps area that is associated with the updated
assignment group.
• When you create a sprint for an assignment group in Agile Development 2.0, it is exported to
Azure DevOps under its backlog iteration as per the team integration settings.
• When you delete a sprint for an assignment group in Agile Development 2.0, it unlinks the
sprint selection from the team's iteration in Azure DevOps.
• When you update a work item in Agile Development 2.0, only the fields that are updated are
sent to Azure DevOps as a part of the payload

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2054


<!-- page 2055 -->
Export workflow for assignment groups updated in Agile Development 2.0

Sync sprint details between Agile Development 2.0 and Azure DevOps
Sync sprint details from Agile Development 2.0 to Azure Devops. Any change in the sprint details
in Agile Development 2.0 is exported to Iteration paths in Azure DevOps, when the Sync sprint
field is checked.
Sync Sprint details for a new work item in Agile Development 2.0
Sync Sprint

Export

Import

Disabled (Iteration path
available in Azure Devops)

Sends the default iteration
path for the project to Azure
DevOps.

Sprint value does not change
in Agile Development 2.0.

Disabled (Iteration path is not
available in Azure Devops)

Sends the default iteration
path for the project to Azure
DevOps.

Sprint value does not change
in Agile Development 2.0.

Enabled (Iteration path is
available in Azure Devops)

Sends the appropriate
Sprint value does not change
iteration path for the project to in Agile Development 2.0.
Azure DevOps.

Enabled (Iteration path is not
available in Azure Devops)

Sends the default iteration
path for the project to Azure
DevOps.

Sprint value clears in Agile
Development 2.0.

Sync sprint details for an existing work item in Agile Development 2.0
Sync sprint

Export

Import

Disabled

Sends the previous iteration
Sprint value in Agile
path to Azure. Iteration path
Development 2.0 is selected.
will be same in Azure DevOps.

Enabled

Sends the new iteration
path based on the selection.

Sprint value in Agile
Development 2.0 is selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2055


<!-- page 2056 -->
Sync sprint details for an existing work item in Agile Development 2.0 (continued)
Sync sprint

Export

Import

Iteration will be changed
based on selection.
Troubleshooting issues for Azure DevOps integration with Agile Development
Resolve common issues that you might face while working with the integration of Azure DevOps
and Agile Development 2.0.

Issue

The export action is not working.

Action

• Review your custom map configuration.
If your custom map configuration is invalid or
if the required fields are not mapped for that
work item, export does not work.
• Ensure that the Enable Export check box is
selected for the project.
• Check to see if your Azure DevOps
password has expired.

Sprint is not imported from Azure DevOps to
Agile Development 2.0.

Sprints are not imported to Agile Development
2.0 for one of the following reasons:
• Any new iterations created in Azure DevOps
do not create a corresponding sprint record
in Agile Development 2.0 immediately.
When a work item is added for the first
time to the new iteration in Azure DevOps,
only then a corresponding sprint record is
created in Agile Development 2.0.
To ensure consistent data across the two
applications at all times, create sprints in
Agile Development 2.0.
• Ensure that there are no overlapping sprints.

An assignment group is not populated for a
story or an epic.

If the team is not associated with an
assignment group in Agile Development 2.0,
it can result in assignment group not being
populated. Verify that project integration
settings exist for your Azure DevOps team.
If the area of a work item is mapped to multiple
teams, the assignment group for that work
item in Agile Development 2.0 is empty. In
such cases, you can manually select an
assignment group for this work item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2056


<!-- page 2057 -->
Issue

Action

A value from a field in Azure DevOps is not
populated in Agile Development 2.0.

Verify if the custom field map is configured.

The value of Priority or State fields from
Azure DevOps is not populated in Agile
Development 2.0.

Verify if the custom state map is configured.

An update by a user in Azure DevOps is not
updated in Agile Development 2.0.

Ensure that the user credentials that are used
to set up the integration of Azure DevOps with
Agile Development 2.0 are not used to perform
record updates.

The work item is deleted in Azure DevOps but
not deleted in Agile Development 2.0.

Ensure that the Can Delete field in the
Application access of the respective tables is
set to true.
For details, see Table design and runtime
settings .

Deleting a project, team, or area does not
result in any action in Agile Development 2.0.

After deleting the project, team, or area
in Azure DevOps, the Azure DevOps
administrator must manually delete the
corresponding Azure DevOps project and its
associated stories in Agile Development 2.0.

New Azure DevOps projects are not imported
automatically.

Manually discover projects from the Azure
DevOps instance record to immediately synch
the project updates or schedule a job to
discover and import these updates on a daily
basis.
For more details on the scheduled jobs, see
Schedule jobs to import projects, teams,
areas, and work items from Azure DevOps.

Imported work items (epics and stories) of a
project have no assignment group associated
with them.

Ensure that you have team integration settings
for this project. For more information, see
Associate Azure DevOps projects with
assignment groups in Agile Development 2.0.
The assignment group associated to any
imported work item of an Azure DevOps
project is based on the team integration
settings of that project. If the project does
not have any team integration setting, the
imported work item will have an empty
assignment group.

Changes made to iterations in Azure DevOps
are not reflecting immediately in Agile
Development 2.0.

Manually import iterations from the Azure
DevOps project record or schedule a job to
discover and import these updates daily.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2057


<!-- page 2058 -->
Issue

Action

For more details on the scheduled jobs, see
Schedule jobs to import projects, teams,
areas, and work items from Azure DevOps.
The UI actions for Connect, Disconnect, and
Validate and Fix result in an error when using
for the first time.

This error is a known issue. Retry the UI action.

When the Description field has & in Azure
DevOps, it renders as &amp; in Agile
Development 2.0.

The field mapping between Agile
Development 2.0 and Azure DevOps is not
supported for HTML fields.

Export still works when the webhooks are deregistered.

Webhooks are only to import data from Azure
DevOps to Agile Development 2.0. To stop
the export of workitems, de-select the Export
Work Items checkbox for the project.

Enabling detailed project logs
To view all the details on project logging, enable the integration project logging property. For
more information, see Enable detailed project logging in Microsoft Azure DevOps Integration with
Agile Development 2.0.
Enable detailed project logging in Microsoft Azure DevOps Integration with Agile
Development 2.0
Understand how to enable the integration project logging in Microsoft Azure DevOps integration
with Agile Development 2.0 so that you can view detailed project logs.

Before you begin

Role required: sn_jira_int.admin (with edit access) or sn_jira_int.user (with read access).

About this task

Enable the project logging property in the Agile Azure DevOps Integration application.

Procedure
1. Navigate to All > Agile Azure DevOps Integration > Properties.
2. Select the Enable Integration Project Logging check box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2058


<!-- page 2059 -->
3. Click Save.

Agile Development 2.0 reference
Reference information to provide additional details about Agile Development 2.0 application
such as the fields, related lists, user roles, tables, guidelines, and domain separation information.

Components installed with Agile Development 2.0
Several types of components are installed with activation of the Agile Development 2.0 plugin,
including tables, user roles, and properties.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Roles installed
Role title [name]

Scrum admin
[scrum_admin]

Description

Contains roles

A scrum admin has full control on the
Agile Development 2.0 application.

• scrum_user
• rm_product_admin
• rm_task_admin
• rm_test_admin
• rm_doc_admin
• rm_story_admin
• rm_epic_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2059


<!-- page 2060 -->
Role title [name]

Description

Contains roles

• rm_releasescrum_admin
• rm_sprint_admin
Scrum master
[scrum_master]

A scrum master guides team members
through a sprint and serves as a
sounding board for issues that arise.

• scrum_sprint_planner
• scrum_story_creator
• scrum_user

A scrum master can move stories
between a release backlog and a
sprint. This user can create and
manage:
• Epics
• Stories
• Sprints
• Team Members
Scrum product owner
[scrum_product_owner]

Users with this role are responsible for
the business value of a project and for
maintaining the product backlog.

• scrum_release_planner
• scrum_story_creator
• scrum_user

A product owner can move stories
between the product backlog and
releases. This user can create and
manage:
• Themes
• Epics
• Stories
• Products
• Releases
• Teams
Scrum release planner

Users with this role perform release
[scrum_release_planner] planning activities.

• scrum_user
• scrum_story_creator

A release planner can create and
manage:
• Themes
• Products
• Releases
Scrum sprint planner
[scrum_sprint_planner]

Users with this role manage the sprint
process.

• scrum_user
• scrum_story_creator

A sprint planner can create and
manage:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2060


<!-- page 2061 -->
Role title [name]

Description

Contains roles

• Stories
• Sprints
Scrum story creator
[scrum_story_creator]

Users with this role create the
descriptive elements of a product.

• rm_scrum_task_admin
• scrum_user

A story creator can create and manage:
• Epics
• Stories
• Tasks
Scrum story editor
[scrum_story_editor]
Scrum team member
[scrum_team_member]

Users with this role have edit access to
the Story [rm_story] table.

• scrum_user

Users with this role are the scrum users
who work on a story in a sprint.

• scrum_user

A team member can create a scrum
task, perform updates to a story, and
log enhancement requests or defect
reports.

• scrum_story_editor

• rm_scrum_task_admin

• scrum_story_creator
• rm_defect_admin
• rm_enhancement_admin
• rm_scrum_task_admin

Scrum task admin
[rm_scrum_task_admin]
Scrum user
[scrum_user]

Scrum task administrator with access to
[rm_scrum_task] table.
Basic scrum role that all other roles
inherit. It confers read-only rights to the
Agile Development application.

scrum_user

cmdb_read

A scrum user can view all elements
of agile, but cannot create, edit, or
manage records of any type.

Tables installed
Table

Description

Product Assignment Group

Stores relationship between products and groups.

[m2m_product_group]
Release Assignment Group

Stores relationship between releases and groups.

[m2m_release_group]
Application Model

Represents whole product whose releases are being
managed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2061


<!-- page 2062 -->
Table

Description

[cmdb_application_product_model]
Release Product

Represents all managed products.

[m2m_product_release]
Story Dependencies
[m2m_story_dependencies]
Scrum task
[rm_scrum_task]
Release team member

Represents all related stories (prerequisite and
dependent) to an existing story.
Represents a discrete amount of work for a story carried
out during a sprint.
Represents the list of users who are part of a release.

[scrum_pp_release_team_member]
Sprint team member

Represents the list of users who are part of a sprint.

[scrum_pp_sprint_team_member]
Team
[scrum_pp_team]
Team name

Represents who completes scrum tasks and stories
during releases and sprints.
Represents the name of the scrum team.

[scrum_pp_team_name]
Theme
[scrum_theme]
Scrum release
[rm_release_scrum]
Sprint
[rm_sprint]
Epic
[rm_epic]
Story
[rm_story]
Defect
[rm_defect]
Documentation Task

Represents either a tangible product (such as a trading
application) or an abstract goal (such as performance
tuning).
Represents individual versions (releases) of the product.
Each release contains a list of sprints with a time range in
which the stories in those sprints must be completed.
Stores sprints, which are the backlog items to be
addressed together during a given time period.
Represents related stories or requirements that you have
not yet transformed into stories.
Represents self-contained pieces of work that can be
completed within a sprint.
Represents a deviation from the expected behavior of a
product.
Represents documentation tasks for the product.

[rm_doc]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2062


<!-- page 2063 -->
Table

Description

Enhancement

Represents an improvement to an existing product.

[rm_enhancement]
SDLC release

Represents individual versions of the product.

[rm_release_sdlc]
Testing Task

Represents testing tasks for the product.

[rm_test]
Properties installed with Agile Development 2.0
Properties are added with activation of Agile Development 2.0.
Agile Development 2.0 adds the following properties.

Note: All of these properties are located in the System Properties [sys_properties] table.
To access the table, enter sys_properties.list in the navigation filter.

Property

Usage

Draw Burndown Chart ideal line as a linear
straight line

Draws the burn down chart ideal line as a
straight line.

com.snc.sdlc.scrum.pp.burndown.ideal.linear

• Type: true|false
• Default value: false

Stories in any one of the states specified in
this comma separated list will be shown in the
progress board (in the order specified)
com.snc.sdlc.scrum.pp.progress.story.states

Specify the story states using a comma
separated list that should be shown in the
story progress board. The states in the
progress board follow the same order as
specified here.
• Type: integer
• Default values in their order:
◦ -6: Draft
◦ 1: Ready
◦ 2: Work in progress
◦ -7: Ready for testing
◦ -8: Testing
◦ 3: Complete

Tasks in any one of the states specified in this
comma separated list will be shown in the
progress board (in the order specified)
com.snc.sdlc.scrum.pp.progress.task.state

Specify the task states using a comma
separated list that should be shown in the
progress board. The states in the progress
board follow the same order as specified
here.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2063


<!-- page 2064 -->
Property

Usage

• Type: integer
• Default values in their order:
◦ -6: Draft
◦ 1: Ready
◦ 2: Work in progress
◦ 3: Complete
Enable the Actual Hours field for scrum tasks

Enable the Actual hours field in the Scrum
Task form. Displays actual hours of tasks on
com.snc.sdlc.scrum.pp.task_uses_actual_hours the task progress board.
• Type: true|false
• Default value: true
The default sprint length (in days) used if the
length cannot be calculated from the sprint.
com.snc.sdlc.scrum.pp.default_sprint_length

Specify a default sprint duration that should
be used when creating a sprint, if the sprint
length cannot be calculated from the sprint.
• Type: integer
• Default value: 14

Writing effective stories in Agile Development 2.0
Well-written stories are easy to understand by all developers and members of team members,
such as Testing or Documentation.
Stories enable the assignment group to accurately estimate the effort required to implement the
work according to the definition of done. Definition of done is the exit criteria agreed to by the
group, that determines when a story is complete.
A story has the following basic conditions:
• Description: The story description relates to a user persona, such as administrator, and either
describes a business value or addresses a technical debt.
• Acceptance criteria: The story acceptance criteria are measurable and testable.

Story descriptions
A good user story description identifies the following for meeting the stated requirement:
• the role of the user persona in the system
• the need expressed by the user persona
• the benefit to all stakeholders such as developers, users, and others
Typically, a story description is expressed as: "As a <role>, I want <goal or need>, so that
<benefit>".
Examples of good story description

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2064


<!-- page 2065 -->
• Description: As a developer, I want to publish the current state of my application
to an update set, so that I can deploy it to a production system.
• Description: As a customer, I want to receive notifications when comments are
entered for an incident so that I am updated on the status.
• Description: As a change manager, I want to enable the assessment of risk for any
given change by establishing a list of questions with multiple choice answers.
Example of bad story description
Description: Notifications are sent when incidents are created.
This description is poor because:
• The description does not state who or what is sending the notifications, not in
what form the notification takes, such as email.
• The description does not include any benefit information, so the business value is
not clear.
It could be better written as:
Description: As an incident creator, I want email notifications to be sent to a
predefined set of interested parties when I create an incident, so that they can be
informed when an incident affecting them is created.

Story acceptance criteria
Acceptance criteria define the boundaries of a user story, and are used to confirm when the
software is working as intended, which means the story is completed. Acceptance criteria are an
essential part of the 'Definition of Done' for a story.
Good acceptance criteria
Good acceptance criteria should include the following, where relevant:
• Usability: Be sure to include measures of usability in the acceptance criteria.
Indicate how to answer the question: Is it easy to use? The key is to identify the
right measurements and make sure each is quantifiable.
• Functionality: Identify specific user tasks, business processes, or functions that
must be in place at the end of the project. A functional requirement might be: The
user can choose from multiple sizes.
• Error handling: Enumerate error cases and how each should be handled. For
example, if a user performs the steps in the wrong order, how will the software
handle it?
• Performance: Test system performance from the perspective of an individual user.
For example: Is the UI responsive?
• Stress tests: Describe how the system responds when it is under stress because
there are many users, transactions, or queries. Acceptance criteria should
define acceptable thresholds for stress testing. For example: Does the system
respond within a 250-millisecond threshold when 100 users submit queries
simultaneously?
Example of Good Acceptance Criteria
Description: As a customer, I want to order and pay for the book via a secure webbased form, so that my credit card information is safe.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2065


<!-- page 2066 -->
Acceptance Criteria:
• All mandatory fields must be completed before a customer can submit a form.
• Information from the form is stored in the customer orders database.
• Payment can be made via Amex, Master Card, or Visa credit card.
• The system shall accurately calculate and apply sales tax.
• The system shall accurately calculate and apply shipping charges.
• The customer shall be able to verify the accuracy of the order.
• An acknowledgment email is sent to the customer submitting the form.
• Protection against spam is working.
Example of Bad Acceptance Criteria
Description: As a customer, I want to receive notifications when an incident is
commented, so that I am updated on the status.
Acceptance Criteria: The appropriate people are notified when incidents are
commented.
The acceptance criteria are poor because they do not give enough detail to test, for
example, it is not clear who the appropriate people are.
The acceptance criteria could be better written as:
1. As an ESS user, create an incident.
2. Select Notify interested parties.
3. Save the incident.
4. Log in as an interested party.
5. Check that you have received an email for the logged incident.

Agile Development process data model
Learn about the relationship between tables that Agile Development 2.0 uses to manage the
agile process, represent releases, and represent product backlog items to be included in a
sprint.
The following diagram displays the Agile Development tables as well as their relationships to
other tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2066


<!-- page 2067 -->
Agile development process relationship diagram

Business stakeholder role for Agile Development 2.0
Use the business stakeholder role to read and retrieve data from any table of the Agile
Development 2.0 and Scrum Programs applications to generate reports.
When you activate the Business Stakeholder plugin (com.snc.business_stakeholder) in your
ServiceNow instance, the Read only roles for Agile 2.0 plugin (com.snc.agile_read_roles) is also
activated. This plugin provides a business stakeholder role (sn_agile_read) with which you can
access all the tables of Agile Development 2.0 and Scrum Programs applications. You can assign
this role to any user in your organization who is a business stakeholder.

Plugin availability
If you are a new customer, the Read only roles for the Agile 2.0 plugin (com.snc.agile_read_roles)
is activated on zBoot. However, the business stakeholder role (sn_agile_read) is available only
when you activate the Agile Development 2.0 plugin (com.snc.sdlc.agile.2.0).
If you are an upgrade customer, you must manually activate the read-only roles for Agile 2.0
plugin (com.snc.agile_read_roles).

Agile Development 2.0 tables accessible by users with the business stakeholder
role
When both the Read only roles for Agile 2.0 plugin (com.snc.agile_read_roles) and the Agile
Development 2.0 plugin (com.snc.sdlc.agile.2.0) are active in your ServiceNow instance, the user
with the business stakeholder role (sn_agile_read) has read access to the following tables.
Agile Development 2.0 tables
Table

Description

Product Assignment Group

Stores relationship between products and groups.

[m2m_product_group]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2067


<!-- page 2068 -->
Agile Development 2.0 tables (continued)
Table

Description

Release Assignment Group

Stores relationship between releases and groups.

[m2m_release_group]
Application Model
[cmdb_application_product_model]
Release Product

Represents a whole product whose releases are being
managed.
Represents all managed products.

[m2m_product_release]
Story Dependencies
[m2m_story_dependencies]
Scrum task
[rm_scrum_task]
Sprint team member

Represents all related stories (prerequisite and
dependent) to an existing story.
Represents a discrete amount of work for a story carried
out during a sprint.
Represents the list of users who are part of a sprint.

[scrum_pp_sprint_team_member]
Team
[scrum_pp_team]
Team name

Represents who completes scrum tasks and stories
during releases and sprints.
Represents the name of the scrum team.

[scrum_pp_team_name]
Theme
[scrum_theme]
Scrum release
[rm_release_scrum]
Sprint
[rm_sprint]
Epic
[rm_epic]
Story
[rm_story]
Defect
[rm_defect]

Represents either a tangible product (such as a trading
application) or an abstract goal (such as performance
tuning).
Represents individual versions (releases) of the product.
Each release contains a list of sprints with a time range in
which the stories in those sprints must be completed.
Stores sprints, which are the backlog items to be
addressed together during a given time period.
Represents related stories or requirements that you have
not yet transformed into stories.
Represents self-contained pieces of work that can be
completed within a sprint.
Represents a deviation from the expected behavior of a
product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2068


<!-- page 2069 -->
Agile Development 2.0 tables (continued)
Table

Description

Enhancement

Represents an improvement to an existing product.

[rm_enhancement]

Scrum Programs tables
Table

Description

epic_backlog_definition

Stores the filter criteria that is used to create
the epic backlogs.

scrum_program_m2m_group

Stores the relationship between a scrum
program and its teams.

Domain separation in Agile Development 2.0
This is an overview of domain separation and how it works with Agile Development 2.0. Domain
separation enables you to separate data, processes, and administrative tasks into logical
groupings called domains. You can control several aspects of this separation, including which
users can see and access data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

How domain separation works in Agile Development 2.0
• The entities in Agile 2.0 extend the functions of task, so they inherit the domain behavior of
tasks. The new entries you create go into the domain of the user currently logged in.
• Agile Board honors domain separation and lists the groups that the user belongs to for Sprint
Planning and Sprint Tracking pages. The backlog entries that display are in the same domain
as those that the current user owns or shares with other users. The stories that display in Agile
Board are limited to the domain of the current logged-in user.
Related topics
Domain separation for service providers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2069


<!-- page 2070 -->
Related links and lists of assignment group in Agile Development 2.0
Use the related lists in the Group form for the actions that you need to perform for your
assignment group in Agile Development 2.0, such as adding sprints and editing group members.
Related links in the Group form
Name

Description

Create
Sprints

Create sprints for the team. New sprints are listed in the Sprints related list of
the group.

Sprint
Planning

Plan your sprint activities in Agile Development 2.0.

Related lists in the Group form
Name

Description

Group Members

Lists the members of the group. You can add
or remove members in the agile group by
selecting Edit.
The Average points per sprint field rolls up to
derive the group capacity for a sprint.
Lists the sprints for the group. Click New to
add a sprint to the group.

Sprints

Related lists for a Product in Agile Development 2.0
Use the related lists in the Product form for the actions that you need to perform on your product
record in Agile Development 2.0, such as associating releases, themes, epics, stories, or
assignment groups.
Product form related lists
List

Description

Releases Lists the releases associated with the product.
You can create a release and associate it with this product by selecting New or add
an existing release by selecting Add.
Themes

Lists the themes that are part of the product.
You can create a theme and associate it with this product by selecting New or add
an existing theme by selecting Add.

Epics

Lists the epics associated with the product.
You can create an epic and associate it with this product by selecting New or add an
existing epic by selecting Add.

Stories

Lists the stories associated with the product.
You can create a story and associate it with this product by selecting New or add an
existing story by selecting Add.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2070


<!-- page 2071 -->
Product form related lists (continued)
List

Description

Groups

Lists the groups assigned to the product. You can assign an existing agile group to
the product by selecting Edit.
You can associate one or more assignment groups (of type Agile Team) to a product.
When you associate a product to a release, the groups assigned to the product are
automatically added to the release too.

Related lists for a Release in Agile Development 2.0
Use the related lists in the Release form for the actions that you need to perform for your release
in Agile Development 2.0, such as associating products, stories, or assignment groups.
Release form related lists
List

Description

Products Lists the products associated with the release.
You can create a product and associate it with this release by selecting New or add
an existing product by selecting Add.
Stories

Lists the stories associated with the release.
You can create a story and associate it with this release by selecting New or add an
existing story by selecting Add.
The stories you add here create the release backlog.

Groups

Lists the groups assigned to the release. You can assign an existing agile group to
the release by selecting Edit.
When you associate a product to a release, the groups assigned to this product are
automatically added to the release.

Related links and lists for a Story in Agile Development 2.0
Use the related links and related lists on the Story form for the actions that you need to perform
on your story in Agile Development 2.0, such as adding scrum tasks, dependencies, or splitting
the story.
Related links of a story
Name

Description

Split
Story

Splits the story into two stories by creating a new story with the same details. Any
incomplete tasks from the old story are moved to this new story.

Note: State of the Story cannot be Cancelled or Completed, and the Original
task field, if present, cannot contain a non-story record such as a Catalog Task
or Defect.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2071


<!-- page 2072 -->
Related links of a story (continued)
Name

Description

Add
Scrum
Tasks

Enables you to create multiple scrum tasks for the current story.
The scrum tasks are listed in the Scrum Tasks related list of the story.
For more information, see Create multiple scrum tasks for stories in Agile
Development 2.0.

Convert Converts an active story into an epic and moves the story into the Cancelled state.
into
If the story that you created is too large, you can convert it into an epic and then break
epic
it down into multiple stories.
• If this story is already associated with an epic, then the story is turned into a child
epic for this epic.
For example, STRY01 is converted to EPIC01. If STRY01 was associated with
EPIC02, then EPIC01 becomes a child epic to EPIC02. Otherwise, EPIC01 is created
as a standalone epic.
• The state of the newly created epic is automatically set to Draft.
• The canceled story is associated with the newly created epic.
Copy
Story

Copies the details of an existing active story to a new story. The tests and tasks of the
story are also copied.
The state of the newly created story is automatically set to Draft.
This action is not available for stories added from the triage board.

Note: State of the Story cannot be Cancelled or Completed, and the Original
task field, if present, cannot contain a non-story record such as a Catalog Task
or Defect.
Related lists of a story
Name

Description

Scrum Tasks

Lists the scrum tasks created for the story.
Click New to create a scrum task.
For more information, see Create a scrum task
for Agile Development 2.0 stories.

Prerequisite Stories

Lists the stories that must be completed
before the current story can be completed.
Click Edit to add prerequisite stories.

Dependent Stories

Lists the stories that depend on the current
story. Click Edit to add dependent stories.

Tests

Adds existing tests to the story.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2072


<!-- page 2073 -->
Related lists of a story (continued)
Name

Description

These tests are also listed on the Sprint
Tracking tab of Agile Board after the sprint of
this story starts.
Related topics
Create a story in Agile Development 2.0
Writing effective stories in Agile Development 2.0

Related lists for a Theme in Agile Development 2.0
Use the related lists on the Theme form for the actions that you need to perform for your theme in
Agile Development 2.0, such as associating stories or epics with the theme.
Related lists of a theme in Agile Development 2.0
Field

Description

Epics

Lists the epics associated with the theme.
You can create a new epic and associate it with this theme by selecting New

Stories

Lists the stories associated with the theme.
You can create a new story and associate it with this theme by selecting New

Test version form in Agile Development 2.0
Learn about the fields of the Test version form. Use this form to create and run tests for a story in
Agile Development 2.0.
Test Version Form
Fields

Description

Test

Unique name of the test.

Owner

Owner who created the test.

Version

Automatically generated version of the test.

State

Current state of the test.
• Draft: State of the test when it is created.
• Ready: State of the test when it is not editable. When the test has multiple
versions, only one test will be in Ready state at any one time
• Retired: State of the test when it is no longer used.

Short
description

Brief description about the test.

Add Step

Option to add step to a test.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2073


<!-- page 2074 -->
Test Version Form (continued)
Fields

Description

Run

Button used to run steps, which is displayed only when the test is in the Ready
state. See Run tests for a story in Agile Development 2.0.

Update

Option to update the details of a test version.

Ready

Option to change the state of the test version to ready.

Create New
Version

Option to create another version of the test.

Delete

Option to delete the test version.

Change step Option to change the order of a test step. Select the icon and drag a step to the
required location.
order ( )
Needs
Verification

Option to mark a test step for verification.

Delete a test

Option to delete a test step.

step (

)

Related topics
Track sprint progress in Agile Development 2.0

Related lists of a test version in Agile Development 2.0
Use the related lists in the Test version form for the actions that you need to perform on your
test in Agile Development 2.0, such as verifying the test results, viewing other associated test
versions and test sets.

Related list

Description

Other versions

Shows all the versions of a test.

Test Results

Shows the run results of each test version.

Test Sets

Shows related tests in a test set.

Related topics
Track sprint progress in Agile Development 2.0

Mobile experience for Agile Development 2.0
Track and update the status of your stories and scrum tasks of the current sprint from your
mobile device using the Agile Development v2 mobile app.
With the Agile Development v2 mobile app, you track sprints for the assignment groups that you
are a part of. From your mobile device, you can do the following operations for the current sprint:
• View the status and details of stories and scrum tasks from the assignment groups that you are
a part of.
• Edit and update the details of stories and scrum tasks.
• Create scrum tasks for a story.
• Add work notes and attachments to a story or scrum task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2074


<!-- page 2075 -->
• Collaborate with other stakeholders on a story or scrum task.
• Receive mobile notifications when notes are added to your story or scrum task.

Install Agile Development v2
Install the Agile Development v2 mobile app (sn_store_agile_mob) from ServiceNow Store.

Before you begin

Role required: admin

Procedure
1. Navigate to ServiceNow Store

.

2. In ServiceNow Store, search for Agile Development v2.
3. Click the application tile.
You can view detailed information about the application.

Note: Consider reading the Other Requirements and Dependencies sections, as
applicable.
4. Click Request App and enter your Now Support login credentials.
5. Click Buy.
6. Enter the Instance Name and Reason for the Instance, and click Validate Instance.
7. Click Request.
You receive an email with detailed installation instructions.
8. Log in to the instance on which you want to install the Agile Development.
9. Navigate to System Applications > Applications.
10. Locate the application, select it, and click Install.

What to do next

Get started with Agile Development v2 mobile app
.

Get started with Agile Development v2 mobile app
Access the Agile Development mobile app to track your sprints, stories, and tasks.

Before you begin
• Download the Mobile Agent mobile app from App Store (iOS) or Google Play Store (Android).
• Install Agile Development v2 on your ServiceNow instance.
• Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2075


<!-- page 2076 -->
Procedure
1. Log in with your ServiceNow instance address on the Mobile Agent app on your mobile device
in one of the following ways:

Existing user
◦ If you installed the Agile Development v2
mobile app on an instance that you already
use in the Mobile Agent app, refresh the
app to see Agile 2.0 as an applet launcher.
◦ If you installed the Agile Development
mobile v2 app on a different instance:
a. Log out by tapping Settings > Log out.
b. Tap the add icon ( ) and log in with
your new ServiceNow instance address.
New user
a. Enter the instance address in one of the
following two ways:
▪ Type the instance address in the
instance address field.
▪ If your administrator provided you with a
QR code, tap the QR icon (
the QR code.

), and scan

b. Tap Save and log in.
2. Log in using your user name and password.
3. Tap the Agile Development v2 icon (

) to start tracking your sprints, stories, and scrum tasks.

What to do next
Go to

• Managing stories on Agile Development v2 mobile app.
• Managing scrum tasks on Agile Development v2 mobile app.

Managing stories on Agile Development v2 mobile app
View, edit, and update the details of stories assigned for the current sprint on your mobile device.
On your mobile device, open the Mobile Agent app and navigate to Agile Development v2.
Perform the following actions with the role of scrum_product_owner, scrum_team_member, or
scrum_master.
Tracking stories on Agile Development v2
From your mobile device, track all stories of an assignment group including the stories that are
assigned to you from multiple assignment groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2076


<!-- page 2077 -->
All stories of an assignment group
Steps

Mobile User Interface

1. In the Sprint Tracking applet, tap See All.
2. Tap the name of an assignment group to
open it.
3. Tap All Stories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2077


<!-- page 2078 -->
Stories assigned to you from an assignment group
Steps

Mobile User Interface

1. In the Sprint Tracking applet, tap See All.
2. Tap the name of an assignment group to
open it.
3. Tap My Stories.

Note: The My Stories tab
appears only to the users of role
scrum_team_member.

All stories assigned to you
Steps

Mobile User Interface

The My Stories applet shows all stories that
are assigned to you for the current sprint, from
all assignment groups.
• To view all stories as cards, swipe left in the
applet.
• To view the list of all stories, tap See All on
the applet.

Note: The My Stories applet
appears only to the users of role
scrum_team_member.
Blocked stories
Steps

Mobile User Interface

The Blocked Stories applet shows all stories
that are blocked.
• To view all blocked stories as cards, swipe
left in the applet.
• To view the list of all blocked stories, tap See
All on the applet.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2078


<!-- page 2079 -->
Blocked stories (continued)
Steps

Mobile User Interface

Note: The Blocked Stories
applet appears only to the
users of role scrum_master and
scrum_product_owner.
Swipe left on a story record to find quick actions that enable you to add comments to the story or
update its state.

Tap a story to view more details. For example, you can view the epic, acceptance criteria,
description, and so on.
Update a story on Agile Development v2
Edit and update the details of your Agile Development 2.0 stories from your mobile device.

Before you begin

Role required: scrum_product_owner, scrum_team_member, or scrum_master

Procedure
1. Navigate to a story from the Sprint Tracking or My Stories applet.
2. Tap the story to open it.
3. To update the story details:
a. Tap Details and then tap Edit.
b. Edit the fields that you want to update.
You can edit the fields for state, short description, story points, assigned to, priority, and the
sprint to which the story belongs.
c. Tap Submit.

Note: If you update the sprint of the story to a future sprint, this story no longer appears
in the app unless that sprint starts. Ensure that the state of the sprint is current.
4. To add work notes or attachments to the story:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2079


<!-- page 2080 -->
a. Tap Activity.
b. Choose the activity that you want to perform.
Available options include adding work notes, files, pictures, and so on.

Managing scrum tasks on Agile Development v2 mobile app
View, edit, and update the details of scrum tasks that were created for the stories of the current
sprint on your mobile device.
On your mobile device, open the Mobile Agent app and navigate to Agile Development v2.
Perform the following actions with the role of scrum_product_owner, scrum_team_member, or
scrum_master.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2080


<!-- page 2081 -->
Tracking scrum tasks on Agile Development v2
From your mobile device, track all scrum tasks of an assignment group including the scrum tasks
assigned to you from multiple assignment groups.
All scrum tasks of an assignment group
Steps

Mobile User Interface

1. In the Sprint Tracking applet, tap See All.
2. Tap the name of an assignment group to
open it.
3. Tap All Scrum Tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2081


<!-- page 2082 -->
Scrum tasks assigned to you from an assignment group
Steps

Mobile User Interface

1. In the Sprint Tracking applet, tap See All.
2. Tap the name of an assignment group to
open it.
3. Tap My Scrum Tasks.

Note: The My Scrum Tasks tab
appears only to the users of role
scrum_team_member.

All scrum tasks assigned to you
Steps

Mobile User Interface

The My Scrum Tasks applet shows all scrum
tasks that are assigned to you for the current
sprint, from all assignment groups.
• To view all scrum tasks as cards, swipe left
in the applet.
• To view the list of all scrum tasks, tap See All
on the applet.

Note: The My Scrum Tasks applet
is visible only to the users of role
scrum_team_member.
Swipe left on a scrum task record to find quick actions that enable you to add comments to it or
update its state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2082


<!-- page 2083 -->
Tap a scrum task to view more details such as the task type, story, assigned to, description,
activity, and so on.
Create a scrum task on Agile Development v2
Add a scrum task for a story from the mobile app.

Before you begin

Role required: scrum_product_owner, scrum_team_member, or scrum_master

Procedure
1. Navigate to a story from the Sprint Tracking or My Stories applet.
2. Tap which story you want to add a new scrum task to.

3. Tap the more options icon (

on iOS) or (

on Android) and tap New Scrum Task.

4. On the form, fill in the fields.
New scrum task mobile form
Field

Description

Short Description

Brief description of the scrum task.

Description

Detailed description of the scrum task.

Planned Hours

Estimated number of hours to complete the
task.
A typical scrum task takes between 4 and 12
hours. If the task requires more than 12 hours,
consider breaking it down into multiple tasks.

Priority

Priority for the task.

Type

Type of work involved.

State

Current state of the scrum task. The default
state for a new scrum task is Draft.

5. Tap Submit
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2083


<!-- page 2084 -->
Note: Submit appears only if all the required fields are filled.

Update a scrum task on Agile Development v2
Edit and update the details of the scrum tasks of your stories from your mobile device.

Before you begin

Role required: scrum_product_owner, scrum_team_member, or scrum_master

Procedure
1. Navigate to a scrum task from the Sprint Tracking or My Scrum Tasks applet.
2. Tap the scrum task which you want to update the details of.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2084


<!-- page 2085 -->
3. To update the scrum task details:
a. Tap Details and then tap Edit.
b. Edit the fields that you want to update.
You can edit the fields of state, task short description, description, assigned to, actual hours,
and priority of the scrum task.
c. Tap Submit.
4. To add work notes or attachments to the scrum task:
a. Tap Activity.
b. Choose the activity that you want to perform.
Available options include adding work notes, files, pictures, and so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2085


