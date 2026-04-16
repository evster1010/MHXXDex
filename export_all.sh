#!/data/data/com.termux/files/usr/bin/bash

OUT=~/storage/downloads/mhxx_export
mkdir -p "$OUT"

sqlite3 mh4g.db <<EOF

.headers on
.mode json

.output $OUT/weapons.json
SELECT * FROM weapons;

.output $OUT/monsters.json
SELECT * FROM monsters;

.output $OUT/items.json
SELECT * FROM items;

.output $OUT/armor.json
SELECT * FROM armor;

.output stdout
EOF
