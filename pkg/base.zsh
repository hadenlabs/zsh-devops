#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function devops::install {
    devops::internal::devops::install
}

function devops::post_install {
    message_info "Post Install ${DEVOPS_PACKAGE_NAME}"
    message_success "Success Install ${DEVOPS_PACKAGE_NAME}"
}
