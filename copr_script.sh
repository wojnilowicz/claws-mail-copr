#! /bin/bash -x

# Download this repo with its submodule https://src.fedoraproject.org/rpms/claws-mail.git inside the COPR build system
git clone --depth 1 --recurse-submodules https://github.com/wojnilowicz/claws-mail-copr.git
cd claws-mail-copr

# Download claws-mail-%{version}.tar.xz from the Fedora's server
rpkg --path ./claws-mail sources

# Patch the spec file to build with the 0001-Notify-on-unread-messages-also-in-the-systray.patch
patch -d ./claws-mail -p1 < modify.patch

# Move all the source files into the parent directory for the COPR build system to find them
mv ./claws-mail/* ../
