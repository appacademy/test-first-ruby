# # Array Extension
#
# # Topics
#
# * objects, methods, classes
# * reopening classes

require "14_array_extensions" # we don't call it "array.rb" since that would be confusing

describe Array do
  describe "#sum" do
    it "has a #sum method" do
      expect([]).to respond_to(:sum)
    end

    it "should be 0 for an empty array" do
      expect([].sum).to eq(0)
    end

    it "should add all of the elements" do
      expect([1,2,4].sum).to eq(7)
    end
  end

  describe "#square" do
    it "does nothing to an empty array" do
      expect([].square).to eq([])
    end

    it "returns a new array containing the squares of each element" do
      expect([1,2,3].square).to eq([1,4,9])
    end
  end

  describe "#square!" do
    it "squares each element of the original array" do
      array = [1,2,3]
      array.square!
      expect(array).to eq([1,4,9])
    end
  end

  describe "#my_uniq!" do
    it "returns the unique elements, in the order they first appeared" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
    end
  end

  describe "two_sum" do
    it "finds all pairs of positions where the elements at those positions sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4],[2,3]])
    end
  end

  describe "median" do
    it "finds the middle item of an array with an odd number of integers" do
      expect([4, 2, 1].median).to eq(2)
    end
    it "finds the average of the middle two items of an array with an even number of integers" do
      expect([4, 5, 2, 1].median).to eq(3.5)
    end
    it "finds the average of the middle two items of an array with an even number of integers" do
      expect([4, 5, 7, 1].median).to eq(6)
    end
  end

  describe "my_transpose" do
    it "converts between the row-oriented and column-oriented representations " do
      matrix = [
          [0, 1, 2],
          [3, 4, 5],
          [6, 7, 8]
      ]

      expect(matrix.my_transpose).to eq(
                                         [[0, 3, 6],
                                          [1, 4, 7],
                                          [2, 5, 8]]
                                     )
    end
    it "converts between the row-oriented and column-oriented representations " do
      matrix2 = [
          [0, 1, 2, 3],
          [4, 5, 6, 7],
          [8, 9, 10, 11]
      ]

      expect(matrix2.my_transpose).to eq(
                                         [[0, 4, 8],
                                          [1, 5, 9],
                                          [2, 6, 10],
                                          [3, 7, 11]]
                                     )
    end
  end
end
