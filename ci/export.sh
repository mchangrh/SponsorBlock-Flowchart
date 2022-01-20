#!/usr/bin/env bash
set -e
# Start Xvfb
export DISPLAY="${XVFB_DISPLAY}"
# shellcheck disable=SC2086
Xvfb "${XVFB_DISPLAY}" ${XVFB_OPTIONS} &

# start files
#"${DRAWIO_DESKTOP_EXECUTABLE_PATH}" --help
# png_small
#"${DRAWIO_DESKTOP_EXECUTABLE_PATH}" -x -o /data/export/SB_Flowchart_small.png -f png -s 200 /data/src/chart.drawio
# png large
#"${DRAWIO_DESKTOP_EXECUTABLE_PATH}" -x -o /data/export/SB_Flowchart_large.png -f png -s 300 /data/src/chart.drawio
# svg
#"${DRAWIO_DESKTOP_EXECUTABLE_PATH}" -x -o /data/export/SB_Flowchart.svg -f svg /data/src/chart.drawio
# xml
"${DRAWIO_DESKTOP_EXECUTABLE_PATH}" -x -f xml /data/src/chart.drawio