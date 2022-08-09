ARCH=$(uname -m)
if (( $# == 3 ))
then
    QUAY_REPO=$1
    ROBOT_USER=$2
	  ROBOT_TOKEN=$3
fi

buildah bud -f Dockerfile -t $QUAY_REPO:$ARCH .
buildah login -u $ROBOT_USER=$2 -p ROBOT_TOKEN=$3 quay.io
podman push $QUAY_REPO:$ARCH
