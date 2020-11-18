puts "Cleaning DB.."
Plant.destroy_all
Garden.destroy_all

garden1 = Garden.create!(
  name:               "Nantes - Jardin des Plantes",
  banner_picture_url: "https://www.my-loire-valley.com/wp-content/uploads/2018/05/Claude_Ponti_au_jardin_des_plantes_de_nantesccJP-Dalbera.jpg"
)
garden2 = Garden.create!(
  name:               "Nantes - Parc de Procé",
  banner_picture_url: "https://jardins.nantes.fr/N/Image/RSoc/Photo/Parc-de-Proce-nantes.jpg"
)

plant1 = Plant.create!(
  name:        'Super plant',
  picture_url: 'https://cdn-s-www.estrepublicain.fr/images/8A04CB83-7EC8-467F-B554-56AE3B623C19/NW_raw/l-incroyable-hulk-qui-a-autant-de-force-et-de-resistance-que-l-agave-photo-patrice-saucourt-l-est-republicain-1575649036.jpg',
  garden:      garden1
)

puts "Seeds done!"
