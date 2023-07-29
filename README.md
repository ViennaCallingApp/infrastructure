# infrastructure

This repository contains the setup for the hosting of the `viennacalling` infrastructure.

## google

This contains the base setup for the cluster and nodes.

## nginx

Build files in `viennacalling/nginx` and deployment files in `deploy` configure an Nginx load balancer to route between the front-end and back-end services and thus avoiding CORS handling issues.
