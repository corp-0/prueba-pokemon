# Prueba Técnica EVoting - Andrés Riquelme

### Dependencias:
```
Ruby: 2.7.5p203
Rails: 7.0.1
NodeJS: v14.17.5
Yarn: 1.22.17
SQLITE3: 3.37.2
```

### Dependencias extras (gemas):
````
bootstrap
jquery-rails
sass-rails
rest-client
````

### Instalación y ejecución:

En su entorno de desarrollo de rails, instalar todas las dependencias extras:
```
$ bundle install
```

Levantar el servidor:
```
& bin/rails server
```

### Puntos a mejorar:

* Reducir la cantidad de dependencias extras, en especial ``rest-client``. Estuve un rato intentando con el
cliente http de la librería estándar, pero no logré que hiciera las request en modo JSON.
* Estudiar y entender los ``concerns`` de rails. Creo que podría deshacerme de las utils de ese modo y mover el servicio
de PokeApiService a un concern en lugar de una clase con métodos estáticos.
* Estudiar y entender la comunicación entre ``controllers``. Si bien en mi solución no parecía necesario, creo que era
parte del encargo que al presionar el botón una view recibiera data de la anterior. Pude haber generado un número
con el botón de la hierba alta y pasarlo como parámetro a la siguiente view, pero entonces ya no es tan aleatorio el
Pokémon que recibes. Preferiría pasarle el objeto que va a presentar directamente.
