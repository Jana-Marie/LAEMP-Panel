# LAEMP-Panel

LAEMP-Panel is a Zigbee controllable (e.g. philips hue) RGBY + W spot, which can be soldered at home and is easy to assemble. The extra yellow channel gives a much wider dynamic.

<table>
  <tbody>
    <tr>
      <td>
        <img src="images/1.jpeg"/>
      </td>
      <td>
        <img src="images/2.jpg"/>
      </td>
    </tr>
  </tbody>
</table>

### Sister project

LAEMP-Panel is a sister project to [LAEMP-Prism](https://github.com/Jana-Marie/LAEMP-Prism)

## Firmware

There are two firmwares to be flashed, one for the ESP32 and one for the E75-2G4M20S.

### ESP32

This is a simple Arduino project and can be flashed via Arduino (initially built on Arduino 1.8.19).

### E75

Please refer to the awesome works of [PeeVeeOne](https://peeveeone.com/zll-tldr/) to flash `Light_ColorLight_JN5168_RGB` onto the E75-2G4M20S module.