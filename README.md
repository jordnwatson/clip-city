# Clip City — Desktop App

This folder wraps your Clip City dashboard (`index.html`) in Electron, so it runs as a real
desktop app instead of a browser tab.

## Requirements

- [Node.js](https://nodejs.org) installed on your PC (LTS version, 18+). The installer includes `npm`.

## Run it (development mode)

Open a terminal in this folder and run:

```
npm install
npm start
```

A window titled **Clip City** should open. That's it — this is enough for daily personal use.
Every time you want to use the app, run `npm start` again (or see "shortcut" below).

## Build an installer (.exe / .dmg / .deb)

Once `npm start` works, you can package it into a real installable app:

```
npm run make
```

This creates an installer under `out/make/`:
- **Windows** → `.exe` installer (Squirrel)
- **macOS** → `.dmg`
- **Linux** → `.deb`

Run the installer it produces and Clip City will show up like any other installed app,
with its own icon, in your Start Menu / Applications folder.

## Make a one-click shortcut without building an installer

If you don't want to bother with `npm run make`, you can still get a double-click launch:

**Windows:** right-click on desktop → New → Shortcut → point it at:
```
"C:\Program Files\nodejs\node.exe" "<full path to this folder>\node_modules\.bin\electron" "<full path to this folder>"
```
(easier: create a `.bat` file in this folder with `npm start` inside it, and shortcut to that)

**Mac/Linux:** create a small shell script `run.sh` with:
```bash
#!/bin/bash
cd "$(dirname "$0")"
npm start
```
then `chmod +x run.sh` and double-click it (Mac may ask you to allow it in Security settings).

## Your data

All your trends, creators, clips, and board cards live in the app's memory while it's open —
same as the browser version. Use the **Backup Data** tab inside the app to export/import a
`.json` file so you don't lose your work between sessions.

## Updating the app later

If you (or I) update `index.html` with new features, just replace the `index.html` file in this
folder and run `npm start` again — no other changes needed.
