#!/usr/bin/env bash

set -euo pipefail

if [[ -n "${NODE_BINARY:-}" && -x "${NODE_BINARY}" ]]; then
  exec "${NODE_BINARY}" "$@"
fi

if [[ -s "${HOME}/.nvm/nvm.sh" ]]; then
  export NVM_DIR="${HOME}/.nvm"
  # shellcheck source=/dev/null
  . "${NVM_DIR}/nvm.sh" >/dev/null 2>&1 || true
fi

if [[ -n "${NVM_BIN:-}" && -x "${NVM_BIN}/node" ]]; then
  exec "${NVM_BIN}/node" "$@"
fi

resolved_node="$(bash -ic 'command -v node' 2>/dev/null | tail -n 1)"
if [[ -n "${resolved_node}" && -x "${resolved_node}" ]]; then
  exec "${resolved_node}" "$@"
fi

resolved_node="$(command -v node 2>/dev/null || true)"
if [[ -n "${resolved_node}" && -x "${resolved_node}" ]]; then
  exec "${resolved_node}" "$@"
fi

echo "Unable to locate a usable Node.js binary." >&2
exit 1
