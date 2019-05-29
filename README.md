# kerasSingularity
A recipe file for singularity / keras on R. Included ar Centos 6 and Ubuntu 16.04 versions. Since our cluster uses the Centos 6 kernel, it isn't possible to use the latest versions.

The Centos version doesn't seem to work. The ubuntu version basically uses code from the rocker releases.


```
singularity pull shub://bcaffo/kerasSingularity:ubuntu16
```

Example useage
```
singularity shell -H $HOME:/home/$USER <image file>
```
where here setting the user home is necessary since on the host I'm working with the user home is in a different locale than on the guest OS.
