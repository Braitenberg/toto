defmodule Toto.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :password_digest, :string

    # VIRTUAL FIELDS
	field :password, :string, virtual: true
	field :password_confirmation, :string, virtual: true
    
    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :password_digest])
    |> validate_required([:email, :password_digest])
    |> unique_constraint(:email)
  end
end
