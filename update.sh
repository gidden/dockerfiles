d=$1
echo "updating $1"
cd $d
docker build -t gidden/$1:latest .
docker push gidden/$1
