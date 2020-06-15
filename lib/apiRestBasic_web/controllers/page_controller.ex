defmodule ApiRestBasicWeb.PageController do
  use ApiRestBasicWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule ApiRestBasicWeb.TestController do
  use ApiRestBasicWeb, :controller

  def getTest(conn, _params) do
    users = ApiRestBasic.Repo.allTest(ApiRestBasicWeb.User)
    json(conn, users)
  end

  def show(conn, %{"id" => id}) do
    user = ApiRestBasic.Repo.getTest(ApiRestBasicWeb.User, String.to_integer(id))
    json(conn, user)
  end
end
