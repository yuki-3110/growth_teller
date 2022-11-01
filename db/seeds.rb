# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

purpose_names = ["起業", "転職", "昇給・昇格", "異動", "社内目標達成", "人間関係（マネジメント）", "メンタル" ]
purpose_names.each do |purpose_name|
  Purpose.create!(name: purpose_name)
end