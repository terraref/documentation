# Systems Configuration

The software that makes up the terraref system runs on different VM's. Some of the services leveraged by the systems runs in a replicated mode so that the overall
system will not stop working if any of the underlying VM's goes down.

Following is the overview of the system as it is running now:

![](/assets/systems.png)

- terraref is the frontend for everything, runs nginx
- terra-clowder runs the data management system clowder, connected to terra-mongo-[123], terra-es-[123], terra-postgres and roger filesystem (using NFS mount)
- terra-geodashboard runs the geodashboard software, connected to terra-clowder
- terra-thredds runs the thredds server (experimental), connected to roger filesystem (using NFS moutn)
- terra-es-[123] run elasticsearch 2.4 and for a cluster
- terra-mongo-[123] run mongo 3.6 in a replicated cluster, terra-mongo-3 is an arbiter and does not hold any data
- terra-postgres runs postgres 9.5
