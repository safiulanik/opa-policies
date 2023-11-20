package app.rbac

default allow = false

allow {
	some i
	role = input.roles[i]

    	entity := data.roles[role].entities[input.entity]

    	some action
	entity[action] == input.action
}

user_is_admin {

	some i

	input.roles[i] == "admin"
}
