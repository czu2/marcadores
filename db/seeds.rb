# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Kind.destroy_all 

Kind.create(
    [
        {
            name: "Video",
        },
        {
            name: "Articulo",
        },
        {
            name: "Paper",
        },
        {
            name: "Fotografias",
        },
        {
            name: "Educativo",
        },
        {
            name: "Academico",
        },
        {
            name: "Adultos",
        },
        {
            name: "Niños",
        },
        {
            name: "Peliculas",
        },
        {
            name: "Documentales",
        },
        {
            name: "Animales",
        },
        {
            name: "Idiomas",
        },
        {
            name: "Ingles",
        },
        {
            name: "Frances",
        },
        {
            name: "Chile",
        },
        {
            name: "El Mundo",
        },
        {
            name: "Caricaturas",
        },
        {
            name: "El Universo",
        },
        {
            name: "Memes",
        },
        {
            name: "Grafico",
        },
        {
            name: "Redes Sociales",
        }
    ]
)

Subcategory.destroy_all 

Subcategory.create(
    [
        {
            name: "Noticias chilenas",
        },
        {
            name: "Noticias internacionales",
        },
        {
            name: "Memes chilenos",
        },
        {
            name: "Musica chilena",
        },
        {
            name: "Musica internacional",
        },
        {
            name: "Topicos educacionales",
        },
        {
            name: "Peliculas chilenas",
        },
        {
            name: "Peliculas Europeas",
        },
        {
            name: "Peliculas internacionales",
        },
        {
            name: "Documentales chilenos",
        },
        {
            name: "Documentales internacionales",
        },
        {
            name: "Arte chileno",
        },
        {
            name: "Arte Internacional",
        },
        {
            name: "Golf internacional",
        },
        {
            name: "Tradiciones chilenas",
        },
        {
            name: "Musica electronica",
        },
        {
            name: "Basketball USA",
        },
        {
            name: "Futbol chileno",
        },
        {
            name: "Deporte internacional",
        },
        {
            name: "deporte nacional",
        },
        {
            name: "Problemas con Redes Sociales",
        }
    ]
)


Bookmark.destroy_all
Bookmark.create(
    [
        {
            url: "www.lun.cl",
            status: 1
        },
        {
            url: "www.natgeo.org",
            status: 1
        },
        {
            url: "www.emol.cl",
            status: 1
        },
        {
            url: "www.cnn.com",
            status: 1
        },
        {
            url: "www.spotify.com",
            status: 1
        },
        {
            url: "www.vimeo.com",
            status: 1
        },
        {
            url: "www.uc.cl",
            status: 1
        },
        {
            url: "www.steam.com",
            status: 0
        },
        {
            url: "www.un.org",
            status: 0
        },
        {
            url: "www.espn.com",
            status: 0
        },
        {
            url: "www.golf.com",
            status: 0
        },
        {
            url: "www.ole.com.ar",
            status: 0
        },
        {
            url: "www.canal13.cl",
            status: 0
        },
        {
            url: "www.facebook.com",
            status: 0
        }
    ]
)



