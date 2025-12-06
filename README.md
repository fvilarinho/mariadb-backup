Synopsys
========
This a base image to backup a relational database.
It uses the `ghcr.io/fvilarinho/base-image` and [mariadb-client](https://mariadb.org/).
The configurations/settings are defined using the JSON format and stored in the `etc` directory.

How to use
==========
Just put the line below in your Dockerfile.

`FROM ghcr.io/fvilarinho/mariadb-backup:1.2.0` - To use the last stable version.

`FROM ghcr.io/fvilarinho/mariadb-backup:latest` - To use the development version.

License
=======
This image is licensed under the Apache 2.0. Please read the licence file or check the URL [https://www.apache.org/licenses/LICENSE-2.0.txt](https://www.apache.org/licenses/LICENSE-2.0.txt)

Contact
=======
**Website:** - https://vilanet.sh

**e-Mail:**
- fvilarinho@gmail.com
- fvilarinho@outlook.com
- me@vila.net.br

and that's all! Have fun!