DBQuery.prototype._prettyShell = true;
var dbs= db.adminCommand('listDatabases');
var bb = {};

print("\n======= DATABASES ========");
for (var i=0; i < dbs.databases.length; i++){
  bb = dbs.databases[i];
  print(bb.name);
}

prompt = function() {
  return "DB:" + db + " Objs:"+db.stats().objects+" > ";
}

users = function(){ db.users.find().forEach(function(collection) { printjson(collection); }); }
aseguradoras = function(){ db.aseguradoras.find().forEach(function(collection) { printjson(collection); }); }
confirmEmail = function(){ db.users.update({},  { $set: { active: 1, confirmToken: null}}, false, true); }
denuncias = function(){ db.denuncia.find().forEach(function(collection) { printjson(collection); }); }

//printjson(db.stats());

print("\n");
db = connect("localhost/eatnow_db");
//db = connect("localhost/arsdb");
print("\n======= COLLECTIONS =======");

collections = function(){
  db.getCollectionNames().forEach(function(collection) {
    print(collection);
  });
}

collections();
