name="rhino-server-core"
url="https://github.com/oklopfer/debs/raw/master/empty.tar.xz"
pacdeps=("rhino-pkg-git" "rhino-neofetch-git")
description="Transitional package to provide minimal core Rhino Linux software"
maintainer="oklopfer <oren@taumoda.com>"
version="2023.1"
style="(server)"
branch="devel"
postinst() {
  echo "PRETTY_NAME=\"Rhino Linux ${version} ${style}\"
  NAME=\"Rhino Linux\"
  VERSION_ID=\"${version}\"
  VERSION=\"${version} ${style}\"
  VERSION_CODENAME=\"${branch}\"
  ID=ubuntu
  ID_LIKE=debian
  HOME_URL=\"https://rhinolinux.org/\"
  SUPPORT_URL=\"https://github.com/rhino-linux\"
  BUG_REPORT_URL=\"https://github.com/rhino-linux\"
  PRIVACY_POLICY_URL=\"https://www.ubuntu.com/legal/terms-and-policies/privacy-policy\"
  UBUNTU_CODENAME=\"${branch}\"" | sudo tee /usr/lib/os-release > /dev/null
}