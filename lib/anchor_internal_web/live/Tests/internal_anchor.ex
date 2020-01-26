defmodule AnchorInternalWeb.Tests.InternalAnchor do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <h1><%= "Testing Internal Anchor Links" %></h1>
    <a href="#section-1">Section 1</a> |
    <a href="#section-2">Section 2</a> |
    <a href="#section-3">Section 3</a> |
    <div id="section-1" style="border-style: solid; height: 1000px; margin-top: 10px;">
      Section 1
    </div>
    <div id="section-2" style="border-style: solid; height: 1000px; margin-top: 10px;">
      Section 2
    </div>
    <div id="section-3" style="border-style: solid; height: 1000px; margin-top: 10px;">
      Section 3
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
