nombre=$1

if [ -z $nombre ]; then
    echo "No se ha introducido ningún nombre"
fi

#check if nombre ends with html, add it if not
if [[ $nombre != *".html" ]]; then
    htmlfile=$nombre".html"
fi

echo "Creando archivo $htmlfile"
echo "<!DOCTYPE html>" > $htmlfile
echo "<html lang='en'>" >> $htmlfile
echo "  <head>" >> $htmlfile
echo '      <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.10.0/p5.js"></script>' >> $htmlfile
echo '      <link rel="stylesheet" type="text/css" href="style.css">' >> $htmlfile
echo '      <meta charset="UTF-8">' >> $htmlfile
echo "      <title>Document</title>" >> $htmlfile
echo "  </head>" >> $htmlfile
echo "  <body>" >> $htmlfile
echo '      <a href="index.html" id="back">Volver</a>' >> $htmlfile
echo "      <script src='$nombre.js'></script>" >> $htmlfile
echo "  </body>" >> $htmlfile
echo "</html>" >> $htmlfile

if [[ $nombre != *".js" ]]; then
    jsfile=$nombre".js"
fi

echo "Creando archivo $jsfile"

echo "function setup() {" > $jsfile
echo "  createCanvas(400, 400);" >> $jsfile
echo "}" >> $jsfile
echo "" >> $jsfile
echo "function draw() {" >> $jsfile
echo "  background(220);" >> $jsfile
echo "}" >> $jsfile
