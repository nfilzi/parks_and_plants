puts "Cleaning DB.."
Garden.destroy_all

garden1 = Garden.create(
  name:               "Nantes - Jardin des Plantes",
  banner_picture_url: "https://www.my-loire-valley.com/wp-content/uploads/2018/05/Claude_Ponti_au_jardin_des_plantes_de_nantesccJP-Dalbera.jpg"
)
garden2 = Garden.create(
  name:               "Nantes - Parc de Procé",
  banner_picture_url: "https://jardins.nantes.fr/N/Image/RSoc/Photo/Parc-de-Proce-nantes.jpg"
)

puts "Seeds done!"
