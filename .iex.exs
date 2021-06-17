# Make all functions in the module available to the IEx shell.
import_if_available(Peek.IEx.Prelude)

# Switch iex console to use :error log level by default
Logger.configure(level: :warn)

# TODO: (CORE-4212) Shouldn't need to explicitly disable appsignal and newrelic
# loggers in order to get all errors appearing on the console. The underlying
# issue appears to be a core elixir bug, where calling `Exception.message/1` on
# some `ErlangError` exceptions causes the logger process to crash.
:logger.remove_handler(:appsignal)
:logger.remove_handler(:new_relic)

# Continue with loading any user-specific IEx configuration.
import_file_if_available("~/.iex.exs")
