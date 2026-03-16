#!/bin/sh
# Regenerate thumbnails from the photos/ directory.
# Run this after re-exporting photos from iCloud/iPhone.
set -e
cd "$(dirname "$0")"
mkdir -p thumbnails

echo "Generating photo thumbnails..."
for f in photos/*.png; do
  [ -f "$f" ] || continue
  name=$(basename "$f")
  python3 -c "
from PIL import Image
img = Image.open('$f')
img.thumbnail((120, 120))
img.save('thumbnails/$name', 'PNG', optimize=True)
"
  echo "  ✓ $name"
done

echo "Generating video thumbnails..."
for f in photos/*.mov; do
  [ -f "$f" ] || continue
  name=$(basename "$f" .mov)
  ffmpeg -i "$f" -ss 00:00:01 -vframes 1 -vf "scale=120:-1" "thumbnails/${name}.png" -y -loglevel error
  echo "  ✓ ${name}.png"
done

echo "Done."
