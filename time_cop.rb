require 'timeout'

def try_with_timeout(limit)
  begin
    Timeout.timeout(limit) do
      yield
    end
  rescue => Timeout::Error
    puts "Took too long!"
  end
end

try_with_timeout(2.0) do
  sleep 1.0
  puts "That was refreshing..."
end

try_with_timeout(2.0) do
  sleep 3.0
  puts "Yawn..."
end

# Timeout.timeout(2.0) do
#   sleep 3.0
#   puts "That was refreshing..."
# end
