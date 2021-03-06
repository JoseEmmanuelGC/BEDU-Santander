# SESION 5 - RETO 2: Notación punto y arreglos
# Archivos JSON para hacer las siguientes consultas

# Usando la colección sample_airbnb.listingsAndReviews, agrega un filtro que permita obtener todas las publicaciones que tengan 50 o más comentarios, que la valoración sea mayor o igual a 80, que cuenten con conexión a Internet vía cable y estén ubicada en Brazil.
{
    number_of_reviews: {
        $gte: 50
    },
    'review_scores.review_scores_rating': {
        $gte: 80
    },
    amenities: {
        $in: [
            'Ethernet connection'
        ]
    },
    'address.country_code': 'BR'
}
