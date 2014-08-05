REBAR=$(CURDIR)/rebar

run: compile
	ERL_LIBS=deps:apps erl +P 1000000 -sname enetconf_client -s enetconf_client_app

compile: get-deps
	$(REBAR) compile

get-deps:
	$(REBAR) get-deps
