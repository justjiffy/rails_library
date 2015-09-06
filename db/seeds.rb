# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
language = ["English", "Multiple Translations Available", "French", "Multiple Translations Available", "Spanish", "Multiple Translations Available"]
living = [true, false]

authors = []

25.times do
	all_authors = Author.create ( {f_name: Faker::Name.first_name, 
		l_name:Faker::Name.last_name, 
		dob: Faker::Date.backward(10000), 
		deceased: living.sample } )

authors << all_authors

end


#TO DO - Update this so that the book model has a author_id row
50.times do 
	@all_books = Book.create ( {title: Faker::Book.title, 
		author_id: authors.sample.id, 
		publisher: Faker::Book.publisher, 
		copyright: Faker::Date.backward(10000), 
		language: language.sample, 
		isbn: Faker::Code.isbn, 
		desc: Faker::Lorem.paragraph })
end

