CREATE TABLE usuario(
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    apellido1 VARCHAR(30) NOT NULL,
    apellido2 VARCHAR(30),
    nombreUsuario VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL,
    correo VARCHAR(120) NOT NULL,
    rol ENUM('usuario','administrador'),
    numAmigos INT(10),
    PRIMARY KEY (id_usuario)
)engine=InnoDB;

CREATE TABLE plataforma(
    id_plataforma INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    imagen VARCHAR(255),
    PRIMARY KEY (id_plataforma)
)engine=InnoDB;

CREATE TABLE juego(
    id_juego INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    genero VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_juego)
)engine=InnoDB;

CREATE TABLE juegoPlataforma(
    id_juegoPlataforma INT NOT NULL AUTO_INCREMENT,
    id_juego_juegoPlataforma INT NOT NULL,
    id_plataforma_juegoPlataforma INT NOT NULL,
    PRIMARY KEY (id_juegoPlataforma),

    CONSTRAINT id_juego_juegoPlataforma
    FOREIGN KEY (id_juego_juegoPlataforma)
    REFERENCES juego (id_juego),

    CONSTRAINT id_plataforma_juegoPlataforma
    FOREIGN KEY (id_plataforma_juegoPlataforma)
    REFERENCES plataforma (id_plataforma)

    ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE perfilUsuario(
    id_perfilUsuario INT NOT NULL AUTO_INCREMENT,
    id_usuario_perfilUsuario INT NOT NULL,
    descripcion VARCHAR(255),
    PRIMARY KEY (id_perfilUsuario),

    CONSTRAINT id_usuario_perfilUsuario
    FOREIGN KEY (id_usuario_perfilUsuario)
    REFERENCES usuario (id_usuario)

    ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE usuarioPlataforma(
    id_usuarioPlataforma INT NOT NULL AUTO_INCREMENT,
    id_usuario_usuarioPlataforma INT NOT NULL,
    id_plataforma_usuarioPlataforma INT NOT NULL,
    PRIMARY KEY (id_usuarioPlataforma),

    CONSTRAINT id_usuario_usuarioPlataforma
    FOREIGN KEY (id_usuario_usuarioPlataforma)
    REFERENCES usuario (id_usuario),

    CONSTRAINT id_plataforma_usuarioPlataforma
    FOREIGN KEY (id_plataforma_usuarioPlataforma)
    REFERENCES plataforma (id_plataforma)

    ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE perfilUsuarioJuego(
    id_perfilUsuarioJuego INT NOT NULL AUTO_INCREMENT,
    id_usuario_perfilUsuarioJuego INT NOT NULL,
    id_juego_perfilUsuarioJuego INT NOT NULL,
    estado ENUM('Pendiente','Jugando','Completado','Abandonado'),
    calificacion INT(10),
    opinion VARCHAR(255),
    PRIMARY KEY (id_perfilUsuarioJuego),

    CONSTRAINT id_usuario_perfilUsuarioJuego
    FOREIGN KEY (id_usuario_perfilUsuarioJuego)
    REFERENCES usuario (id_usuario),

    CONSTRAINT id_juego_perfilUsuarioJuego
    FOREIGN KEY (id_juego_perfilUsuarioJuego)
    REFERENCES juego (id_juego)

    ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE usuarioAmigo(
    id_usuarioAmigo INT NOT NULL AUTO_INCREMENT,
    id_usuario_usuarioAmigo INT NOT NULL,
    id_usuario2_usuarioAmigo INT NOT NULL,
    estado ENUM('pendiente','amigo'),
    PRIMARY KEY (id_usuarioAmigo),

    CONSTRAINT id_usuario_usuarioAmigo
    FOREIGN KEY (id_usuario_usuarioAmigo)
    REFERENCES usuario (id_usuario),

    CONSTRAINT id_usuario2_usuarioAmigo
    FOREIGN KEY (id_usuario2_usuarioAmigo)
    REFERENCES usuario (id_usuario)
    
    ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE mensaje(
    id_mensaje INT NOT NULL AUTO_INCREMENT,
    id_usuario_mensaje INT NOT NULL,
    id_usuario2_mensaje INT NOT NULL,
    PRIMARY KEY (id_mensaje),

    CONSTRAINT id_usuario_mensaje
    FOREIGN KEY (id_usuario_mensaje)
    REFERENCES usuario (id_usuario),

    CONSTRAINT id_usuario2_mensaje
    FOREIGN KEY (id_usuario2_mensaje)
    REFERENCES usuario (id_usuario)
    
    ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;