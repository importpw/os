# os

Get information about the operating system in shell scripts.


## API

### `os_platform`

Prints the operating system platform as a lowercased string. Examples:

 * `darwin`
 * `linux`
 * `windows`

```bash
#!/usr/bin/env import
import "os"

os_platform
# linux
```

### `os_arch`

Prints the CPU architecture that the operating system is running on. Examples:

 * `x86`
 * `x86_64`

```bash
#!/usr/bin/env import
import "os"

os_arch
# x86_64
```

### `os_path_unshift`

Adds an entry to the _beginning_ of the `$PATH` environment variable.

```bash
#!/usr/bin/env import
import "os"

echo "\$PATH before: $PATH"
os_path_unshift "/foo/bin"
echo "\$PATH after:  $PATH"
```

### `os_path_push`

Adds an entry to the _end_ of the `$PATH` environment variable.

```bash
#!/usr/bin/env import
import "os"

echo "\$PATH before: $PATH"
os_path_push "/foo/bin"
echo "\$PATH after:  $PATH"
```
