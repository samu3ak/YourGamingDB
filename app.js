var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const session = require("express-session");
var bodyParser = require("body-parser");
const { Sequelize } = require('sequelize');
require("dotenv").config();

// Comprueba conexión a la BBDD mediante ORM Sequelizer
const sequelize = new Sequelize(process.env.DATABASE, process.env.USER, process.env.PASSWORD, {
  host: process.env.HOST,
  dialect: "mysql"
});
sequelize.authenticate().then(() => {
  console.log('La conexión con la BBDD es satisfactoria');
}).catch((error) => {
  console.error('No se ha podido conectar a la BBDD:', error);
}).finally(() => {
  sequelize.close().then(() => console.log("Conexión BBDD de prueba cerrada"));
});

var indexRouter = require('./routes/index');
var loginRouter = require('./routes/login');
var registerRouter = require('./routes/register');
var profileRouter = require('./routes/profile');
var gestionUsuariosRouter = require('./routes/gestionUsuarios');
var explorarUsuariosRouter = require("./routes/explorarUsuarios");
const { profile } = require('console');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
  secret: process.env.SECRET,
  resave: true,
  saveUninitialized: true
}));

// Middlewares
const md_Notifications = require("./middlewares/loadNotifications");

// Para actualizar las notificaciones en la página
app.use("/*", md_Notifications.loadNotifications);


app.use('/', indexRouter);
app.use('/login', loginRouter);
app.use('/register', registerRouter);
app.use('/profile', profileRouter);
app.use('/gestionUsuarios', gestionUsuariosRouter);
app.use('/explorarUsuarios', explorarUsuariosRouter);
// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
