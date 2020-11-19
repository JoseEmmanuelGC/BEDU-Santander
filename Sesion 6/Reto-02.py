# SESION 6 - RETO 2: Asociación de colecciones
# Archivos JSON para hacer las siguientes consultas

# Usando las colecciones comments y users, se requiere conocer el correo y contraseña de cada persona que realizó un comentario. Construye un pipeline que genere como resultado estos datos.
[
    {
        $lookup: {
            from: 'users',
            localField: 'email',
            foreignField: 'email',
            as: 'users'
        }
    },
    {
        $addFields: {
            user_object: {
                $arrayElemAt: ['$users', 0]
            }
        }
    },
    {
        $addFields: {
            user_password: '$user_object.password'
        }
    },
    {
        $project: {
            _id: 0,
            text: 1,
            name: 1,
            email: 1,
            user_password: 1
        }
    }
]
