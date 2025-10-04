import os
import requests
import math
import time
from urllib.parse import urlparse

def deg2num(lat_deg, lon_deg, zoom):
    """Convert lat/lon to tile numbers"""
    lat_rad = math.radians(lat_deg)
    n = 2.0 ** zoom
    xtile = int((lon_deg + 180.0) / 360.0 * n)
    ytile = int((1.0 - math.asinh(math.tan(lat_rad)) / math.pi) / 2.0 * n)
    return (xtile, ytile)

def download_tiles(north, south, east, west, min_zoom=8, max_zoom=12, tile_dir="map_tiles"):
    """Download map tiles for offline use"""
    os.makedirs(tile_dir, exist_ok=True)
    
    total_tiles = 0
    downloaded_tiles = 0
    
    for zoom in range(min_zoom, max_zoom + 1):
        zoom_dir = os.path.join(tile_dir, str(zoom))
        os.makedirs(zoom_dir, exist_ok=True)
        
        x_min, y_max = deg2num(north, west, zoom)  # northwest corner
        x_max, y_min = deg2num(south, east, zoom)  # southeast corner
        
        if x_min > x_max:
            x_min, x_max = x_max, x_min
        if y_min > y_max:
            y_min, y_max = y_max, y_min
            
        tiles_at_zoom = (x_max - x_min + 1) * (y_max - y_min + 1)
        total_tiles += tiles_at_zoom
        
        print(f"Downloading zoom {zoom}: {tiles_at_zoom} tiles")
        print(f"  X range: {x_min} to {x_max}")
        print(f"  Y range: {y_min} to {y_max}")
        
        for x in range(x_min, x_max + 1):
            x_dir = os.path.join(zoom_dir, str(x))
            os.makedirs(x_dir, exist_ok=True)
            
            for y in range(y_min, y_max + 1):
                tile_path = os.path.join(x_dir, f"{y}.png")
                
                if not os.path.exists(tile_path):
                    try:
                        url = f"https://tile.openstreetmap.org/{zoom}/{x}/{y}.png"
                        response = requests.get(
                            url, 
                            headers={'User-Agent': 'GLITCH Ground Station'},
                            timeout=10
                        )
                        if response.status_code == 200:
                            with open(tile_path, 'wb') as f:
                                f.write(response.content)
                            downloaded_tiles += 1
                            if downloaded_tiles % 50 == 0:
                                print(f"Downloaded {downloaded_tiles}/{total_tiles} tiles...")
                        else:
                            print(f"HTTP {response.status_code} for {url}")
                        
                        # Be nice to the tile server :)
                        time.sleep(0.1)
                        
                    except Exception as e:
                        print(f"Failed to download {tile_path}: {e}")
                else:
                    print(f"Skipping existing tile: {tile_path}")
    
    print(f"\nDownload complete! Downloaded {downloaded_tiles} new tiles out of {total_tiles} total.")

#function to download range of map tiles from x1-x2 and y1-y2 at zoom level z
def download_tile_range(x1, x2, y1, y2, z):
    tile_dir = "map_tiles"
    os.makedirs(tile_dir, exist_ok=True)
    zoom_dir = os.path.join(tile_dir, str(z))
    os.makedirs(zoom_dir, exist_ok=True)
    
    total_tiles = (x2 - x1 + 1) * (y2 - y1 + 1)
    downloaded_tiles = 0
    
    print(f"Downloading zoom {z}: {total_tiles} tiles")
    print(f"  X range: {x1} to {x2}")
    print(f"  Y range: {y1} to {y2}")
    
    for x in range(x1, x2 + 1):
        x_dir = os.path.join(zoom_dir, str(x))
        os.makedirs(x_dir, exist_ok=True)
        
        for y in range(y1, y2 + 1):
            tile_path = os.path.join(x_dir, f"{y}.png")
            
            if not os.path.exists(tile_path):
                try:
                    url = f"https://tile.openstreetmap.org/{z}/{x}/{y}.png"
                    response = requests.get(
                        url, 
                        headers={'User-Agent': 'GLITCH Ground Station'},
                        timeout=10
                    )
                    if response.status_code == 200:
                        with open(tile_path, 'wb') as f:
                            f.write(response.content)
                        downloaded_tiles += 1
                        if downloaded_tiles % 50 == 0:
                            print(f"Downloaded {downloaded_tiles}/{total_tiles} tiles...")
                    else:
                        print(f"HTTP {response.status_code} for {url}")
                    
                    # Be nice to the tile server :)
                    time.sleep(0.2)
                    
                except Exception as e:
                    print(f"Failed to download {tile_path}: {e}")
            else:
                print(f"Skipping existing tile: {tile_path}")
    
    print(f"\nDownload complete! Downloaded {downloaded_tiles} new tiles out of {total_tiles} total.")
if __name__ == "__main__":
    print("Starting download for Kiruna balloon flight area...")
        
    # download_tiles(
    #     north=72.0,   
    #     south=67.0,   
    #     east=25.0,    
    #     west=17.0,    
    #     min_zoom=6,   
    #     max_zoom=12   
    # )

    download_tile_range(x1=36600, x2=36610, y1=15730 , y2=15736, z=16)