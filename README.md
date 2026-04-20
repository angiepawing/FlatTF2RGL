# FlatTF2RGL

A fork of CleanTF2plus that focuses on flattening textures, while excluding materials that would have been made invisible, which would break RGL [Rule 1003.3 - Game Exploits](https://docs.rgl.gg/rules/global/1003/#1003_3-game-exploits).

[Example Showcase](https://imgur.com/a/flat-texture-issue-rgl-q3Jepn9)

## Flat Texture Modes

Flat: Flattens textures into a solid color, but does not work on sv_pure servers.

Resized: Flattens textures into a 1x1 size, which workes on sv_pure servers. This will create a subtle grid-like pattern.

## Install

1. [Download the vpk from releases](https://github.com/angiepawing/FlatTF2RGL/releases/tag/v1)
2. Move the vpk file to /tf/custom/
3. Done!

Creating your own VPK:

1. Download zip
2. Unzip to custom folder
3. Run generate.bat
4. Select the options you want
5. Done!

## Turn into VPK

Having folders inside custom makes load times slower (regardless of contents) and vpk files exist to speed up load times. For this reason, a utility is provided to convert FlatTF2RGL into a VPK file.

When you have fully generated the options you wanted:
1. Run pack_vpk.bat
2. Move/delete FlatTF2RGL folder out of custom (otherwise there is no load time benefit)

## Note

I've done my absolute best to ensure that there are absolutely zero rule breaking textures still included, but if you do find any, please open an issue or a pull request.