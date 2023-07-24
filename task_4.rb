# frozen_string_literal: true

@array = [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4]
@max_sum = 0
@max_sub_array = 0
@begin_arr = 0
@start_sub_arr = 0
@end_sub_arr = 0

def find_subarray
  @array.each_with_index do |item, index|
    @max_sum += item
    if @max_sum < item
      @max_sum = item
      @begin_arr = index
    end
    next unless @max_sub_array < @max_sum

    @max_sub_array = @max_sum
    @start_sub_arr = @begin_arr
    @end_sub_arr = index
  end
end

def print_subarray
  subarray = []
  while @start_sub_arr <= @end_sub_arr
    subarray << @array[@start_sub_arr]
    @start_sub_arr += 1
  end
  puts subarray.to_s
end

find_subarray
print_subarray
