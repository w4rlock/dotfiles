db = connect("localhost/arsdb");

prompt = function() {
  return "DB:" + db + " Objs:"+db.stats().objects+" > ";
}

users = function(){
  db.users.find().forEach(function(collection) {
    printjson(collection);
  });
}

aseguradoras = function(){
  db.aseguradoras.find().forEach(function(collection) {
    printjson(collection);
  });
}

confirmEmail = function(){
  db.users.update({},  { $set: { active: 1, confirmToken: null}}, false, true);
}

db.getCollectionNames().forEach(function(collection) {
  print(collection);
});
