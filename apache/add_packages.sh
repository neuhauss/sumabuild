#!/bin/bash
set -e
set -x

zypper --non-interactive --gpg-auto-import-keys ref

zypper --non-interactive in aaa_base aaa_base-extras net-tools timezone vim less sudo tar python python-xml apache2 apache2-prefork
