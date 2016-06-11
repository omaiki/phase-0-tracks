Linux is often used for VMs because it is free
  - Ubuntu is a popular choice
  - need software in VM to run
    - popular choices - Apache, nginx


# What are some of the key design philosophies of the Linux operating system?

Some key design philosophies for Linux OS's are:

* Each program should do one thing well
* The smaller the better
* Portability over efficiency
* Data is stored in flat text files
* Use Shell Scripts


# What is a VPS, what are its advantages?

Virtual Private Servers are VMs sold by internet hosting services and allow you to virtualize an operating system... they are basically servers running within servers. One server hosts multiple virtual servers (VPS's), it allows allow one computer to have several operating systems, one within each seperate VPS.

# Root user on Linux system?

It's a bad idea to run programs as the root user on a Linux OS because it is a security issue. Whenever a program is a run as the root user, any possible bugs in a file or a virus can cause damage to your system. When you are the root user, there are no checks because you are able to do everything as opposed to being in non-administrative mode (another user).