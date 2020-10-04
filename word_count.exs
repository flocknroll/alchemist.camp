filename = IO.gets("File path? ") |> String.trim
body = File.read! filename
count =
  String.split(body, ~r/(\\n|[^\w']+)/)
  |> Enum.filter(fn x -> x != "" end)
  |> Enum.count
IO.inspect(count)
