# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


nam = ["Albert","Leonardo","Archimedes","Faraday","Nikola","Curie","Planck","Newton","Bohr", "Goldstein", "Chadwick", "Rutherford", "Ernest", "Heisenberg", "Bose", "Mendel", "Watson", "Crick"]

nam.each do |c|
    4.times do |i|
        User.create(name:"#{c+i.to_s}", phone:"9534578902", email:"#{c+i.to_s}@gmail.com", dob:"18 Dec 2023", username:"user_#{c+i.to_s}", password_digest:"Abcd1234/", bio:"Lorem ipsum dolor sit, amet compositis cumanum defuturum, exquisitis inveniri migrare opes tum videretur. Alienae consule imperii ineruditus, ob prodesset provocarem referta venandi. Accommodare bono corrupti cura geometria horrent opinionum philosophis placebit privamur probo tua. Abest aliud contineri displicet, inportuno inveniri", location:"Indore, India", website:"https://www.#{c+i.to_s}.com", user_normal:true)
    end
end

#rails db:seed
#Run the above command to seed the data into your database


