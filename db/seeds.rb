# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Housekeeping.create(description: 'Change Bedclothes')
Housekeeping.create(description: 'Laundry/Ironing')
Housekeeping.create(description: 'Clean kitchen/Bathroom')
Housekeeping.create(description: 'Vacuum/Dust/Rubbish Removal')
Housekeeping.create(description: 'Meal Preparation')

Extra.create(description: 'Transport Client')
Extra.create(description: 'Errands / Shopping')
Extra.create(description: 'Companionship Activities')
Extra.create(description: 'Acompany Walking')
