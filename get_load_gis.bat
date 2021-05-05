REM grab the parcels from www.volusia.org/gis

del /F /Q parcel.*

curl -O maps.vcgov.org/gis/download/shpfiles/parcel.zip
 
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('parcel.zip', '.'); }"

REM load them into spatial database named gis_parcels
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom parcel.shp volusia.gis_parcels > create_parcels.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_parcels.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -e -c "create index on volusia.gis_parcels (altkey);"


REM Streets

del /F /Q streets.*

curl -O maps.vcgov.org/gis/download/shpfiles/streets.zip
 
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('streets.zip', '.'); }"

REM load them into spatial database named gis_streets
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom streets.shp volusia.gis_streets > create_streets.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_streets.sql
REM "c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -e -c "create index on volusia.gis_streets (altkey);"

REM hydrology

del /F /Q hydrology.*

curl -O maps.vcgov.org/gis/download/shpfiles/hydrology.zip
 
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('hydrology.zip', '.'); }"

REM load them into spatial database named gis_hydrology
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom hydrology.shp volusia.gis_hydrology > create_hydrology.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_hydrology.sql
REM "c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -e -c "create index on volusia.gis_hydrology (altkey);"



# address centerpoints
del /F /Q address.*
curl -O maps.vcgov.org/gis/download/shpfiles/address.zip
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('address.zip', '.'); }"

REM load them into spatial database named gis_address
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom address.shp volusia.gis_address > create_address.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_address.sql


del /F /Q zipcodes.*
curl -O maps.vcgov.org/gis/download/shpfiles/zipcodes.zip
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('zipcodes.zip', '.'); }"

"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom zipcodes.shp volusia.gis_zipcodes > create_zipcodes.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_zipcodes.sql


# volusia county boundary shapefile vcbnd.zip  contains files like: vcbnd400.*
del /F /Q vcbnd*.*
curl -O maps.vcgov.org/gis/download/shpfiles/vcbnd.zip
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('vcbnd.zip', '.'); }"

"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom vcbnd400.shp volusia.gis_countyboundary > create_countyboundary.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_countyboundary.sql

# crime data
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom fl_volusia_burgalry.shp volusia.fl_volusia_burgalry > create_crime.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_crime.sql

# census
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom fl_census_bg_wpop_median.shp volusia.fl_census_bg_wpop_median > create_census.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_census.sql

# airports
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom airports.shp volusia.airports > create_airport.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_airport.sql

# vegetation
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom vegetation.shp volusia.vegetation > create_vegetation.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_vegetation.sql

# zipcodes
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom zipcodes.shp volusia.zipcodes > create_zipcode.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_zipcode.sql

# shopping center
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom ShoppingCenters.shp volusia.ShoppingCenters > create_shoppingcenter.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_shoppingcenter.sql

# sheriff patrol zones
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom pzones.shp volusia.pzones > create_sheriffpatrolzones.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_sheriffpatrolzones.sql

# shelters
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom Shelters_for_download.shp volusia.Shelters_for_download > create_shelters.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_shelters.sql

# public attractions
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom PublicAttractions.shp volusia.PublicAttractions > create_publicattractions.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_publicattractions.sql

# Health Care Facilities
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom health.shp volusia.health > create_healthcarefacilities.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_healthcarefacilities.sql

# census volusia tracts
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom volusia_census_tracts.shp volusia.volusia_census_tracts > create_census_volusia_tracts.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_census_volusia_tracts.sql

# census volusia blocks
"c:\Program Files\PostgreSQL\13\bin\shp2pgsql.exe" -d -I -s 2236 -W "latin1" -g geom volusia_census_blocks.shp volusia.volusia_census_blocks > create_census_volusia_blocks.sql
"c:\Program Files\PostgreSQL\13\bin\psql.exe" -U postgres -d spatial -f create_census_volusia_blocks.sql
