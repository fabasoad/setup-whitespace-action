#!/usr/bin/env sh

SCRIPT_PATH=$(realpath "$0")
SRC_DIR_PATH=$(dirname "$SCRIPT_PATH")
LIB_DIR_PATH="${SRC_DIR_PATH}/lib"

. "${LIB_DIR_PATH}/logging.sh"

main() {
  input_force="${1}"

  java_installed=$(if command -v java >/dev/null 2>&1; then echo true; else echo false; fi)
  echo "java-installed=${java_installed}" >> "$GITHUB_OUTPUT"

  bin_installed="false"
  if command -v wspace >/dev/null 2>&1; then
    if [ "${input_force}" = "false" ]; then
      msg="Installation skipped."
      bin_installed="true"
    else
      msg="Executing forced installation."
    fi
    log_info "wspace is found at $(which wspace). ${msg}"
  else
    log_info "wspace is not found. Executing installation."
  fi
  echo "bin-installed=${bin_installed}" >> "$GITHUB_OUTPUT"

  bin_dir="wspace_$(date +%s)"
  echo "bin-dir=${bin_dir}" >> "$GITHUB_OUTPUT"

  bin_path="$GITHUB_WORKSPACE/${bin_dir}"
  echo "bin-path=${bin_path}" >> "$GITHUB_OUTPUT"
}

main "$@"
