require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def get_page 
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
  #   doc.css(".posts-holder").each do |post| 
  #     course = Course.new 
  #     course.title = post.css("h2").text
  #     course.schedule = post.css(".date").text
  #     course.description = post.css("p").text
  #   binding.pry
  # end
  end
  
  def get_courses 
<<<<<<< HEAD
    self.get_page.css(".posts-holder")
=======
    self.get_page.css(".post")
>>>>>>> bbe36adf5179c4475be4ce1b884b467428a51996
    #binding.pry
  end
  
  def make_courses 
    self.get_courses.each do |post|
      course = Course.new 
<<<<<<< HEAD
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
=======
      post.title = post.css("h2").text
      post.schedule = post.css(".date").text
      post.schedule = post.css("p").text
>>>>>>> bbe36adf5179c4475be4ce1b884b467428a51996
    end
  end
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end

Scraper.new.print_courses

