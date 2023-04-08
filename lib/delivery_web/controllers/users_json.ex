defmodule DeliveryWeb.UsersJSON do
  alias Delivery.User

def create(%{user: %User{} = user}) do
  %{
    message: "User Created!",
    user: user
  }
end
end
