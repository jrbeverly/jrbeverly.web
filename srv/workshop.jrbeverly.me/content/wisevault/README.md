+++
author="jrbeverly"
title="WiseVault"
date="2018-11-1"
description="Your digital passport; simple and secure."
tags=["wisevault"]
+++
<h1 align="center">
  <img alt="WiseVault" src="/img/wisevault.svg" width="200px" height="200px" />
  <br />
  WiseVault
</h1>

<p align="center">
  Your digital passport; simple and secure.
</p>

<br />

# Summary

WiseVault is your digital passport, a secret store for managing your passwords, keys, tokens and other secrets. It aims to create a hosted and self-hosted solution for the management of the secrets.

The hosted solution was aimed to target individuals, while the managed/self-hosted solution was available for enterprises.

Note: **Development of WiseVault has ceased as of 2018**

## Development

WiseVault was started in my enterprise co-op term. As time was limited (4 months), I set the aim of completing a prototype of WiseVault by the end of the term. The vision of this prototype changed multiple times throughout the term (both in scope and architecture). The final prototype was a self-hosted SaaS that worked for a single user.

The prototype allowed for the creation of a vault with personas, and the adding of these to the service. It supported the storage of passwords and blob objects. These would be encrypted and stored in a file on disk on the server.

Below are some compiled notes about the final prototype:

* Users had multiple 'Personas', which are just vaults within vaults
* Personas meant that not everything was accessible with a single password
* The vault was stored in an encrypted file at rest
* A PIN was required to access personas while within a vault

### Personas

The idea of personas was a means of limiting the access to the vault contents by workflows. It is based on the concept of marketing personas, but applied to different workflows one would have in a given day.

For example:

> Aaron
> Personal
>
> Goals:
>
> * Keep his financial systems secure
>
> Challenges:
>
> * Previously had a security breach at his bank
> * Cautious, frequently rotates his own keys
>
> Notes:
>
> * IT Professional

In this case, Aaron would have multiple personas for each workflow in his life:

* Daily: Access to his everyday sites (reddit / forums / etc)
* Developer: Access to elevated IT tools (SSH key to server / github / gitlab)
* Enterprise: Access to keys for his side projects / businesses (SSH key to web server / database passwords)
* Finances: Access to financial institutions (bank password / investment PINs)

By splitting each of these roles, it follows a limited access philosophy. If Aaron wants to gain access to his developer tools, he needs to elevate his permissions. Aaron can then customize each of these personas to restrict how and when he can access these personas.

### Mistakes and misconceptions

During my co-op term I got to try my hand at user interviews. In retrospect, these interviews would have benefited from a well-defined plan of action, as opposed to the free-form approach I took. However, that doesn't mean they weren't effective at shattering my misconceptions.

The most notable misconception I had was with the original vision of WiseVault. I originally envisioned WiseVault as a portable desktop application. You would have it running on your laptop or desktop, and would open the vault when you needed access to something. I thought it would address three points:

1) Own your data: No worries about whether we can leak your secrets
2) Privacy: You don't have to worry about tracking & cookies
3) Freedom: How you move around your vault is up to you (sync by dropbox, carry a USB)

This didn't work in practice though. Many users had multiple machines (laptop + desktop + mobile), and didn't have a strict separation of how they did things. Additionally, the reason for accessing something was not the same everytime. Sometimes they only needed to look at something, or make a small minor change.

Below are a list of simplified notes from my work term:

* How do keep a self-hosted solution secure?
* Hosted solutions: 'How are **YOU** going to X' is a common question
* Managed solutions are a good in-between, but adds a potential third-party
* Passwords are kind of a like a wallet (I don't always need to have access to my passport)
* Privacy is important to a subset, but not top of mind for everyone
* Why centralize secrets? (web passwords in browser, secrets in dirs, etc)
* As hosted provider, I can be seen as a third-party (e.g. password is between me & _website_, not WiseVault)

I have abstracted the above to make it more straightforward.
