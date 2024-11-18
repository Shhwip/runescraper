import os
from bs4 import BeautifulSoup
import requests
import re
# Module Imports
import mariadb
import sys

class Teleport:
    name = ""
    image = ""
    lat = 0
    lon = 0
    mapid = 0

checked_links = set()

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
        user="db_user",
        password="db_user_passwd",
        host="localhost",
        port=3306,
        database="runescape"

    )
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

# Get Cursor
cur = conn.cursor()
print("Connected to MariaDB Platform")
teleport = Teleport()



# regex = re.compile('[t|T]eleport[s]?')
regex = re.compile('(Teleportation options)|(Destinations?)')
soup = None  # Initialize soup variable

 
url = "https://oldschool.runescape.wiki/w/Teleportation"
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')  # Make soup directly from response
html_content = soup.prettify()
with open("output.html", "w", encoding="utf-8") as file:
    file.write(html_content)

# for each link in the soup, visit the link and check if it has a map
for link in soup.find_all('a'):
    link_url = link.get('href')
    if link_url and link_url.startswith('/w'):
        response = requests.get("https://oldschool.runescape.wiki" + link_url)
        link_soup = BeautifulSoup(response.text, 'html.parser')
        if link_soup.title.string in checked_links:
            continue
        checked_links.add(link_soup.title.string)
        if link_soup and link_soup.find(string=regex) and link_soup.find('a', class_='mw-kartographer-map'):  # Check if soup is not None
            # print title of page
            print(link_soup.title.string)
            teleport.name = link_soup.title.string[:-12]
            # print url of the first image on the page
            img = link_soup.find('img')
            if img:
                teleport.image = img.get('src')
                print('Image:', teleport.image)
            map_links = link_soup.find_all('a', class_='mw-kartographer-map')
            for link in map_links:
                teleport.lat = link.get('data-lat')
                teleport.lon = link.get('data-lon')
                teleport.mapid = link.get('data-mapid')
                print('data-lat:', link.get('data-lat'))
                print('data-lon:', link.get('data-lon'))
                print('data-mapid:', link.get('data-mapid'))
                try:
                    cur.execute("INSERT INTO teleports (name, image, latitude, longitude, map_id) VALUES (?, ?, ?, ?, ?)", (teleport.name, teleport.image, teleport.lat, teleport.lon, teleport.mapid))
                except mariadb.Error as e:
                    print(f"Error: {e}")
            conn.commit()