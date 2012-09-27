# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ethnicity.find_or_create_by_title("Chinese")
Ethnicity.find_or_create_by_title("South Asian (Indian, Pakistani, Sri Lankan,  Bangladeshi etc.)")
Ethnicity.find_or_create_by_title("Aboriginal North American (First Nations, Inuit, Metis)")
Ethnicity.find_or_create_by_title("African heritage")
Ethnicity.find_or_create_by_title("Filipino")
Ethnicity.find_or_create_by_title("Southeast Asian (Vietnamese, Cambodian, Malaysian, etc.)")
Ethnicity.find_or_create_by_title("Japanese")
Ethnicity.find_or_create_by_title("Korean")
Ethnicity.find_or_create_by_title("Arab")
Ethnicity.find_or_create_by_title("West Asian (Iranian, Afghan, etc.)")
Ethnicity.find_or_create_by_title("Latin American")
Ethnicity.find_or_create_by_title("White Caucasian")
Ethnicity.find_or_create_by_title("Other")
Ethnicity.find_or_create_by_title("Decline to answer")
