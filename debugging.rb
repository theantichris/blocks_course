def with_debugging
  puts "Got here!"

  result = yield

  puts "Result was #{result}."
end

def with_expectation(expected_value)
  puts "Running test..."

  actual_value = yield

  if actual_value == expected_value
    puts "Passed."
  else
    puts "Failed."
    puts "Expected #{expected_value}, but got #{actual_value}."
  end
end

with_debugging do
  magic_number = (23 - Time.now.hour) * Math::PI
end

with_expectation(4) { 2 + 2 }
