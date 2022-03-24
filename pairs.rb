def find_pair(nums, target)
  l = 0; r = nums.length - 1

  while l < r do
    sum = nums[l] + nums[r]

    return [nums[l], nums[r]] if sum == target

    sum < target ? l += 1 : r -= 1
  end
end

puts(find_pair([-3, 0, 1, 3, 4], 5))
puts(find_pair([], 5))
