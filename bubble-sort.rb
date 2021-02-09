# frozen_string_literal: true
def bubble_sort(input_arr)
  input_arr.length.times do
    input_arr.each_with_index do |num, index|
      next unless input_arr[index + 1]

      input_arr[index], input_arr[index + 1] = input_arr[index + 1], input_arr[index] if num > input_arr[index + 1]
    end
  end
  input_arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])

