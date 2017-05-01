# Iterations

<p class="short-description">'An Assignment may have one or more Iterations'</p>

Each Assignment can have many iterations which are connected with a form. A Lecturer creates Iterations for an Assignment, and Studens must submit peer evaluation forms for each Iteration. Each Iteration has its own PAForm and Project Evaluations.

## Attributes

Parameter | Type | Description
--------- | ------- | -----------
name | string | The name of the Unit.
start_date | Date | The date that the Iteration starts. It cannot be before the start_date of the Assignment.
deadline | Date | The date that the Iteration ends, and the deadline for submitting the PAForm and Project Evaluations. It cannot be after the end_date of the Assignment.
assignment_id | Integer | The id of the Iteration that the Iteration belongs to

## Relationships

<img src="images/erd_iteration.png" alt="Iteration Relationships">
