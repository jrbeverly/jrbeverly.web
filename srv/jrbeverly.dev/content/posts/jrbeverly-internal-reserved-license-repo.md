+++
    author="jrbeverly"
    title="internal-reserved-license-repo"
    date="2021-09-11T19:18:11Z"
    description="Experimenting with laying out the licensing stamp for a closed/internal source repository"
    tags=[
  "experiments",
  "licensing",
  "repository-templates"
]
    +++
    
# internal-reserved-license-repo

Experimenting with laying out the licensing stamp for a closed/internal source repository

## Notes

Experimenting with the idea of what license annotations would look like on an internal repository that is not intended for public distribution. This can seem odd, as the source code files of the project should not be distributed, so the only individuals viewing the license should be those with pre-approved access (i.e. contributors/employees).

The intention of this is to explore ideas around having tools & systems be aware of the licensing "intentions" of the source code. By that I mean, if an automated tool attempted to set a GitHub Repository to 'Public' or migrate it out to the organizations OSS/Public GitHub Organization, the `license.spdx` file would be noted as `UNLICENSED` (or the equivalent term) and refuse the action on the grounds that is not permit. Or just not show it as meeting the minimum requirement to be flagged as 'Open Source'.

I don't think designing everything to have consider what a `license.spdx` file would be the direction, but instead curious how an 'affix' or 'aspect' oriented style could work with this. This requires further investigation about intentions around annotating resources with external non-technical considerations like licensing/distribution.

