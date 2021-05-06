# cs540-project
Statistics panel and how to use with QGIS by using the sales analysis dataset (part1_project_cs540_data.csv) which was obtained from pgAdmin and then export it to QGIS and some data available in shapefile format from the volusia county at Daytona Beach, FL.

The final attributes that I will be using to show how the Statistics panel works on QGIS will be: sale_date, water_front, vegetation_front and parcels that has pool from pgAdmin and then crime, health zones, airport, shopping centers, census blocks and census tracts from shapefiles uploaded to QGIS.

The vegetation_front attribute was obtained by doing a sql code which is attached and named as part1_studentpresentation_researchtopic.sql

# Shapefile data was retrieved from:

http://maps.vcgov.org/gis/download/shapes.htm

# Sample of some data uploaded on QGIS:

Health Zones:

![image](https://user-images.githubusercontent.com/82966526/117110721-9397f680-ad54-11eb-9c3d-932fc962835e.png)

Airports:

![image](https://user-images.githubusercontent.com/82966526/117110890-cfcb5700-ad54-11eb-8b86-4d085f1fc35b.png)

Shopping Centers:

![image](https://user-images.githubusercontent.com/82966526/117110994-f5f0f700-ad54-11eb-810e-a97fc78f9372.png)

The QGIS file used for this project is attached and named as spring_volusia_2021_project.qgz

# Convert shapefile into data on PGadmin:

Use the get_load_gis.bat file to run and convert the shapefile into data. The respective procedure on how to do this step by step is explained on the how_to_load_shapefiles_to_pgadmin_as_numerical_data.txt file.

# Computational Statistics

In order to perform the computational statistics, you will have to be on QGIS and then go to the view tab and click on panel and finally select statistics:

![image](https://user-images.githubusercontent.com/82966526/117111330-6ac43100-ad55-11eb-8b1a-3eebe77af131.png)

After that, you can select the respective attribute and a bar will display statistics calculations such as max, min, stdev, mean, etc.

All that is explained in the following video.

# Brief video explaining about the use of the Statistics panel on QGIS:

If you would like to know more about the project, there is a zoom file which contains an explanation of the scope of the project or you can use the following link to youtube:

https://youtu.be/XnfAGGIevsE

