#!/usr/bin/env sh

DIR="$(pwd)"
OBSERVIUM_TGZ_FILE="observium-community-latest.tar.gz"
OBSERVIUM_EXTRACTED_PATH="/tmp/observium"

cd /tmp
rm -f $OBSERVIUM_TGZ_FILE
wget -q https://www.observium.org/$OBSERVIUM_TGZ_FILE
tar -xzf $OBSERVIUM_TGZ_FILE
OBSERVIUM_VERSION=v$(grep OBSERVIUM_VERSION_LONG observium/includes/definitions/version.inc.php | awk -F "'" '{ print $4 }')

cd "$DIR"
git rev-list $OBSERVIUM_VERSION > /dev/null 2>&1
if [ "$?" -eq "0" ]
then
    echo "This Observium version ($OBSERVIUM_VERSION) already exists in git tags."
    exit
else
    echo "This Observium version ($OBSERVIUM_VERSION) doesn't exist in git tags: it will be added now."
fi

find . \
    -not \( -path '\./\.git/*' \
	-o -name .git \
	-o -name .gitlab-ci.yml \
	-o -name .gitlab-ci-update.sh \
    \) -delete

rsync -aP $OBSERVIUM_EXTRACTED_PATH/ ./

git config user.name "Phowork CI/CD"
git config user.email "$GIT_AUTHOR_EMAIL"
git add -A
git commit -m "from $OBSERVIUM_VERSION TGZ archive"
git tag -a "$OBSERVIUM_VERSION" -m "$OBSERVIUM_VERSION"
GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no" git push origin --all --follow-tags
