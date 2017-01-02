# Logs

<p class="short-description">'A Student logs their activity during the Project'</p>

Students must log their activity regularly for a Project, in order to prove that they are working on the Project. The logs can influence a Project's health.

## Attributes

Parameter | Type | Description
--------- | ------- | -----------
date_worked | Integer | The date that the Student did the work. Should an Integer in Unix Time.
date_submitted | Integer | The date that the submission was made. It is autocompleted by the System in order to assure its integrity. Should an Integer in Unix Time.
time_worked | Integer | The time that the Student spent working on the `date_worked`. Should an Integer in Unix Time.
stage | string | The stage of the Project that the user was working on. Could be 'Analysis', 'Design', 'Implementation' or any other arbitrary stage.
text | string | Free text that elaborates on the work done.

<aside class="warning">Date attributes like date_worked, date_submitted and time_worked should be provided as Unix Time, meaning an Integer "defined as the number of seconds that have elapsed since 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970"</aside>

## Relationships

<img src="images/erd_logs.png" alt="Logs Relationships">
