# cs540-project
Database and Data Retrieval to compute the computational statistics analysis by the use of the sales analysis dataset (part1_project_cs540_data.csv) and some data available in shapefile format from the volusia county at Daytona Beach, FL

The final attributes that I will be using to compute the computational statistics on QGIS will be: aprland, aprbldg, aprtot, rmbed, sfla, sale_date, water_front, vegetation_front, crime, health zones, airport, shopping centers, parcels that has pool, census tracts, where the sale_date was split it up in day, month, and year.

The abbreviations of some attributes used:

Aprland: Total Land Just Value

Aprbldg: Total Building(s) Just Value

Aprtot: Total Just Value

Rmbed: Number of Bedrooms

Sfla: Square Footage of Living Area

# Shapefile data was retrieved from:

http://maps.vcgov.org/gis/download/shapes.htm

# Sample of some data uploaded on QGIS:

Health Zones:

![image](https://user-images.githubusercontent.com/82966526/117110721-9397f680-ad54-11eb-9c3d-932fc962835e.png)

Airports:

![image](https://user-images.githubusercontent.com/82966526/117110890-cfcb5700-ad54-11eb-8b86-4d085f1fc35b.png)

Shopping Centers:

![image](https://user-images.githubusercontent.com/82966526/117110994-f5f0f700-ad54-11eb-810e-a97fc78f9372.png)

# Convert shapefile into data on PGadmin:

Use the get_load_gis.bat file to run and convert the shapefile into data. The respective procedure on how to do it is explained on the how_to_load_shapefiles_to_pgadmin_as_numerical_data.txt file.

# Computational Statistics

In order to perform the computational statistics, you will have to be on QGIS and then go to the view tab and click on panel and finally select statistics:

![image](https://user-images.githubusercontent.com/82966526/117111330-6ac43100-ad55-11eb-8b1a-3eebe77af131.png)

After that, you can select the respective attribute and a bar will display statistics calculations such as max, min, stdev, mean, etc.

If you would like to know more about the project, there is a zoom link which contains an explanation of the scope of the project.
