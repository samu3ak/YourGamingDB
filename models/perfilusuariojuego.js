const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('perfilusuariojuego', {
    id_perfilUsuarioJuego: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_usuario_perfilUsuarioJuego: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'usuario',
        key: 'id_usuario'
      }
    },
    id_juego_perfilUsuarioJuego: {
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
    tableName: 'perfilusuariojuego',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_perfilUsuarioJuego" },
        ]
      },
      {
        name: "id_usuario_perfilUsuarioJuego",
        using: "BTREE",
        fields: [
          { name: "id_usuario_perfilUsuarioJuego" },
        ]
      },
      {
        name: "id_juego_perfilUsuarioJuego",
        using: "BTREE",
        fields: [
          { name: "id_juego_perfilUsuarioJuego" },
        ]
      },
    ]
  });
};
