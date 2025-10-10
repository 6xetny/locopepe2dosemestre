import requests

url = "https://open.er-api.com/v6/latest/USD"

try:
    respuesta = requests.get( url, timeout=10 )
    respuesta.raise_for_status() # lanza error si HTTP != 200
    # print ( respuesta )
    datos = requests.get( url, timeout=10 ).json()
    # print(datos)
    print("Ultima actuliza.: ",datos.get("time_last_update_utc"))
    print("Sigte. actuliza.: ",datos.get("time_next_update_utc"))
    print(datos["rates"]["CLP"])
except requests.exceptions.HTTPError as e:
    print("Error:", e)