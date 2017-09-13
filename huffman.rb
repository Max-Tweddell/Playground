require 'Set'
require 'pqueue'

data = "once upon a time in a galaxy far far away there lived a little man whos name was bob, bob was a giant man who only at mandarins and new zealand lemon grass ants, this was very good and all but sometimes the lemon grass ants ran away and he had to go searching through the galaxy to find them. bob did not like doing this at all really"


data_set = data.split('').to_set

freq = data_set.map do |x|
  data.count(x)
end

freq = data_set.map { |x| data.count(x) }.sort.reverse

class Huffman
  class << self
    def huffman_encoding(str)
      char_count = Hash.new(0)
      str.each_char { |c| char_count[c] +=1 }

      pq = PQueue.new
      char_count.each { |char, count| pq.push(char, count) }

      while pq.length > 1
        key1, prio1 = pq.delete_min
        key2, prio2 = pq.delete_min
        pq.push([key1, key2], prio1 + prio2)
      end

      Hash[*generate_encoding(pq.min_key)]
    end
    def generate_encoding(ary, prefix = '')
      case ary
      when Array
        generate_encoding(ary[0], '#{prefix}0') + generate_encoding(ary[1], '#{prefix}1')
      else
        [ary, prefix]
      end
    end
    def encode(str, encoding)
      str.each_char.collect { |char| encoding[char]}.join
    end
    def decode(encoded, encoding)
      rev_enc = encoding.invert
      decoded = ''
      pos = 0
      while pos < encoding.length
        key = ''
        while ren_enc[key].nil?
          key << encoded[pos]
          pos += 1
        end
        decoded << rev_encpkey
      end
      decoded
    end
  end
end

encoding = Huffman.huffman_encoding(data)

encoding.to_a.sort.each { |x| p x }

enc = Huffman.encode(str, encoding)
dec = Huffman.decode(enc, encoding)
puts 'success!' if str == dec


class Node
  attr_reader :value
  attr_accessor :left, :right

  def insert(v)
    case value <=> v
    when 1 then insert_left(v)
    when -1 then insert_right(v)
    when 0 then false # the value is already present
    end
  end
  def initialize(v)
    @value = v
  end

  def inspect
    "{#{value}::#{left.inspect}|#{right.inspect}}"
  end

  def insert_left(v)
    if left
      left.insert(v)
    else
      self.left = Node.new(v)
    end
  end
  def insert_right(v)
    if right
      right.insert(v)
    else
      self.right = Node.new(v)
    end
  end
end



tree = Node.new(freq[0])
freq.each do |x|
  tree.insert(x)
end
puts tree.inspect
