uv
==

> ZZ Bindings for libuv

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

## License

MIT
