# How to launch this app?

* git clone

* bundle install

* rails db:migrate

* rails db:seed

* rails s

# Two important urls

* [localhost:3000](localhost:3000) - form for submitting new reports

* [localhost:3000/admin](localhost:3000/admin) - simple admin panel for reading/managing reports

# Database seeding

**rails db:seed** is set to delete all existing Reports and create 123 new valid and unread Reports. Every Report should look pretty authentic - **Faker Gem** is used for creating descriptions and emails.

# Search Service Object

File **app/services/search_reports.rb** contains **SearchReports** class responsible for searching, returning and marking Reports as read.