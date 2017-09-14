require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  @url = 'http://learn-co-curriculum.github.io/site-for-scraping/courses'

  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def get_courses
    # #course-grid article
    doc = Nokogiri::HTML(@url)
    courses = doc.css('#course-grid article')
  end
end
