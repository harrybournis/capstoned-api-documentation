# Project Evaluations

<p class="short-description">'Students and Lecturers evaluate the Project's progress</p>

Twice per iteration, Students and Lecturers must evaluate the Progress of the Project. The can give their opinion on two aspects of the Project, the perceived percentage of completion and how they feel about the Project. This data will be used to calculate the project_health and other statistics.

## Attributes

Parameter | Type | Description
--------- | ------- | -----------
user_id | Integer | The id of the User (Student or Lecturer) making the evaluation
project_id | Integer | The id of the Project that is evaluated
iteration_id | Integer | The id of the Iteration, for which the Project is evaluated
date_submitted | Date | The date that the evaluation was submitted. Autocompleted by the server.
percent_complete | Integer | A number from 0 to 100 that shows the perceived percentage of completion of the Project
feeling_id | Integer | The id of the Feeling that represents how the User feels about the Project

## Relationships

<img src="images/erd_project_evaluation.png" alt="Project Evaluation Relationships">
