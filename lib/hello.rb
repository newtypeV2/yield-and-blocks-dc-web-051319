def hello_t(array)
#  if block_given?
#  counter = 0
#  while counter < array.length
#  yield array[counter]
#  counter+=1
#end
#array
#else
#  puts "Hey! No block was given!"
#end
if block_given?
array.collect {|x| yield(x)}
else
puts "Hey! No block was given!"
end

end

# call your method here!

hello_t(["Tim", "Tom", "Jim"]) { |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
}