defmodule DeliveryWeb.UsersJSON do
  alias Delivery.User

  def create(%{user: %User{} = user}) do
    %{
      message: "User Created!",
      user: user
    }
  end

  def show(%{user: %User{} = user}), do: %{user: user}
end
