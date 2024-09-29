This repository provides the prerequisites to build [Claws Mail](https://www.claws-mail.org) with a [fix](https://www.claws-mail.org/bugzilla/show_bug.cgi?id=2451) for GMail unread messages count in the system tray icon on [COPR](https://copr.fedorainfracloud.org/) for Fedora. It uses the [Claws Mail](https://src.fedoraproject.org/rpms/claws-mail) package from the Fedora Project as its base.

To build your own claws-mail for e.g. Fedora 39:
1. Set up your COPR access as described in the [User Documentation](https://docs.pagure.org/copr.copr/user_documentation.html)
2. Run
    ```
    copr create claws-mail \
                --chroot fedora-39-x86_64
    ```
    to create your project.
3. Run
    ```
    copr add-package-custom claws-mail \
                            --name claws-mail \
                            --script-builddeps "git rpkg" \
                            --script copr_script.sh
    ```
    to add your package.
4. Run
    ```
    copr build-package claws-mail \
                       --name claws-mail
    ```
    to build your package.
