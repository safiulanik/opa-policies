package app.rbac

default allow = false

allow {
	some i
	role = input.roles[i]

    action := data.roles[role][input.entity][input.action]
    
    action == true
}

user_is_admin {
	some i

	input.roles[i] == "admin"
}
