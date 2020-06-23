uv
==

> libuv bindings for [ZZ][zz].

## Installation

Put this in your `zz.toml`:

```toml
[repos]
uv = "git://github.com/zzmodules/uv"
```

## Usage

```c++
using uv::{
  uv_default_loop,
  uv_spawn,
  uv_kill,
  uv_run
}
```


## Version

The version of this module maps directly to the version of libuv used by
this module.

## License

MIT

[zz]: https://github.com/zetzit/zz
