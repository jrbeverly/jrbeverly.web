+++
    author="jrbeverly"
    title="home"
    date="2020-11-28T02:46:39Z"
    description="Ansible descriptions of internal home network"
    tags=[
  "ansible",
  "homelab",
  "raspberrypi"
]
    +++
    
# HomeLab - Internal Tooling

Ansible playbooks for configuring services running within my internal home cloud.

## Getting Started

### DevContainers

The DevContainer environment can be started by opening the repository in VSCode and installing the 'Remote - Containers' extension. When started, the prompt will build and image and configure the container.

The deployments to any of the environment can be triggered by running any of the helper scripts available in `/opt/bin`. To deploy the codelab environment, you can run `codelab`.

### Local Environment

The local environment can be setup by running the command:

```bash
source .devcontainer/local/setup.bash
```

Deployments for the environments can then be triggered by running the scripts available `local/`. This requires docker on the machine to run.

## Configuration

### MediaLab Images

The medialab environment has the requirement of specifying all server images as `images.json`, as most of the projects do not have official images, and this lets the images change in a jq-friendly manner.

The sample of these look like so:

```json
{
  "emby": "ghcr.io/linuxserver/...",
  "indexer": "ghcr.io/linuxserver/...",
  "downloader": "ghcr.io/linuxserver/...",
  "movie_manager": "ghcr.io/linuxserver/...",
  "tv_manager": "ghcr.io/linuxserver/..."
}
```

### DNS Secrets

The secrets for use in DNS and VPN connectivity are specified as environment variables, and the environment file defining them is available in LastPass under `HomeLab`. These secrets are necessary for all web-enabled machines.

The sample of these look like so:

```bash
export NAMECHEAP_TOKEN='xyz'
export OPENVPN_USERNAME='pXX123' 
export OPENVPN_PASSWORD='abc'
```

## Structure

All docker related outputs are dumped to the `/srv` directory. THis acts as the _root_ for the docker containers running on any of the servers. The top level contains the `docker-compose` YAML files that define what is running on the machine. This is split into different kinds of components (nginx, server, utility) to make it easier to share concepts between machines.

The intended directory structure is like so:

```
> srv/
   > etc/   : secrets, environment variables and configuration data
   > data/  : data shared between the deployed server
   > tmp/   : temporary data (or data that can be destroyed + recreated)
```

The code uses copy-over-ref for the YAML configuration to allow each machine to be slightly unique in its configuration if the need presents itself.

## Notes

I've been running variations of my home network for a while now, with varying degrees of complexity. Some times running a full suite of software development tooling, or just running a couple of simple websites for hosting home media/photos. The biggest issue I've had is with configuration getting out of date.

Even when tracking the docker-compose files in GitHub, they tended to get out-of-sync as the way of making changes was to `scp+docker-compose up` or `git pull+docker-compose up`. Eventually they would get in a bad state, remain in that state for a while due to time constraints, and just be a pain.

Switching to ansible for this, along with this design structure is intended to remove this annoying burden, by making ansible the primary way to make changes. Any changes that exist within `/srv` that is _infrastructure_ related that is not managed by ansible should be blown away.

This hopefully will make issues related to the docker images less of a problem in the long term for running this infrastructure.