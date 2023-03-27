const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('usuarioamigo', {
    id_usuarioAmigo: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_usuario_usuarioAmigo: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'usuario',
        key: 'id_usuario'
      }
    },
    id_usuario2_usuarioAmigo: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'usuario',
        key: 'id_usuario'
      }
    },
    estado: {
      type: DataTypes.ENUM('pendiente','amigo'),
      allowNull: true
    }
  }, {
    sequelize,
    tableName: 'usuarioamigo',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_usuarioAmigo" },
        ]
      },
      {
        name: "id_usuario_usuarioAmigo",
        using: "BTREE",
        fields: [
          { name: "id_usuario_usuarioAmigo" },
        ]
      },
      {
        name: "id_usuario2_usuarioAmigo",
        using: "BTREE",
        fields: [
          { name: "id_usuario2_usuarioAmigo" },
        ]
      },
    ]
  });
};
