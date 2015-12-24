defmodule Treeshare.Repo.Migrations.AddSlugToSnippets do
  use Ecto.Migration

  def change do
    alter table(:snippets) do
      add :slug, :string
    end
  end
end
