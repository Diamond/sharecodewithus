defmodule Treeshare.Snippet do
  use Treeshare.Web, :model

  schema "snippets" do
    field :title,  :string
    field :body,   :string
    field :public, :boolean, default: false
    field :slug,   :string

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
    |> add_slug(params)
  end

  def add_slug(model, %{"body" => body, "title" => title}) do
    model
    |> put_change(:slug, make_slug(body, title))
  end
  def add_slug(model, :empty), do: model

  defp make_slug(body, title) do
    :crypto.hash(:md5, body <> title <> Integer.to_string(:os.system_time))
    |> Base.encode16
    |> String.downcase
  end
end
