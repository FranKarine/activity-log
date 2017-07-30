# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Personalhigiene.create(descrpition: 'Assist with Shower/Bath ')
Personalhigiene.create(descrpition: 'Assist with Toileting')
Personalhigiene.create(descrpition: 'Assist with Dressing/Grooming')
Personalhigiene.create(descrpition: 'Incontinence Care')

Housekeeping.create(description: 'Change Bedclothes ')
Housekeeping.create(description: 'Laundry/Ironing ')
Housekeeping.create(description: 'Clean kitchen/Bathroom ')
Housekeeping.create(description: 'Vacuum/Dust/Rubbish Removal ')
Housekeeping.create(description: 'Meal Preparation ')

Extra.create(description: 'Transport Client ')
Extra.create(description: 'Errands / Shopping ')
Extra.create(description: 'Companionship Activities ')
Extra.create(description: 'Acompany Walking ')

puts 'Creating default users...'

admin = User.find_or_create_by!(email: "admin@homeinstead.ie") do |user|
  user.password = "123456"
  user.password_confirmation = "123456"
  user.admin!
end
puts 'CREATED admin USER: ' << admin.email

customer = User.find_or_create_by!(email: "customer@homeinstead.ie") do |user|
  user.password = "123456"
  user.password_confirmation = "123456"
  user.customer!
end
puts 'CREATED customer USER: ' << customer.email

caregiver = User.find_or_create_by!(email: "caregiver@homeinstead.ie") do |user|
  user.password = "123456"
  user.password_confirmation = "123456"
  user.caregiver!
end
puts 'CREATED caregiver USER: ' << caregiver.email
