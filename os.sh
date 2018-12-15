import "string@0.0.1"

os_platform() {
  local platform
  platform="$(uname -s | string_lower)"
  echo "$platform"
}

os_arch() {
  local arch
  arch="$(uname -m)"
  echo "$arch"
}

os_path_push() {
  local dir="$1"
  local IFS=:
  local sep=
  local path=
  for p in $PATH; do
    if [ -n "$p" ] && [ "$p" != "$dir" ]; then
      path="${path}${sep}${p}"
      sep=:
    fi
  done
  export PATH="${path}${sep}${dir}"
}

os_path_unshift() {
  local dir="$1"
  local IFS=:
  local sep=
  local path=
  for p in $PATH; do
    if [ -n "$p" ] && [ "$p" != "$dir" ]; then
      path="${path}${sep}${p}"
      sep=:
    fi
  done
  export PATH="${dir}${sep}${path}"
}
