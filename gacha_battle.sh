# Copy old images for gacha battle
# $1 = 140318 (ngay release cu)
# $2 = 20140318 (ngay release cu)

# $2 = 140418 (ngay release moi)
# $3 = 508 (card_id1 cu)
# $4 = 600 (card_id1 moi)
# $5 = 703 (card_id2 cu)
# $6 = 800 (card_id2 moi)
# $7 = 20140318 (ngay release cu)
# $8 = 20140418 (ngay release moi)
# $9 = 10222 (item_id1 cu)
# $10 = 10223 (item_id2 cu)
# $11 = 10224 (item_id3 cu)
# $12 = 10252 (item_id1 moi)
# $13 = 10253 (item_id2 moi)
# $14 = 10254 (item_id3 moi)
echo copy start
cp -ir ../kingdom/htdocs/img_kingdom/gacha/battle_$1 ../kingdom/htdocs/img_kingdom/gacha/battle_$2
find ../kingdom/htdocs/img_kingdom/gacha/battle_$2 -type f -name "*$3*" | while read filename; do mv -v "${filename}" "`echo "${filename}" | sed -e "s/$3/$4/"`"; done
find ../kingdom/htdocs/img_kingdom/gacha/battle_$2 -type f -name "*$5*" | while read filename; do mv -v "${filename}" "`echo "${filename}" | sed -e "s/$5/$6/"`"; done
find ../kingdom/htdocs/img_kingdom/banner/ -type f -name "*$7*" | while read filename; do cp -v "${filename}" "`echo "${filename}" | sed -e "s/$7/$8/"`"; done
find ../kingdom/htdocs/img_kingdom/card/sp_a/ -type f -name "*$9*" | while read filename; do cp -v "${filename}" "`echo "${filename}" | sed -e "s/$9/${10}/"`"; done
find ../kingdom/htdocs/img_kingdom/card/sp_a/ -type f -name "*$9*" | while read filename; do cp -v "${filename}" "`echo "${filename}" | sed -e "s/$9/${10}/"`"; done
find ../kingdom/htdocs/img_kingdom/card/sp_a/ -type f -name "*$9*" | while read filename; do cp -v "${filename}" "`echo "${filename}" | sed -e "s/$9/${10}/"`"; done
echo copy finish
