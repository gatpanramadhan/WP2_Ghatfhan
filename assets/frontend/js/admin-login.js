$(document).on("click", "#loginbutton", function (event) {
	event.preventDefault(); // Prevent default form submission behavior

	const email = $("#email").val();
	const password = $("#password").val();

	if (!email) {
		alert("Please Enter Email");
	} else if (!password) {
		alert("Please Enter Password");
	} else {
		const obj = {
			email: email,
			password: password,
		};

		$.post(BASE_URL + "adminlogin/login", obj)
			.done(function (resp) {
				const fb = JSON.parse(resp);
				if (fb.status === "true") {
					window.location.href = BASE_URL + "/admin";
				} else {
					alert("Username and password do not match");
				}
			})
			.fail(function (xhr, status, error) {
				alert(
					"Error occurred while processing your request. Please try again later."
				);
				console.error(xhr, status, error); // Log the error for debugging
			});
	}
});
