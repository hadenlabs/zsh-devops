#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function devops::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_DEVOPS_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_DEVOPS_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_DEVOPS_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_DEVOPS_PATH}"/internal/helper.zsh
}

devops::internal::main::factory

if ! core::exists packer; then core::install packer; fi