from xml.dom import minidom

def parse(cadena):
    print(main.__doc__)
    nombreSalida = raw_input("Introduzca el nombre del archivo generado (*.kml) = ")
    try:
        salida = open(nombreSalida + ".kml",'w')
    except IOError:
        print ('No se puede crear el archivo ', nombreSalida + ".kml")
    # Procesamiento y generaci?n del archivo kml
    nLinea=0
    # Escribe la cabecera del archivo de salida
    prologoKML(salida)
    contador = 0
    while contador < len(cadena):
        salida.write(cadena[contador])
        contador = contador +1
        salida.write(",")
        salida.write(cadena[contador])
        salida.write("\n")
        contador = contador +1
    epilogoKML(salida)
    salida.close()



def prologoKML(archivo):
    archivo.write('<?xml version="1.0" encoding="UTF-8"?>\n')
    archivo.write('<kml xmlns="http://www.opengis.net/kml/2.2">\n')
    archivo.write("<Document>\n")
    archivo.write("<Placemark>\n")
    archivo.write("<name>"+"a"+"</name>\n")
    archivo.write("<LineString>\n")
    #la etiqueta <extrude> extiende la l?nea hasta el suelo
    archivo.write("<extrude>1</extrude>\n")
    # La etiqueta <tessellate> descompone la l?nea en porciones peque?as
    archivo.write("<tessellate>1</tessellate>\n")
    archivo.write("<coordinates>\n")


def epilogoKML(archivo):
    archivo.write("</coordinates>\n")
    archivo.write("<altitudeMode>relativeToGround</altitudeMode>\n")
    archivo.write("</LineString>\n")
    archivo.write("<Style> id='lineaRoja'>\n")
    archivo.write("<LineStyle>\n")
    archivo.write("<color>#ff0000ff</color>\n")
    archivo.write("<width>5</width>\n")
    archivo.write("</LineStyle>\n")
    archivo.write("</Style>\n")
    archivo.write("</Placemark>\n")
    archivo.write("</Document>\n")
    archivo.write("</kml>\n")

def main():
    a = 0
    doc = minidom.parse(r'C:\Users\pobef\OneDrive\Escritorio\xml\xml\rutas.xml')
    rutas = doc.getElementsByTagName("hito")
    contador = 0
    variable = []
    for hito in rutas:
        coordenadas = hito.getElementsByTagName("coordenadas")
        longitud = hito.getElementsByTagName("longitud")[0].firstChild.data
        latitud =hito.getElementsByTagName("latitud")[0].firstChild.data
        variable.append(longitud)
        variable.append(latitud)
        contador = contador +1
        comprobacion = contador%3
        if comprobacion == 0:
            parse(variable)
            variable=[]
    exit()



if __name__ == "__main__":
    main()