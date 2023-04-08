defmodule Delivery.Users.Delete do
  alias Ecto.UUID
  alias Delivery.{Error, Repo, User}

  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, Error.build_user_not_found_error()}
      {:ok, uuid} -> delete(uuid)
    end
  end

  defp delete(id) do
    case Repo.get(User, id) do
      nil -> {:error, Error.build_user_not_found_error()}
      user -> Repo.delete(user)
    end
  end
end
