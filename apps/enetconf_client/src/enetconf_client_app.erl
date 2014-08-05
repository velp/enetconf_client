-module(enetconf_client_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).
-export([start/0]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    enetconf_client_sup:start_link().

stop(_State) ->
    ok.

start() ->
    application:ensure_all_started(enetconf_client).
