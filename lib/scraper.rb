require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
#puts doc.css(".headline-26OIBN").text
puts doc.css(".title-oE5vT4").text
courses = doc.css(".title-oE5vT4")
courses.each do |course|
  puts course.text.strip
end