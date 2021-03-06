# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Kind.destroy_all
Subcategory.destroy_all
Bookmark.destroy_all

Kind.create!(
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
            name: "Chile",
        },
        {
            name: "El Mundo",
        },
        {
            name: "Caricaturas",
        },
        {
            name: "Universo",
        },
        {
            name: "Memes",
        },
        {
            name: "Redes Sociales",
        }
    ]
)

Subcategory.create!(
    [
        {
            name: "Noticias de Chile",
        },
        {
            name: "Noticias del Mundo",
        },
        {
            name: "Música chilena",
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
            name: "Tradiciones chilenas",
        },
        {
            name: "Musica electronica",
        },
        {
            name: "Deportes nacional",
        },
        {
            name: "Deporte internacional",
        },
        {
            name: "Problemas con Redes Sociales",
        }
    ]
)

Bookmark.create!(
    [
        {
            url: "www.lun.com",
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
            url: "www.espn.com",
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
