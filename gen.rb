
words = File.open('words.txt').readlines
tlds = File.open('tld.txt').readlines

def random(array)
	array[rand(array.length)]
end

if ARGV.first
	100.times do |x|
		puts "#{ARGV.first}.#{random(tlds).strip}"
	end
else
	100.times do |x|
		puts "#{random(words).strip}.#{random(tlds).strip}"
	end
end

