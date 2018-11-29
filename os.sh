os_platform() {
  local platform
  platform="$(uname -o | tr '[:upper:]' '[:lower:]')"

  if [ "$platform" = "gnu/linux" ]; then
    platform="linux"
  fi

  echo "$platform"
}

os_arch() {
  uname -m
}
