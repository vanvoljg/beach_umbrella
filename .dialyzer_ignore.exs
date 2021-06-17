[
  # Covered by excluding deps from plt list in mix.exs
  # ~r/^.+:call The function call will fail\.$/,
  # ~r/^.+:callback_type_mismatch Callback mismatch for @callback .+? in .+? behaviour\.$/,
  # ~r/^.+:pattern_match The pattern can never match the type\.$/,
  # ~r/^.+:unused_fun Function .+? will never be called\.$/,

  # Functions/callbacks/types missing due to temporarily ignored deps in mix.exs.
  ~r/^.+:callback_info_missing Callback info about the Absinthe\..+? behaviour is not available\.$/,
  ~r/^.+:callback_info_missing Callback info about the Conduit\..+? behaviour is not available\.$/,
  ~r/^.+\.ex:0:unknown_function Function Absinthe\..+? does not exist\.$/,
  ~r/^.+\.ex:0:unknown_function Function Conduit\..+? does not exist\.$/,
  ~r/^.+\.ex:0:unknown_function Function Stripe\..+? does not exist\.$/,
  ~r/^.+\.ex:\d+:unknown_type Unknown type: Absinthe\..+?\.$/,
  ~r/^.+\.ex:\d+:unknown_type Unknown type: Conduit\..+?\.$/,
  ~r/^.+\.ex:\d+:unknown_type Unknown type: Stripe\..+?\.$/,

  # Conduit DSL causes some issues. :(
  ~r/^.+router\.ex:\d+:no_return Function __checks__\/0 has no local return\.$/,
  ~r/^.+broker\.ex:\d+:no_return Function receives\/2 only terminates with explicit exception\.$/,

  # Phoenix mixin includes code that doesn't always get called
  ~r/^.+view\.ex:\d+:unused_fun Function render_template\/2 will never be called\.$/,

  # Braintree fails because typespecs don't include hackney errors:
  # https://github.com/sorentwo/braintree-elixir/pull/58
  ~r/^.+\/braintree_transactor\.ex:\d+:guard_fail The guard clause can never succeed\.$/,
  ~r/^.+\/braintree_transactor\.ex:\d+:pattern_match_cov The pattern variable _other_error@1 can never match.+$/,

  # earmark introduced an error in 1.4.5:
  # https://github.com/pragdave/earmark/issues/347
  ~r/^:0:unknown_function Function Earmark.HtmlRenderer.render_code\/1 does not exist\.$/,

  # postgrex + OTP-24 started showing this, not sure why:
  ~r/^.+postgrex.+\.ex:\d+:improper_list_constr List construction \(cons\) will produce an improper list, because its second argument .+\.$/,

  # OTP-24 ¯\_(ツ)_/¯
  ~r/^.+\.ex:\d+:app_call The call .+ requires that .+ is of type atom\(\), not .+$/,
  ~r/^.+\.ex:\d+:app_call Module or function to apply is not an atom in .+$/
]
