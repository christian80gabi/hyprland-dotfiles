#!/usr/bin/env bash

ENV_PATH="${HOME}/.config/hypr/scripts/env.sh"
. $ENV_PATH

wofi --conf "${CONFIG}" --style "${STYLE}"
