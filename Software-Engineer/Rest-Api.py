# REST API Weather Finder
# =======================

# Your task is to implement a weather information retrieval system. The system should fetch data from a REST API and return the temperature as an integer for a given city name.

# API Details

# 1. Endpoint: https://jsonmock.hackerrank.com/api/weathername=<name>
# 2. Method: GET
# 3. Query Parameter: name (the name of the city to search).
# 4. Sample Response:
# {
#   "page": 1,
#   "per_page": 10,
#   "total": 1,
#   "total_pages": 1,
#   "data": [
#     {
#       "name": "Dallas",
#       "weather": "12 degree",
#       "status": [
#         "Wind: 2Kmph",
#         "Humidity: 5%"
#       ]
#     }
#   ]
# }

# Functional Requirements

# 1. Consume the API: Make a GET request to the provided URL using the city name.
# 2. Parse Data:
#    2.1 The data field in the response is an array of objects.
#    2.2 You must use the first record from this array (index 0).
# 3. Extract Temperature:
#    3.1 The weather field is a string in the format "<value> degree" (e.g., "12 degree").
#    3.2 The function must return only the Integer part of this value (e.g., 12).
# 4. Handle Empty Results: If the data array is empty, the function should return a specific value (usually null, 0, or -1 depending on the language template provided). 


import requests


def getTemperature(name):
    # Write your code here
    # 1. Define the API URL with the city name parameter
    url = "https://jsonmock.hackerrank.com/api/weather?name={}".format(name)
    
    # 2. Perform the GET request and parse JSON
    response = requests.get(url).json()
    
    # 3. Check if 'data' list has any entries
    if 'data' in response and len(response['data']) > 0:
        # Get the first weather record (e.g., "12 degree")
        weather_string = response['data'][0]['weather']
        
        # 4. Extract the number from the string
        # split() divides "12 degree" into ["12", "degree"]
        temp = int(weather_string.split()[0])
        
        return temp

