
words = File.open('words.txt').readlines
tlds = File.open('tld.txt').readlines.map &:chomp

words.each do |line|

  w = line.chomp

  if w.length > 2
    first = w[0..(w.length-3)]
    last = w[(w.length-2)..(w.length)]

    if tlds.include?(last)
      puts "#{first}.#{last}"
    end
  end

end

