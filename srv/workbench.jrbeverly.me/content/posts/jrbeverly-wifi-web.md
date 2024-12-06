---
author: "jrbeverly"
title: "wifi-web"
date: "2018-11-02T00:52:35Z"
description: "Wifi Web provides an autorun USB for connecting to wireless access points for devices that do not have access to a camera"
tags: ["jrbeverly"]
summary: |
  Wifi Web provides an autorun USB for connecting to wireless access points for devices that do not have access to a camera. It opens an HTML page that provides easy access to the Wifi connection details. If you have a camera-enabled device, you can scan Wifi connection details using a QR Code (or any barcode type).
---

| Wifi Web provides an autorun USB for connecting to wireless access points for devices that do not have access to a camera | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/wifi-web) |
| :-------- | -------: |


# Wifi Web

## Summary

Wifi Web provides an autorun USB for connecting to wireless access points for devices that do not have access to a camera. It opens an HTML page that provides easy access to the Wifi connection details.

If you have a camera-enabled device, you can scan Wifi connection details using a QR Code (or any barcode type).

## Installation

You can install Wifi Web onto a USB stick by unzipping the most recent build. You can use the `autorun.sh` or `autorun.bat` file to open the HTML page. If autorun is possible in the environment (unlikely), you will have the opporunity to open the HTML page when the USB device is connected. 

### Configuration

You need to manually edit the connection details, you can do so with the `js/connections.js` file. The file is of the format:

```javascript
exports = {
  connections: [
    {
      name: "My Wifi 2.4-Ghz",
      password: "Passw0rd!"
    },
    {
      name: "My Wifi 5-Ghz",
      password: "L337Pass"
    }
  ]
};
```

You can see an example of the file format in [`js/default.js`](src/js/default.js).

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [novita dian from the Noun Project](https://thenounproject.com/term/wifi/1105389/).