filename = IO.gets("File path? ") |> String.trim
what = IO.gets("What? (words, lines, chars) ") |> String.trim

rex = case what do
  "words" -> ~r/(\\n|[^\w']+)/
  "lines" -> ~r/(\n)/
  "chars" -> ~r/./
end

IO.inspect(rex)

body = File.read! filename
list = String.split(body, rex)
if what == "words" do
   Enum.filter(list, fn x -> x != "" end)
end

count = Enum.count(list)
IO.inspect(list)
IO.inspect(count)
