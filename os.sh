os_platform() {
  local platform
  platform="$(uname -s | tr '[:upper:]' '[:lower:]')"
  echo "$platform"
}

os_arch() {
  uname -m
}
