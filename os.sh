os_platform() {
  local platform
  platform=$(uname -o | tr '[:upper:]' '[:lower:]')

  if [ "$platform" = "gnu/linux" ]; then
    platform="linux"
  else

  echo "$platform"
}

os_arch() {
  uname -m
}
