import requests

url = "https://api.openweathermap.org/data/2.5/weather"

config = {
    "id" : 3868158,
    "appid" : "ab6b9237c5b8529a2b9f0961da7d4de7",
    "units" : "metric",
    "lang" : "es"
}
try: 
    # respuesta = requests.get(url, timeout=10 )
    respuesta = requests.request( "GET", url,params =config, timeout=10 )
    respuesta.raise_for_status() #lanza error si HTTp != 200
    # print (repuesta ) 
    datos = respuesta.json()
    clima = datos["name"] + ": " 
    clima = clima + datos["weather"][0]["description"]
    clima = clima + " - " + str(int(datos["main"]["temp"])) + "°"
    print( clima )
except requests.exceptions.HTTPError as e:
    print("Error: ", e)