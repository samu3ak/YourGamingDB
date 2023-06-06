const fs = require('fs');
const readline = require('readline');
const { Sequelize } = require('sequelize');



async function processLineByLine() {
    const fileStream = fs.createReadStream('gameList.txt');

    const rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });
    // Note: we use the crlfDelay option to recognize all instances of CR LF
    // ('\r\n') in input.txt as a single line break.
    var titulo;
    var link;
    var publisher;
    var generos;
    var generosAux;
    var generosNuevos = new Array();
    for await (var line of rl) {
        // Each line in input.txt will be successively available here as `line`.

        [line, titulo] = siguienteComa(line);

        [line, link] = siguienteComa(line);

        link = line.substring(0, line.indexOf(","));

        index = line.indexOf(",") + 1;
        line = line.substring(index);

        if (line[0] === "\"") {
            publisher = line.substring(1, line.indexOf("\"", 1));
            line = line.substring(line.indexOf("\"", 1) + 2);
        } else {
            publisher = line.substring(0, line.indexOf(","));
            line = line.substring(line.indexOf(",") + 1);
        }

        generos = line.substring(1, line.indexOf("\"", 1) - 1);

        generosAux = generos;

        do {
            if (generosAux.indexOf(",") === -1) {
                if (generosNuevos.indexOf(generosAux) === -1) {
                    generosNuevos.push(generosAux);
                }
            } else if (generosNuevos.indexOf(generosAux.substring(0, generosAux.indexOf(","))) === -1) {
                generosNuevos.push(generosAux.substring(0, generosAux.indexOf(",")));
            }
            generosAux = generosAux.substring(generosAux.indexOf(",") + 1);
        } while (generosAux.indexOf(",") !== -1);

        // PARA INSERTAR TODOS LOS JUEGOS, DESCOMENTAR SIGUIENTE LÍNEA
        //await sequelize.query("INSERT INTO juego (titulo, genero, publisher, enlace) VALUES (?, ?, ?, ?)", { replacements: [titulo, generos, publisher, link], type: sequelize.QueryTypes.INSERT });
    }
    // Carga de géneros
    // generosNuevos.forEach(async genero => {
    //     await sequelize.query("INSERT INTO generos (nombre) VALUES (?)", { replacements: [genero], type: sequelize.QueryTypes.INSERT });
    // });
}

function siguienteComa(texto) {
    let contenido;
    if (texto[0] === ",") {
        contenido = "";
        index = texto.indexOf(",") + 1;
        texto = texto.substring(index);
    } else {
        index = texto.indexOf(",") + 1;
        texto = texto.substring(index);
        if (texto[0] === "\"") {
            contenido = texto.substring(1, texto.indexOf("\"", 1));
            texto = texto.substring(texto.indexOf("\"", 1) + 2)
        } else {
            contenido = texto.substring(0, texto.indexOf(","));
            texto = texto.substring(texto.indexOf(",") + 1);
        }
    }
    return [texto, contenido];
}

const sequelize = new Sequelize("yourgamingdb", "root", "", {
    host: "localhost",
    dialect: "mysql"
});
sequelize.authenticate().then(() => {
    console.log('La conexión con la BBDD es satisfactoria');
    processLineByLine();
}).catch((error) => {
    console.error('No se ha podido conectar a la BBDD:', error);
});