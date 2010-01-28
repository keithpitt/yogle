
File.open('tld.txt').readlines.each do |line|
	puts line.split('	').first
end
