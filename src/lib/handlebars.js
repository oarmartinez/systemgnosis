const {format} = require('timeago.js');
const exphbs = require('express-handlebars');

const hbs = exphbs.create();

const helpers = {};

helpers.timeago = (timestamp) => {
    return format(timestamp)
}
helpers.eq = function(param1, param2) {
    return param1 === param2;
}


hbs.handlebars.registerHelper('porcentaje', function(a, b) {
    return (a / b * 100).toFixed(2) + '%';
  });
  
  
module.exports = helpers;