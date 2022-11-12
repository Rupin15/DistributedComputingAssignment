:load
start cmd /k java -cp ./build/libs/cs455.scaling-1.0-SNAPSHOT.jar cs455.scaling.server.Server 4568 8 8 1
timeout 5
for /l %%x in (1, 1, 25) do (
   echo %%x
   start cmd /k java -cp ./build/libs/cs455.scaling-1.0-SNAPSHOT.jar cs455.scaling.client.Client localhost 4568 4 
)

