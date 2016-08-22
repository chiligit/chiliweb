defmodule Chiliweb.Plugs.Locale do
  import Plug.Conn
  @moduledoc false

  @locales ["hu", "en"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, _default) when loc in @locales do
    assign(conn, :locale, loc)
  end

  def call(conn, default), do: assign(conn, :locale, default)
end