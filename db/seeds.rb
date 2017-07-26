# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Personalhigiene.create(descrpition: 'Assist with Shower/Bath ')
Personalhigiene.create(descrpition: 'Assist with Toileting')
Personalhigiene.create(descrpition: 'Assist with Dressing/Grooming')
Personalhigiene.create(descrpition: 'Incontinence Care')

Housekeeping.create(description: 'Change Bedclothes ')
Housekeeping.create(description: 'Laundry/Ironing ')
Housekeeping.create(description: 'Clean kitchen/Bathroom ')
Housekeeping.create(description: 'Vacuum/Dust/Rubbish Removal ')
Housekeeping.create(description: 'Meal Preparation ')



