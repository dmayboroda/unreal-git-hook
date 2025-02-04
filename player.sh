#!/usr/bin/env bash
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# find all sound files, sort them and get the one based on the passed lua_index 
# lua_index starts with 1, sorry
function get_file() {
  local lua_index=$1
  if [ "$lua_index" -gt 12 ]; then
    lua_index=15
  fi
  local file
  file=$(find "$SCRIPT_DIR/unreal" -maxdepth 1 -type f | sort | sed -n "${lua_index}p")
  echo "$file"
}

function play() {
  local sound_file
  sound_file=$(get_file "$1")

    local players=(
        "afplay" 
        "mplayer" 
        "ffplay -autoexit -nodisp" 
        "cvlc --play-and-exit"
    )

    local played=false
    for player in "${players[@]}"; do
        if command -v "${player%% *}" &> /dev/null; then
            $player "$sound_file" &> /dev/null
            played=true
            break
        fi
    done

    if [ "$played" = false ]; then
        echo "No supported audio player found. Please install one of: afplay, mplayer, ffplay, or cvlc"
    fi
}

function play_praise() {
  local sounds=(13 14 15)
  local index=$((RANDOM % ${#sounds[@]}))
  play "${sounds[$index]}"
}

