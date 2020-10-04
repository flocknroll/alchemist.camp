defmodule Challenge1 do
  def ask_name do
    # Asks name
    name = IO.gets("What's your name? ")

    if String.trim(String.downcase(name)) == "florent" do
      IO.puts("Wow, superb name!")
    else
      IO.puts("Hello #{name}")
    end
  end
end
