## Feeling

Feelings are part of project evaluation. In each evaluation, the user
has to select one of the predefined feelings. Each feeling also has
a value associated with it. Currently, feelings can have either values of
either 0 (a negative feeling), and a 1 (a positive feeling). However,
the value field accepts any integer, and it is possible to define
different values for each feeling, allowing them to be processed in
more complicated ways.

### Attributes

Parameter | Type | Description
--------- | ------- | -----------
id 			 | Integer | The id of the Feeling that will be used when creating a new Project Evaluation
name 		 | String | The name of the Feeling
value 		 | Integer | The value associated with the feeling. It is either 0 (for negative) or 1 (for positive feelings).
