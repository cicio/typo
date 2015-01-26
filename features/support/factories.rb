require 'factory_girl'

FactoryGirl.define do
		factory :category do |cat|
			cat.id  1
			cat.name 'CatOne'
			cat.permalink 'Link One'
		  cat.keywords 'KeyOne'
			cat.description 'Description One'
	end
end
