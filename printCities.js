var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

// prints each province on its own line.
var printCities = function(cities) {
  for (var city in cities) {
    var provincialCities = cities[city].length;
    console.log(city + " has " + provincialCities + " cities");
  }
};

// prints it all on one line.
var printCitiesOneLine = function(cities) {
  var provInfo = "";
  for (var city in cities) {
    var provincialCities = cities[city].length;
       provInfo += (city + " has " + provincialCities + " cities. ");
  }
  return provInfo.trim();
};
