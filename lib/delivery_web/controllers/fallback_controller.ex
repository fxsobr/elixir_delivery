defmodule DeliveryWeb.FallbackController do
  use DeliveryWeb, :controller
  alias Delivery.Error
  alias DeliveryWeb.ErrorJSON

  def call(conn, {:error, %Error{status: status, result: result}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorJSON)
    |> render("error.json", result: result)
  end
end
