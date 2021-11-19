#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function devops::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_DEVOPS_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_DEVOPS_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_DEVOPS_PATH}"/config/linux.zsh
      ;;
    esac
}

devops::config::main::factory