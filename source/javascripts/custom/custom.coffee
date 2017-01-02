@lecturerSelected = () ->
	$body = document.getElementsByTagName("BODY")[0]
	$body.classList.remove "student-mode"
	$body.classList.add "lecturer-mode"

@studentSelected = () ->
	$body = document.getElementsByTagName("BODY")[0]
	$body.classList.remove "lecturer-mode"
	$body.classList.add "student-mode"
