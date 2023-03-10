#!/usr/bin/env bash

function acronym() {
  local acronym=""
  phrase="${1//[^a-zA-Z\']/ }"

  for word in $phrase; do
    acronym+="${word:0:1}"
  done

  echo "${acronym^^}"
}

acronym "$@"
