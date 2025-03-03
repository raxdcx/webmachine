%% method will be an atom only for valid HTTP methods and a string otherwise,
%% see erlang:decode_packet documentation
-record(wm_log_data,
        {resource_module :: atom(),
         start_time :: tuple(),
         method :: atom() | string() | binary(),

         headers,
         peer,
         sock,
         path :: string(),
         version,
         response_code,
         response_length,
         end_time :: undefined | tuple(),
         finish_time :: undefined | tuple(),
         notes}).
-type wm_log_data() :: #wm_log_data{}.

-define(EVENT_LOGGER, webmachine_log_event).
