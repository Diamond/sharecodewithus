defmodule Treeshare.SnippetController do
  use Treeshare.Web, :controller

  alias Treeshare.Snippet

  plug :scrub_params, "snippet" when action in [:create, :update]

  def index(conn, _params) do
    snippets = Repo.all(from s in Snippet, where: s.public == true, order_by: [desc: :inserted_at], limit: 25)
    render(conn, "index.html", snippets: snippets)
  end

  def new(conn, _params) do
    changeset = Snippet.changeset(%Snippet{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"snippet" => snippet_params}) do
    changeset = Snippet.changeset(%Snippet{}, snippet_params)

    case Repo.insert(changeset) do
      {:ok, snippet} ->
        conn
        |> put_flash(:info, "Snippet created successfully.")
        |> redirect(to: snippet_path(conn, :show, snippet.slug))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    snippet = Repo.get_by!(Snippet, slug: id)
    render(conn, "show.html", snippet: snippet)
  end
end
