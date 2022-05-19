+++
author="jrbeverly"
title="vuln-disclosure-policy"
date="2022-05-13T03:25:29Z"
description="Vulnerability disclosure, based on the dioterms"
tags=["org:jrbeverly"]
+++

# Vulnerability Disclosure Policy from Dioterms

Exploring leveraging [dioterms](https://github.com/disclose/dioterms) and [policymaker](https://policymaker.disclose.io/policymaker) for creating vulnerability disclore policies for a website.

## Notes

- DNS is related for the deployment of the website (`_security`)
- Entry within the `/.well-known/` root of the domain (`example.com/.well-known/security.txt`)
- Security entry for the domain (`example.com/security`)
- If the application is located within `example.com/app/...` (e.g. `index.html`), then the top level domain elements can be "procedural"
- Construct the webpage into a bundle (`website.wbn`), publish it to the "deployer", which can then handle the top level elements
- References can still exist within the app (`/security`, `/.well-known/...`), known to the website manifest
- Website manifest allow it to enforce expectations about required top-level components
- Distributable/Sharable webpages can combine/merge these components (e.g. `website.wbn, website.manifest, website.policy`) with organization (or overwrite)


Acknowledgements:

- https://jacobian.org/2021/jul/8/appsec-pagnis/
- https://github.com/disclose/dioterms
- https://policymaker.disclose.io/policymaker