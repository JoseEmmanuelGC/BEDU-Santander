# SESION 6 - RETO 1: Agrupamientos
# Archivos JSON para hacer las siguientes consultas

# Con base en el ejemplo 1, modifica el agrupamiento para que muestre el costo promedio por habitación por país de las propiedades de tipo casa.
[
    {
        $match: {
            'property_type': 'House',
            'bedrooms': {
                $gte: 1
            }
        }
    },
    {
        $addFields: {
            'price_per_bedroom': {
                $divide: ['$price', '$bedrooms']
            }
        }
    },
    {
        $group: {
            '_id': '$address.country',
            'avg_price_per_bedroom': {
                $avg: '$price_per_bedroom'
            }
        }
    },
    {
        $addFields: {
            'country': '$_id'
        }
    },
    {
        $project: {
            '_id': 0,
            'country': 1,
            'avg_price_per_bedroom': 1
        }
    }
]
