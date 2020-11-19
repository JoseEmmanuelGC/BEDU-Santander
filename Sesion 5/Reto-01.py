# SESION 5 - RETO 1: Expresiones regulares
# Archivos JSON para hacer las siguientes consultas

# Usando la base de datos sample_airbnblistingsAndReviews, realiza los siguientes filtros:
# Propiedades que no permitan fiestas.
{
    filter: {
        house_rules: RegExp('not? part[yi]', i)
    }
}

# Propiedades que admitan mascotas.
{
    filter: {
        $and: [
            {
                house_rules: {
                    $not: RegExp('not? pets', i)
                }
            },
            {
                house_rules: RegExp('pets', i)
            }
        ]     
    }
}

# Propiedades que no permitan fumadores.
{   
    filter: {
        house_rules: RegExp('not? smok[ei]', i)
    }
}

# Propiedades que no permitan fiestas ni fumadores.
{
    filter: {
        house_rules: RegExp('(not? part[yi].*not? smok[ei])|(not? smok[ei].*not? part[yi])', i)
    }
}
