require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
  binding.pry

  projects = kickstarter.css("li.project.grid_4")
end

create_project_hash
