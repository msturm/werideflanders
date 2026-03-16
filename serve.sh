#!/bin/sh
cd "$(dirname "$0")"
echo "Opening Ronde van Vlaanderen map at http://localhost:8765"
open http://localhost:8765 &
python3 -m http.server 8765
