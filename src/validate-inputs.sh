#!/usr/bin/env sh

SRC_DIR=$(dirname $(realpath "$0"))
BPKG_BIN_DIR="${SRC_DIR}/.bpkg/bin"

. "${BPKG_BIN_DIR}/fabasoad-validate-enum"

_run_validator() {
  func_name="${1}"
  shift

  set +e
  err_msg=$(${func_name} "$@" 2>&1 >/dev/null)
  exit_code=$?
  if [ "${exit_code}" -ne 0 ]; then
    echo "::error title=Invalid parameter::${err_msg}"
    exit ${exit_code}
  fi
  set -e
}

validate_enum() {
  _run_validator "fabasoad_validate_enum" "$@"
}

main() {
  input_force="${1}"

  validate_enum "force" "${input_force}" "true,false"
}

main "$@"
