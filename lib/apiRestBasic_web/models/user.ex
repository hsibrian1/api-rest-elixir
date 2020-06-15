defmodule ApiRestBasicWeb.User do
  @derive Jason.Encoder
  defstruct [:id, :name , :email , :password, :stooge]
end
