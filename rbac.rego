package app.rbac

default allow = false

allow {
	some role
	input.roles[role]

	entity := data.roles[role].entities[input.entity]
	some action
	entity[action] == input.action
}

user_is_admin {

	some i

	input.roles[i] == "admin"
}
