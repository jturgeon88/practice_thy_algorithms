# Write a recursive method that returns the sum of all elements in an array
def rec_sum(nums)

  # base case:
  return 0 if nums.length < 1

  sum = nums[-1] + rec_sum(nums[0...-1])

  return sum
end

class Array

  def my_join(str = "")
  end

end

class Array

  # Write an Array#merge_sort method; it should not modify the original array.

  def merge_sort(&prc)

    # Declare a default proc in case none is given
    prc ||= Proc.new { |x, y| x <=> y }

    # Establish base case
    return self if count <= 1

    # declare midpoint (note that Ruby auto-rounds down)
    middle = count/2
    # Split array into left and right sides
    left = self.take(middle)
    right = self.drop(middle)

    # Inductive Step - recursively call merge_sort on each of the two sides
    left_sorted = left.merge_sort(&prc)
    right_sorted = right.merge_sort(&prc)

    # merge the two sorted sides using our helper method
    Array.merge(left_sorted, right_sorted, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged_array = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)  #left.first and right.first are passed in as our x and y
      when -1
        merged_array << (left.shift)  #left.shift returns the first element of the left array, AND "shifts" that element out of the array to the left
      when 0
        merged_array << (left.shift)
      when 1
        merged_array << (right.shift)
      end
    end
    # add the remainders of BOTH the left and the right (one of them will be empty)
    merged_array.concat(right).concat(left)
    # return the merged_array
    merged_array
  end
end

# Jumble sort takes a string and an alphabet. It returns a copy of the string
# with the letters re-ordered according to their positions in the alphabet. If
# no alphabet is passed in, it defaults to normal alphabetical order (a-z).

# Example:
# jumble_sort("hello") => "ehllo"
# jumble_sort("hello", ['o', 'l', 'h', 'e']) => 'ollhe'

def jumble_sort(str, alphabet = nil)
  
end

class Array

  #Write a monkey patch of quick sort that accepts a block
  def my_quick_sort(&prc)
    prc ||= Proc.new { |a, b| a <=> b }

    # base case:
    return self if count <= 1

    # Select the pivot
    pivot = self.first

    left = self[1..-1].select { |el| prc.call(el, pivot) == -1 }
    right = self[1..-1].select { |el| prc.call(el, pivot) != -1 }

    # Inductive step:
    left.my_quick_sort(&prc) + [pivot] + right.my_quick_sort(&prc)
  end

end
