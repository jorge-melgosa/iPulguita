var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();
var log = UIALogger;

//window.logElementTree();

log.logStart("Añadimos unidades de Jamon");
masJamon = window.buttons()["masJamon"];
masJamon.tap();
var unidadesJamon = window.textFields()["unidadesJamon"];
if(unidadesJamon.value() == 1) {
    log.logPass("Se ha añadido una unidad de Jamon");
} else {
    log.logFail("No se ha podido añadir una unidad Jamon");
}
target.delay(3);

log.logStart("Quitamos unidades de Jamon");
menosJamon = window.buttons()["menosJamon"];
menosJamon.tap();
var unidadesJamon = window.textFields()["unidadesJamon"];
if(unidadesJamon.value() == 0) {
    log.logPass("Se ha quitado una unidad de Jamon");
} else {
    log.logFail("No se ha podido quitar una unidad de Jamon");
}
target.delay(3);

log.logStart("Añadimos unidades de Jamon Sin");
masJamonSin = window.buttons()["masJamonSin"];
masJamonSin.tap();
var unidadesJamonSin = window.textFields()["unidadesJamonSin"];
if(unidadesJamonSin.value() == 1) {
    log.logPass("Se ha añadido una unidad de Jamon Sin");
} else {
    log.logFail("No se ha podido añadir una unidad de Jamon Sin");
}
target.delay(3);

log.logStart("Quitamos unidades de Jamon Sin");
menosJamonSin = window.buttons()["menosJamonSin"];
menosJamonSin.tap();
var unidadesJamonSin = window.textFields()["unidadesJamonSin"];
if(unidadesJamonSin.value() == 0) {
    log.logPass("Se ha quitado una unidad de Jamon Sin");
} else {
    log.logFail("No se ha podido quitar una unidad de Jamon Sin");
}
target.delay(3);

log.logStart("Añadimos unidades de Tortilla");
masTortilla = window.buttons()["masTortilla"];
masTortilla.tap();
var unidadesTortilla = window.textFields()["unidadesTortilla"];
if(unidadesTortilla.value() == 1) {
    log.logPass("Se ha añadido una unidad de Tortilla");
} else {
    log.logFail("No se ha podido añadir una unidad de Tortilla");
}
target.delay(3);

log.logStart("Quitamos unidades de Tortilla");
menosTortilla = window.buttons()["menosTortilla"];
menosTortilla.tap();
var unidadesTortilla = window.textFields()["unidadesTortilla"];
if(unidadesTortilla.value() == 0) {
    log.logPass("Se ha quitado una unidad de Tortilla");
} else {
    log.logFail("No se ha podido quitar una unidad de Tortilla");
}
target.delay(3);

target.delay(5);