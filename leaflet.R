library(leaflet)
library(htmltools)
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addCircles(data = cleaned, lat = ~latitude, lng = ~longitude, 
             popup = ~paste( "<br>Category: ", cleaned$landslide_category, 
                             "<br>Injury count: ",
                             cleaned$injury_count))

             
             
             
             
m  # Print the map

