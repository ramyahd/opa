package example.input

default allow=false



allow
{
	server := input.servers[_]
    server.id == "alice"
    server.branch[_] =="master"
}


allow
{
	server := input.servers[_]
    server.id == "alice"
    server.branch[_] =="feature"
}


