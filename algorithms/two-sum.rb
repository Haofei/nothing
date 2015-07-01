# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, index|
        if !hash[num]
            hash[num] = index
        end
        num2 = hash[target - num]
        if num2 && (num2 != index)
            return [num2 + 1, index + 1]
        end
    end
end