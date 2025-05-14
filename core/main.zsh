#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function devops::core::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_DEVOPS_PATH}"/core/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_DEVOPS_PATH}"/core/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_DEVOPS_PATH}"/core/linux.zsh
      ;;
    esac
}

devops::core::main::factory