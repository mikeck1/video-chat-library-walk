echo "Cleaning out the old builds"
# clean out the old build folder
rm -rf client/build nginx/build

echo "Creating a new production build"
# create a production react build
npm run --silent --prefix client/ build > /dev/null
# set up production react build to be served by nginx
cp -r client/build nginx/

echo "Rebuilding containers with new production build"
# build the containers
docker-compose build --quiet

echo "Start the system now? Y/n (default is yes)"
read -n 1 answer
if [ "$answer" != "n" ]
then
    docker-compose up
fi
