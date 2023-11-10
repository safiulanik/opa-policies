package app.rbac

default allow = false

allow {
	user_is_admin
}

# this is a test comment
user_is_admin {

	some i

	input.roles[i] == "admin"
}
