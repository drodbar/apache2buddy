#!/bin/bash

BRANCH='master'
REPO_URL="https://raw.githubusercontent.com/drodbar/apache2buddy"
FULL_URL="${REPO_URL}/${BRANCH}"
TEMPILE="$(mktemp)"
script="$(curl -sL ${FULL_URL}/apache2buddy.pl > "${TEMPILE}")"

scriptmd5sum="$(md5sum "${script}" | cut -d " " -f1)"
originmd5sum="$(curl -s ${FULL_URL}/md5sums.txt | cut -d " " -f1)"
echo "md5sum [$originmd5sum] expected [$scriptmd5sum]"
if [[ "$scriptmd5sum" != "$originmd5sum" ]]; then
    echo "Error: MD5SUM mismatch, execution aborted."
    exit 1
fi

scriptsha256sum="$(sha256sum "${script}"| cut -d " " -f1)"
originsha256sum="$(curl -s ${FULL_URL}/sha256sums.txt | cut -d " " -f1)"
echo "sha256sum [$originsha256sum] expected [$scriptsha256sum]"
if [[ "$scriptsha256sum" != "$originsha256sum" ]]; then
    echo "Error: SHA256SUM mismatch, execution aborted."
    exit 1
fi

mv "${TEMPILE}" apache2buddy.pl
