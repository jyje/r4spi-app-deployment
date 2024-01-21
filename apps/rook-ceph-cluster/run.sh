helm repo add rook-release https://charts.rook.io/release
helm pull rook-release/rook-ceph --untar
cd rook-ceph

helm repo add rook-release https://charts.rook.io/release
helm pull rook-release/rook-ceph-cluster --untar
cd rook-ceph-cluster