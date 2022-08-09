ARCH=$(uname -m)
rm -rf /root/power-runner-ssh
git clone -b multi-arch-natively https://github.com/mayurwaghmode/multi-arch-github.git
cd /root/power-runner-ssh
buildah bud -f Dockerfile -t quay.io/mayurwaghmode111/gha-multi-arch:$ARCH .
buildah login -u mayurwaghmode111+test -p X92E11Y7OV17QBLJRJT2URECDG11J5LY67BKFBAG5ASZMMWO9667YHO9LFOKCAGW quay.io
podman push quay.io/mayurwaghmode111/gha-multi-arch:$ARCH
