# Units

<p class="short-description">'Units contain assignments and projects'</p>

Units are the first resource that a Lecturer must create before they can start using the system. Units contain Assignments contain Projects. However, due to the fact that the Assignement feature is mostly hidden from the User, most of the times it will appear like a Unit has many Projects. A Unit also belongs to Department. Units can be archived by the Lecturer after their projects have been completed, and will thus not appear on the GET /units request.

## Attributes

Parameter | Type | Description
--------- | ------- | -----------
name | string | The name of the Unit.
code | string | The code that identifies the Unit. It doesn't have to be unique
semester | string | The Semester that the Unit takes place. example: 'Autumn' or 'Spring'
year | Integer | The year that the Unit takes place
department - name | string | The name of the Unit's Department
department - university | string | The name of the Department's University
archived_at | date | The date that the Unit was archived. Completed by the system upon archival.

## Relationships

<img src="images/erd_unit.png" alt="Unit Relationships">
