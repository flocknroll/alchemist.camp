defmodule Challenge1 do

  @author "Florent"
  def ask_name do
    # Asks name
    name = IO.gets("What's your name? ")

    if String.trim(String.downcase(name)) == String.downcase(@author) do
      IO.puts("Wow, #{@author} is a superb name!")
    else
      IO.puts("Hello #{name}")
    end
  end
end
