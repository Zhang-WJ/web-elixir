defmodule CowboyExample.Router do
  @moduledoc """
  This module defines all the routes, params and handlers.
  This module is also the handler for the root route
  """
  alias CowboyExample.Router.Handlers.{Root, Greet}

  def routes do
    [
      {:_,
       [
         {"/", Root, []},
         {"/greet/:who", [who: :nonempty], Greet, []}
       ]}
    ]
  end
end
