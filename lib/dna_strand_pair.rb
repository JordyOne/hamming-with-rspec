class DnaStrandPair

  def initialize(strand_1, strand_2)
    @strand_1 = strand_1
    @strand_2 = strand_2
  end

#

  def hamming_distance
    hamming_distance = 0

    if @strand_1 >= @strand_2
      @strand_1.each_char do |letter|
        x = @strand_1.index(letter)
        if letter != @strand_2[x]
          hamming_distance = hamming_distance + 1
        end
      end

    elsif @strand_2 > @strand_1
      @strand_2.each_char do |letter|
        x = @strand_2.index(letter)
        if letter != @strand_1[x]
          hamming_distance = hamming_distance + 1
        end
      end
    end
    hamming_distance
  end
end



