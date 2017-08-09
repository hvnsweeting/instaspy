defmodule Instaspy do
  @moduledoc """
  Documentation for Instaspy.
  """

  @doc """
  Get number of posts by given username
  """
  def check(username) do
    {:ok, resp} = HTTPoison.get "https://www.instagram.com/#{username}/"
    [json_text] = Regex.run(~r/{.*}/, resp.body)
    {:ok, data} = Poison.decode(json_text)
    count = hd(data["entry_data"]["ProfilePage"])["user"]["media"]["count"]
    count
  end

  defp parse_args(args) do
    {_, [str], _} = OptionParser.parse(args)
    str
  end

  def main(args) do
    count = args |> parse_args |> check
    IO.puts count
  end
end
