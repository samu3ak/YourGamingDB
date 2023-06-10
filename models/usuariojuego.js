const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('usuariojuego', {
    id_usuarioJuego: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_usuario_usuarioJuego: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'usuario',
        key: 'id_usuario'
      }
    },
    id_juego_usuarioJuego: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'juego',
        key: 'id_juego'
      }
    },
    estado: {
      type: DataTypes.ENUM('Pendiente','Jugando','Completado','Abandonado'),
      allowNull: true
    },
    calificacion: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    opinion: {
      type: DataTypes.STRING(255),
      allowNull: true
    }
  }, {
    sequelize,
    tableName: 'usuariojuego',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_usuarioJuego" },
        ]
      },
      {
        name: "id_usuario_perfilUsuarioJuego",
        using: "BTREE",
        fields: [
          { name: "id_usuario_usuarioJuego" },
        ]
      },
      {
        name: "id_juego_perfilUsuarioJuego",
        using: "BTREE",
        fields: [
          { name: "id_juego_usuarioJuego" },
        ]
      },
    ]
  });
};
