#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function devops::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_DEVOPS_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_DEVOPS_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_DEVOPS_PATH}"/pkg/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_DEVOPS_PATH}"/pkg/helper.zsh

    # shellcheck source=/dev/null
    source "${ZSH_DEVOPS_PATH}"/pkg/alias.zsh
}

devops::pkg::main::factory
