defmodule Friends.Distribuor do
  use Ecto.Schema

  schema "distributors" do
    field :name, :string
    belongs_to :movie, Friends.Movie
  end
end