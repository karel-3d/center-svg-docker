# center-svg-docker
Docker image for recentering SVG

Use this to cut any SVG to its actual content, then put it in a square canvas and center it both horizontally and vertically.

```
docker run --user="$(id -u):$(id -g)" -v ${PWD}:/project karel3d/center-svg original.svg centered.svg
```

It writes out some random Inkscape assertion errors, ignore them.

I use it for generating fonts with fontcustom, that doesn't center glyphs vertically. It could be useful to someone else too

Original script https://github.com/skagedal/svgclip , I updated it for python 3
