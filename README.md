# We Ride Flanders 2025

An interactive map of my participation in the **We Ride Flanders 2025** sportive — a 158km cycling event through the Flemish Ardennes following parts of the iconic Ronde van Vlaanderen (Tour of Flanders) route.

🗺️ **Live map: [msturm.github.io/werideflanders](https://msturm.github.io/werideflanders)**

## What's on the map

- **Official Ronde van Vlaanderen route** — the full ~270km professional race route from Brugge to Oudenaarde
- **We Ride Flanders planned route** — the 158km sportive route (via RouteYou)
- **My ridden route** — what I actually cycled, recorded via Strava
- **Climbs & cobbled sections** — all hellingen and kasseistroken along the route, with gradient info
- **Photos & videos** — geotagged media taken during the ride, shown as pins on the map

All three routes can be toggled on/off independently.

## Running locally

Requires Python 3 (for the local server):

```sh
./serve.sh
```

This starts a local server and opens the map at [http://localhost:8765](http://localhost:8765).

## Project structure

```
index.html                              — the map (single-page app)
serve.sh                                — local development server
route.gpx                               — official RvV route
routeyou-2025-we-ride-flanders-158km.gpx — planned sportive route
We_ride_Flanders_rit.gpx                — my Strava recording
climbs.csv                              — climb data
photos.json                             — geotagged photo/video metadata
thumbnails/                             — small previews shown on the map
photos/                                 — full-size photos & videos (not in repo, see PHOTOS.md)
make-thumbnails.sh                      — regenerate thumbnails from photos/
```

## Tech

- [Leaflet.js](https://leafletjs.com/) — interactive map
- [OpenStreetMap](https://www.openstreetmap.org/) — map tiles
- [Cloudflare R2](https://developers.cloudflare.com/r2/) — full-size photo/video hosting
- [GitHub Pages](https://pages.github.com/) — static site hosting
