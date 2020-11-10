# SESION 4 - RETO 2: Filtros básicos
# Archivos JSON para hacer las siguientes consultas

# ¿Qué comentarios ha hecho Greg Powell?
{
    filter: {
        name: 'Greg Powell'
    }
}

# ¿Qué comentarios han hecho Greg Powell o Mercedes Tyler?
{
    filter: {
        $or: [
            {
                name: 'Greg Powell'
            },
            {
                name: 'Mercedes Tyler'
            }
        ]
    }
}

# ¿Cuál es el máximo número de comentarios en una película?
{
    project: {
        num_mflix_comments: 1
    },
    sort: {
        num_mflix_comments: -1
    },
    limit: 1
}

# ¿Cuál es el título de las cinco películas más comentadas?
{
    project: {
        title: 1
    },
    sort: {
        num_mflix_comments: -1
    },
    limit: 5
}
