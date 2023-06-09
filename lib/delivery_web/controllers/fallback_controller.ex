defmodule DeliveryWeb.FallbackController do
  use DeliveryWeb, :controller

  alias DeliveryWeb.ErrorJSON

  def call(conn, {:error, %{status: status, result: result}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorJSON)
    |> render("error.json", result: result)
  end
end
