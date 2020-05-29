defmodule Toto.Accounts.Encryption do
  alias Comeonin.Bcrypt
  alias Toto.Accounts.User

  def hash_password(password) do: Bcrypt.haspwsalt(password)

  def validate_password(%User{} = user, password), do: Bcrypt.check_pass(user, password)
end
