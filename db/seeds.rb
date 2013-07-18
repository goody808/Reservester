# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Catagory.delete_all		

Catagory.create!([
{name: 'Italian'},
{name: 'Chinese'},
{name: 'Japanese'},
{name: 'Pizza'},
{name: 'Mexican'},
{name: 'Mediteranean'},
{name: 'Buritto'},
{name: 'Fast Food'},
{name: 'Diner'},
{name: 'Soups'},
{name: 'Seafood'}])