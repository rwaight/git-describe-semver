FROM scratch
LABEL "org.opencontainers.image.source" = "https://github.com/rwaight/git-describe-semver"
LABEL "org.opencontainers.image.url" = "https://github.com/rwaight/git-describe-semver"
LABEL "org.opencontainers.image.description" = "Replacement for `git describe --tags` that produces [semver](https://semver.org/) compatible versions that follow to semver sorting rules."
LABEL "org.opencontainers.image.documentation" = "https://github.com/rwaight/git-describe-semver"
ENTRYPOINT ["/bin/git-describe-semver"]
COPY git-describe-semver /bin/git-describe-semver
WORKDIR /workdir
# need to review https://docs.github.com/en/actions/creating-actions/dockerfile-support-for-github-actions