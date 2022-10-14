names = %w(Deneen
Lavinia
Serena
Ines
Amina
Shani
Lesli
Maura
Jacob
Johnathon
Janetta
Homer
Erik
Darcel
Fernande
Dusty
Roslyn
Annmarie
Enid
Scottie
Kacy
Clemencia
Tatiana
Leoma
Otha
Kiley
Maxima
Gerry
Garnet
Charissa
Maynard
Yaeko
Trinity
Marlin
Tifany
Royce
Eleonora
Shera
Judson
Shenita
Milissa
Mittie
Ryan
Prince
Cruz
Dannie
Barbera
Qiana
Naoma
Star  )

categories = %w(slow middle fast sub-zero)
names.reject!(&:blank?)

puts 'creating kitties...'
10000.times do
  CryptoKitty.create(
    name: names.sample,
    category: categories.sample,
    price: rand(1000..100000),
    image_url: "https://storage.googleapis.com/ck-kitty-image/0x06012c8cf97bead5deae237070f9587f8e7a266d/#{rand(1..400000)}.svg"
  )
  print '.'
end

puts 'setting random kitties as unavailable'
1000.times do
  CryptoKitty.find(rand(100..2000)).update!(available: false)
  print '.'
end
