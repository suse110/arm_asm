make > build.log 2>&1

grep -E "error:|undefined\ reference|multiple\ definition" build.log
