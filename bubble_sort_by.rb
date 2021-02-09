def bubble_sort_by(arr)
  arr.length.times do
    arr.each_with_index do |_x, i|
      left = arr[i]
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[-1] != left && yield(arr[i], arr[i + 1]).positive?
    end
  end
  arr
end
p bubble_sort_by(%w[hi hello hey]) { |left, right|
  left.length - right.length
}
