---
author: "jrbeverly"
title: "pushgateway-compose-setup"
date: "2022-03-15T22:33:21Z"
description: "Docker-compose case for Pushgateway experiments"
tags: ["jrbeverly"]
summary: |
  Simple code setup for spinning up Pushgateway, Prometheus & Grafana for validating lifecycle pushgateway metrrics.
---

| Docker-compose case for Pushgateway experiments | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/pushgateway-compose-setup) |
| :-------- | -------: |


# Pushgateway Compose Setup

Simple code setup for spinning up Pushgateway, Prometheus & Grafana for validating lifecycle pushgateway metrrics.

## Notes

- Metrics published to pushgateway are collected by Prometheus
- Prometheus is enabled in Grafana for queries 
- Grafana datasources & dashboards are configured from the provisioning directory
- The script `publish.sh` can be used to publish the metrics into the system
- Dashboards in `grafana/dashboards` can be configured with other tools for construction
- Dashboards could be standardized, then shared into other sources
- Tools can be configured for publishing in these scenarios
