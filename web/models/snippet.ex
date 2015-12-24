defmodule Treeshare.Snippet do
  use Treeshare.Web, :model

  schema "snippets" do
    field :title, :string
    field :body, :string
    field :public, :boolean, default: false

    timestamps
  end

  @required_fields ~w(title body public)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
