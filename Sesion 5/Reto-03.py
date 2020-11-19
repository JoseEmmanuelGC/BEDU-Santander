# SESION 5 - RETO 3: Introducción a las agregaciones
# Archivos JSON para hacer las siguientes consultas

# Usando la colección sample_airbnb.listingsAndReviews, mediante el uso de agregaciones, encontrar el número de publicaciones que tienen conexión a Internet, sea desde Wifi o desde cable (Ethernet).
[
    {
        $match: {
            'amenities': /(ethernet)|(wifi)|(internet)/i
        }
    },
    {
        $count: 'total'
    }
]
