# Users

<p class="short-description">'Students and Lecturers'</p>

A User can be either a Student or a Lecturer. The /users endpoint is used to handle account creation, and account updates. It also contais the functionality of reseting one's password, and confirming the account.

## Attributes

Parameter | Type | Description
--------- | ------- | -----------
first_name | string | The first name of the User
last_name | string | The last Name of the User
password | string | The User's password
type | Integer | Either 'Student' or 'Lecturer'

## Relationships

<img src="images/erd_user.png" alt="Unit Relationships">

