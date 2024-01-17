# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
    {Title: "Spike Spiegel", Body: 27, },
    {Title: "Jet Black", Body: 36, },
    {Title: "Faye Valentine", Body: 77, },
    {Title: "Edward Wong Hau Pepelu Tivrusly 4", Body: 13,},
    {Title: "Ein", age: 2}
].map{|row| Hashie::Mash.new(row) }.each do |data|
    User.create!(
        name: data.name,
        age: data.age,
        birth: data.birth,
        note: data.note
        )
end