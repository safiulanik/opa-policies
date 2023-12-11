package app.rbac

import future.keywords.in
import future.keywords.if

default allow := false

allowed if is_superadmin
allowed if allow_role_user

is_superadmin {
    some i
    role := data.roles[i]
    role["metadata"]["name"] == "superadmin"
    i in input.roles
}

allow_role_user {
	some i
	role := input.roles[i]
    input.action == data.roles[role]["access"][input.namespace]["root"][_]
}
