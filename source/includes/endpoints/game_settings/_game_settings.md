# Game Settings

<p class="short-description">'Settings for the points of the game'</p>

An Assignment contains one GameSetting relation with lecturer-created settings abou the game.
The lecturer descides the amount of points that the students earn for various actions. These settings
apply to all Projects under the same Assignment.
There are default values set by the system, which can be customized or freely by the Lecturer.

## Attributes

Parameter | Type | Description
--------- | ------- | -----------
points_log | integer | Points earned for submitting a log.
points_log_first_of_day | integer | Points earned for submitting the first log of the day.
points_log_first_of_team | integer | Points earned for submitting a log before the rest of the team.
points_log_first_of_assignment | integer | Points earned for submitting a log before every other student in the all the Projects of the Assignment
points_peer_assessment | integer | Points earned for submitting a Peer Assessment
points_peer_assessment_first_of_day | integer | Points earned for ..
points_peer_assessment_first_of_team | integer | Points earned for submitting the Peer Assessment before everyone on the team.
points_peer_assessment_first_of_assignment | integer | Points earned for submitting the Peer Assessment before every other student in all the Projects of the Assignment
points_project_evaluation | integer | Points earned for submitting a Project Evaluation
points_project_evaluation_first_of_day | integer | Points earned for ...
points_project_evaluation_first_of_team | integer | Points earned for submitting a Project Evaluation before the rest of the Team.
points_project_evaluation_first_of_assignment | integer | Points earned for submitting a Project Evaluation before every other student in the all the Projects of the Assignment

