def sum(array)
  return array.inject(0) { |accum, i| accum + i }
end

def mean(array)
  return sum(array) / array.length.to_f
end

def sample_variance(array)
  m = mean(array)
  sum = array.inject(0) { |accum, i| accum + (i - m) ** 2 }
  return sum / (array.length - 1).to_f
end

def standard_deviation(array)
  return Math.sqrt(sample_variance(array))
end

def assert(expr, errorMessage)
  puts errorMessage unless expr
end

def test(result, expected)
  assert result == expected, "expected #{expected} but got #{result}"
end

data = [1, 2, 2.2, 2.3, 4, 5]

test(sum(data), 16.5)
test(mean(data), 2.75)
test(sample_variance(data), 2.151)
test(standard_deviation(data).round(10), 1.4666287874)
