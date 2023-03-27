const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('juegoplataforma', {
    id_juegoPlataforma: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_juego_juegoPlataforma: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'juego',
        key: 'id_juego'
      }
    },
    id_plataforma_juegoPlataforma: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'plataforma',
        key: 'id_plataforma'
      }
    }
  }, {
    sequelize,
    tableName: 'juegoplataforma',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_juegoPlataforma" },
        ]
      },
      {
        name: "id_juego_juegoPlataforma",
        using: "BTREE",
        fields: [
          { name: "id_juego_juegoPlataforma" },
        ]
      },
      {
        name: "id_plataforma_juegoPlataforma",
        using: "BTREE",
        fields: [
          { name: "id_plataforma_juegoPlataforma" },
        ]
      },
    ]
  });
};
