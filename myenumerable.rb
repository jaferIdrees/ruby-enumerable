module MyEnumerable
  def all?
    result = true
    each { |item| result &= yield(item) }
    result
  end

def any?
  result = false
  each { |item| result |= yield(item) }
  result
end
end