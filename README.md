This is a fork of the https://github.com/iczelia/bzip3 repo with the addition of a working Bazel build setup.
The original build system was preserved.
The original README.md is [here](READMEORIG.md)

## Building from source

#### With defaults
```console
bazel build :all
```
#### With specific flags
```
bazel build :all --define=enable_arch_native=1 --define=enable_static_exe=1 --define=build_shared_libs=0 --define=enable_pthread=1
```

## TODO
- [ ] Add man pages generation
- [ ] Add man pages installation
- [ ] Add bin/lib installation
- [ ] Add bin/lib removal