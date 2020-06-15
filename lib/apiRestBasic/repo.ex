defmodule ApiRestBasic.Repo do
  use Ecto.Repo, otp_app: :apiRestBasic,
    adapter: Ecto.Adapters.Postgres
  def allTest(ApiRestBasicWeb.User) do
    [
      %ApiRestBasicWeb.User {
        id: 1,
        name: "Joe",
        email: "joe@example.com",
        password: "topsecret",
        stooge: "moe"
      },
      %ApiRestBasicWeb.User {
        id: 2,
        name: "Anne",
        email: "anne@example.com",
        password: "guessme",
        stooge: "larry"
      },
      %ApiRestBasicWeb.User {
        id: 3,
        name: "Franklin",
        email: "franklin@example.com",
        password: "guessme",
        stooge: "curly"
      },
    ]
  end

  def getTest(module, id) do
    Enum.find(allTest(module), fn elem -> (elem.id == id) end)
  end
end
