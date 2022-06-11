# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movie.first)

# USUARIOS!
puts 'Creating users...'
User.destroy_all
admin = User.new(
user_name: 'Maravoly',
email: 'maravoly@gmail.com',
password:"qwertyuiop",
admin: true  
)
# admin.skip_confirmation!
admin.save!
puts 'users created!!!'

# NACIONALIDADES!
puts 'creando nacionalidades'

Nationality.destroy_all

Nationality.create([
    {name: 'Austria', description: 'una description opcional', flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1654715233/banderas/1_tkrhm6.png'},
    {name: 'Bélgica', description: 'una description opcional', flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1654715233/banderas/2_efkcbj.png'},
    {name: 'Bulgaria', description: 'una description opcional', flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1654715233/banderas/3_azoxbb.png'},
    {name: 'Croacia', description: 'una description opcional', flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1654715233/banderas/4_hnbmfp.png'},
    {name: 'Chipre', description: 'una description opcional', flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1654715233/banderas/5_ou3wh5.png'},
    {name: 'Checoslovaquia', description: 'una description opcional', flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1654715233/banderas/6_rdy5dk.png'},
    {name: 'Dinamarca', description: 'una description opcional', flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1654715234/banderas/7_imxj8h.png'},
    {name: 'Estonia', description: 'una description opcional', flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1654715234/banderas/8_aupcr7.png'},
    {name: 'Estados Unidos', description: 'una description opcional', flag_img: 'https://res.cloudinary.com/maravoly/image/upload/v1654817578/banderas/15_ofxuqj.png'}
])
puts 'nacionalidades creadas!!!'

puts 'creando series de tv...'
TvShow.destroy_all

TvShow.create!(
    [
        { 
            name: 'Capitán América: El primer vengador',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654829723/marvel/1_zwz0um.png',
            summary: 'Steve Rogers es un chico enclenque que ha sido rechazado en varias ocasiones al intentar alistarse para luchar contra los nazis durante la II Guerra Mundial. Un día recibe la oportunidad de someterse a un experimento que, en su caso, sale a la perfección. Tras someterse a un duro entrenamiento, Steve recibe su primera misión como Capitán América.',
            release_date: '2022-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Capitana Marvel',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654829725/marvel/2_dwu3tp.png',
            summary: 'Historia de orígenes de Carol Danvers, integrante de una raza de nobles guerreros que descubre quién es realmente tras su llegada a la Tierra. En nuestro planeta se verá envuelta en una terrible guerra entre dos razas alienígenas, luchando junto a un reducido grupo de aliados.',
            release_date: '2019-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Iron Man',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831663/marvel/3_dklr36.png',
            summary: 'Tony Stark es multimillonario especializado en la fabricación de armas que tendrá que hacer frente a su turbio pasado después de sufrir un accidente. De hecho, llega a ser secuestrado, pero tras lograr escapar, iniciará su andadura con el legendario hombre de hierro.',
            release_date: '2008-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'El increíble Hulk',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831663/marvel/4_ojbbq5.png',
            summary: 'El científico Bruce Banner está dispuesto a lo que sea por dar con un antídoto que le permita librarse de su temible alter ego. Sin embargo, su amor por Betty Ross es tan fuerte que decide volver a la civilización pese a que está siendo perseguido por el ejército. Todo se complica aún más cuando un agente de la KGB se expone a una dosis de radicación aún mayor de la que le convirtió a él en Hulk.',
            release_date: '2008-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Thor',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831663/marvel/5_nyyagv.png',
            summary: 'La imprudencia de Thor, un guerrero arrogante, desata una guerra, lo que lleva a Odín, su padre, a desterrarle a la Tierra con el objetivo de que descubra el verdadero sentido de la humildad. Lo que quizá nadie esperaba es que un temible villano envíe a las fuerzas más oscuras de Asgard al mismo planeta, lo cual obligará a Thor a descubrir qué es lo que hace falta para ser un héroe de verdad.',
            release_date: '2011-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Los Vengadores',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831663/marvel/6_do2vfe.png',
            summary: 'La llegada de un enemigo inesperado pone en peligro el futuro de nuestro planeta y sus habitantes, lo cual lleva a Nick Fury, director de SHIELD, a solicitar la ayuda de todos los superhéroes, quienes tendrán que luchar en equipo por el bien mayor.',
            release_date: '2012-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Guardianes de la Galaxia',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831664/marvel/7_v83liu.png',
            summary: 'El aventurero Peter Quill se verá perseguido por un temible cazarrecompensas después de robar una esfera que anhela el poderoso Ronan. Para lograr salir con vida, tendrá que formar alianza con un cuarteto de inadaptados de lo más peculiar.',
            release_date: '2014-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Ant-Man',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831663/marvel/8_jnolhs.png',
            summary: 'Tras abandonar la cárcel, el ladrón y estafador Scott Lang recibe la llamada del misterioso Dr. Hank Pym para realizar un trabajo especial. El científico suministra al joven un traje especial, que le otorgar la capacidad de reducir su tamaño al de un insecto, al tiempo que aumenta considerablemente su fuerza. Con esta nueva arma en su poder, capaz de comunicarse con los insectos, Lang deberá abrazar su héroe interior, olvidar su pasado de delincuente y tratar de salvar al mundo de una terrible amenaza.',
            release_date: '2015-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Spider-Man: Homecoming',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831664/marvel/9_nuyf4x.png',
            summary: 'Peter Parker comienza a experimentar su recién descubierta identidad como el superhéroe Spider-Man. Después de la experiencia vivida con los Vengadores, Peter regresa a casa, donde vive con su tía . Bajo la atenta mirada de su mentor Tony Stark, Peter intenta mantener una vida normal como cualquier joven de su edad, pero interrumpe en su rutina diaria el nuevo villano Vulture y, con él, lo más importante de la vida de Peter comenzará a verse amenazado.',
            release_date: '2017-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Viuda Negra',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831664/marvel/10_jdg9tb.png',
            summary: 'Natasha Romanoff, alias Viuda Negra, se enfrenta a los capítulos más oscuros de su historia cuando surge una peligrosa conspiración relacionada con su pasado. Perseguida por una fuerza que no se detendrá ante nada para acabar con ella, Natasha debe lidiar con su historia como espía y con la estela de relaciones destruidas que dejó atrás mucho antes de convertirse en Vengadora.',
            release_date: '2021-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Black Panther',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831665/marvel/11_cpyepu.png',
            summary: 'T Challa vuelve a casa, a la nación de Wakanda, aislada y muy avanzada tecnológicamente, para ser proclamado Rey. Pero la reaparición de un viejo enemigo pone a prueba el temple de T Challa como Rey y Black Panther ya que se ve arrastrado a un conflicto que pone en peligro todo el destino de Wakanda y del mundo.',
            release_date: '2018-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },

        { 
            name: 'Doctor Strange',
            image_url: 'https://res.cloudinary.com/maravoly/image/upload/v1654831664/marvel/12_hibu1b.png',
            summary: 'La vida del Dr. Stephen Strange cambia para siempre tras un accidente automovilístico que le deja muy malheridas sus manos. Cuando la medicina tradicional falla, se ve obligado a buscar esperanza y una cura en un lugar impensable: una comunidad aislada en Nepal llamada Kamar-Taj. Rápidamente descubre que éste no es sólo un centro de recuperación, sino también la primera línea de una batalla en contra de fuerzas oscuras y ocultas empeñadas en destruir nuestra realidad. En poco tiempo, Strange, armado con sus poderes mágicos recientemente adquiridos, se ve obligado a elegir entre volver a su antigua vida de riqueza y prestigio o dejarlo todo, para defender el mundo como el mago más poderoso del planeta.',
            release_date: '2016-03-03T13:45:17+00:00',
            nationality: Nationality.find_by(name: 'Estados Unidos'),
            user: User.find_by(email: 'maravoly@gmail.com')
        },
    ]
)

puts 'Creando Géneros!!!'

Genre.create!([
    {name: 'drama', description: 'films that focus primarily on the development of a relationship between the protagonists'},
    {name: 'documentary', description: 'refers to subjects of scientific, social or cultural interest, among others.'},
    {name: 'thriller', description: 'made with the intention of provoking tension in the viewer.' },
    {name: 'history', description: 'The action takes place in the past, often with the intention of historical reenactment.' },
    {name: 'action', description: 'whose plot involves a moral interaction between good and evil' }
])

tv_show = TvShow.find_by(name: 'Capitán América: El primer vengador')
genre = Genre.find_by(name: 'action')
tv_show.genres << genre

puts 'finalizado!!!'