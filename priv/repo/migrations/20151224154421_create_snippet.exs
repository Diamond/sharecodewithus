defmodule Treeshare.Repo.Migrations.CreateSnippet do
  use Ecto.Migration

  def change do
    create table(:snippets) do
      add :title, :string
      add :body, :string
      add :public, :boolean, default: false

      timestamps
    end

  end
end
