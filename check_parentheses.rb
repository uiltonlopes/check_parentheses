parentheses = gets

def check_parentheses(parentheses)
  check_array = []
  parentheses.chars.each do |parenthesis|
    case parenthesis
      when '('
        check_array.push '('
      when ')'
        if check_array.empty? || check_array.pop != '('
          return false
        end
    end
  end
  check_array.empty?
end

puts check_parentheses(parentheses)
