IO.puts "Hello World"


linked_list = [1,2,3,4,5]


IO.inspect (linked_list ++ [6,7])

#concat
IO.puts "texto" <> " concatenado"

linked_list= [1,2,4]

case linked_list do
  [1,2,3]->
    IO.puts("match inteiro")
  _->
    IO.puts("whatever")
end


case {1, 2, 3} do
  {1, x, 3} when x > 0 ->
    IO.puts "Will match, as long as x is greater than 0"
  _->
    IO.puts "Will, if guard condition were not satisfied"
end

#anonymous function
f = fn
 x, y when x > 0 -> x + y #code runs when x is grater than 0
 x, y -> x * y #else from above
end

#functions also string formatting
IO.puts "Matches first rule: #{f.(1, 3)}"
IO.puts "Matches else: #{f.(-1, 3)}"


cond do
 2 + 2 == 5 ->
   IO.puts "This is never true"
 2 * 2 == 3 ->
   IO.puts "Nor this"
 true ->
   IO.puts "This is always true (equivalent to else)"
end

if true do
  a = 1 + 2
  a + 10
end

key_list = [{:a, 1}, {:b, 2}]


IO.inspect [{:Z,0}] ++ key_list ++ [{:c,3}] #adds key,item pair to list
