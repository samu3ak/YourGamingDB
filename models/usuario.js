const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('usuario', {
    id_usuario: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nombreUsuario: {
      type: DataTypes.STRING(30),
      allowNull: false
    },
    password: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    correo: {
      type: DataTypes.STRING(120),
      allowNull: false
    },
    rol: {
      type: DataTypes.ENUM('usuario','administrador'),
      allowNull: true
    },
    baneado: {
      type: DataTypes.ENUM('SI','NO'),
      allowNull: false,
      defaultValue: "NO"
    },
    descripcion: {
      type: DataTypes.STRING(255),
      allowNull: false,
      defaultValue: "Nada que mostrar aquí..."
    }
  }, {
    sequelize,
    tableName: 'usuario',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_usuario" },
        ]
      },
    ]
  });
};
