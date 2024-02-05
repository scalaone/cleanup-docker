# Cleanup your docker daemon periodically

## Reason

I am running a gitlab worker for building my arm docker images.
Usally it takes a few weeks until the worker is out of disk space.

To prevent this problem I created this small docker utility.

## Cleanup

The following commands will be triggered on startup of the container.

```sh
crictl rmi --prune
```

## Usage

```
cat << EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  labels:
    run: cleaner
  name: cleaner
spec:
  containers:
  - image: scalaone/cleanup-docker
    name: cleaner
    stdin: true
    stdinOnce: true
    tty: true
    volumeMounts:
    - mountPath: /var/run/containerd/containerd.sock
      name: containerdsock
      readOnly: true
  volumes:
  - name: containerdsock

    hostPath:
      path: /var/run/containerd/containerd.sock
EOF
```
