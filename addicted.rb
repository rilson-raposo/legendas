require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pp'
#require 'active_record'

class Show
	def initialize (title,id)
		@title = title
		@id = id
	end
	
end


class Addic7ed
		
	def initialize
		
	end
	
	def read_shows
		shows = {}
		
		doc = Nokogiri::HTML(open('http://addic7ed.com'))
		doc.xpath('//select[@name="qsShow"]/option').each do |option|
			shows[option['value']] = option.children.text
		end		
	end
	
	shows.each do |key, value| {
				
	}

end

a = Addic7ed.new
a.read_shows