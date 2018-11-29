os_platform() {
  uname -o | tr '[:upper:]' '[:lower:]'
}

os_arch() {
  uname -m
}
