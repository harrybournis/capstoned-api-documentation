# Assignments

<p class="short-description">'An Assignment belongs to Unit and has many Projects'</p>

Assignments belong to Units and have many teams of Students. A Lecturer creates a Assignment, and Students undertake a assignments by spliting themselves into teams. A Assignments can have many Iterations, for each of which the Students are expected to complete peer assessments.

## Attributes

Parameter | Type | Description
--------- | ------- | -----------
name | string | The name of the Assignment.
start_date | DateTime | The Date that the Assignment started
end_date | DateTime | The Date that the Assignment ended
unit_id | Integer | The id of the Unit that the Assignment belongs to
lecturer_id | Integer | The id of the Lecturer that the Assignment belongs to

## Relationships

<img src="images/erd_assignment.png" alt="Assignment Relationships">
