#!/bin/bash

set -euo pipefail

readonly PROGRAMME=$(basename $0)
readonly USAGE="${PROGRAMME} COMMAND [OPTIONS]
A installer to prepare mac environment

Commands:
  show        Display the supported tools
  install     Install the tool(s). If no argument is provided, show all supported options to choose by name/index.
  uninstall   Uninstall the tool(s). If no argument is provided, show all supported options to choose by name/index.

Options:
  -a, --all     Install/Uninstall all tools.
  -i, --index   Install/Uninstall tool based on provided index[0,3].
  -n, --name    Install/Uninstall tool based on provided name(case sensitive).

Examples:
  ${PROGRAMME} show
  ${PROGRAMME} install
  ${PROGRAMME} install --index 1
  ${PROGRAMME} install --name docker
  ${PROGRAMME} uninstall --index 1
  ${PROGRAMME} uninstall --name docker
"
#echo "${USAGE}"

if [ "$#" -gt 0 ]; then
  while [ "$#" -gt 0 ]; do
    echo $1
    case $1 in
    show)
      echo "Showing supported tools:"
      ;;
    *)
      echo "${USAGE}"
    esac
    shift
  done
else
   echo "${USAGE}"
fi

function options() {

}