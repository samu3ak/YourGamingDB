const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('usuarioplataforma', {
    id_usuarioPlataforma: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_usuario_usuarioPlataforma: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'usuario',
        key: 'id_usuario'
      }
    },
    id_plataforma_usuarioPlataforma: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'plataforma',
        key: 'id_plataforma'
      }
    }
  }, {
    sequelize,
    tableName: 'usuarioplataforma',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_usuarioPlataforma" },
        ]
      },
      {
        name: "id_usuario_usuarioPlataforma",
        using: "BTREE",
        fields: [
          { name: "id_usuario_usuarioPlataforma" },
        ]
      },
      {
        name: "id_plataforma_usuarioPlataforma",
        using: "BTREE",
        fields: [
          { name: "id_plataforma_usuarioPlataforma" },
        ]
      },
    ]
  });
};
