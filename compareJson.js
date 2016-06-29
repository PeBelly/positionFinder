(function () {
  
  var position = require("./currentPosition.json");
  var rooms = require("./coordinates.json");
 
  rooms.forEach(function (coord) {
      if (coord.id == position[0].id) {	
        console.log(position[0].room + coord.room);		
      }        
  });
})();