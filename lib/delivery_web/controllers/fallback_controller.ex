defmodule DeliveryWeb.FallbackController do
  use DeliveryWeb, :controller

  alias DeliveryWeb.ErrorJSON

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ErrorJSON)
    |> render("400.json", result: result)
  end
end
