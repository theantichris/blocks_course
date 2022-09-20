def progress
  0.step(100, 10) do |x|
    yield(x)
  end
end

progress { |percent| puts percent }
