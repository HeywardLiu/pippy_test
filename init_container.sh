CONTAINER_NAME=$1
WORLD=$2
RANK=$3
echo "Usage: init_container.sh <CONTAINER_NAME> <WORLD> <RANK>"
docker network create rpc
docker run -e RANK=$RANK -e WORLD=$WORLD -e HOST=head -e PORT=3000 \
  --net rpc --name $CONTAINER_NAME -v ~/test_pippy:/app --rm -it pippy