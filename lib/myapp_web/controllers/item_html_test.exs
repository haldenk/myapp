defmodule MyappWeb.ItemHTMLTest do
  use MyappWeb.ConnCase, async: true
  alias MyappWeb.itemHTML

  test "complete/1 returns completed if item.status == 1" do
    assert ItemHTML.complete(%{status: 1}) == "completed"
  end

  test "complete/1 returns empty string if item.status == 0" do
    assert ItemHTML.complete(%{status: 0}) == ""
  end
end
