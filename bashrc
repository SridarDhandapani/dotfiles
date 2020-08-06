#!/usr/bin/env bash

#source bash completion...
#if $(which brew &>/dev/null) && [ -f $(brew --prefix)/etc/bash_completion ]; then
    #. $(brew --prefix)/etc/bash_completion
#fi
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

[ -r $HOME/.django_bash_completion ] && . $HOME/.django_bash_completion

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

#powerline
#powerline-daemon -q
#export POWERLINE_BASH_CONTINUATION=1
#export POWERLINE_BASH_SELECT=1

[ -r $HOME/.shell_prompt.sh ] && . $HOME/.shell_prompt.sh
[ -r $HOME/.bash_aliases ] && . $HOME/.bash_aliases

#AWS completion
complete -C aws_completer aws

#GoLang
GOPATH=$HOME/Development/go
export GOPATH
export PATH=$PATH:$GOPATH/bin

export HOMEBREW_GITHUB_API_TOKEN=aece27f0fc0119751c932a60ed9e263a673324e9
export MACHINE_GITHUB_API_TOKEN=aece27f0fc0119751c932a60ed9e263a673324e9

#ImageMagick - Photospire
#MAGICK_HOME=${HOME}/Photospire/ImageMagick-6.9.3
#PATH=${MAGICK_HOME}/bin:${PATH}
#DYLD_LIBRARY_PATH=${MAGICK_HOME}/lib:${DYLD_LIBRARY_PATH}
#export MAGICK_HOME PATH DYLD_LIBRARY_PATH

#GNU tar 
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"
export PATH MANPATH

#DigitalOcean
export DIGITALOCEAN_ACCESS_TOKEN=61c32deccf40627f762d5db9fc7d170e568ecb414991323f6e41f238e8d7f237
export DIGITALOCEAN_SSH_USER=core
export DIGITALOCEAN_REGION=lon1
export DIGITALOCEAN_IMAGE=core-stable
export DIGITALOCEAN_SIZE=512mb

function set_aws_credentials() {
    eval $(awk 'BEGIN {RS=""} /^\['${1:-default}'\]/ {print "export",toupper($2)"="$4; print "export",toupper($5)"="$7}' ~/.aws/credentials)
}

#Google Cloud Platform
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

#Facebook app
function set_facebook_app() {
    export FACEBOOK_APP_ID='1481540525461543'
    export FACEBOOK_APP_SECRET='a976fa7f83192b3e988eefbeaf1bb7d2'
    export FACEBOOK_BUSINESS_ID='148587068890966'
    export FACEBOOK_SYSTEM_USER_ID='100015370230541'
    export FACEBOOK_SYSTEM_USER_ACCESS_TOKEN='EAAVDdAi9kCcBACVHcGtj9Nv2ZBgXEZBGyrzRUihEGZC8G0inXCITrcIuEyX1uvVT7CBhR6czZB9QqlrZCl8JaViUyZCbojscwdeEBgD24OK5LEB3BedujZB5vbD2fo0UE4moka3H5fUhGVY59JwZBtM62gdtDbYKC355dDmW297ZBKQZDZD'
    export FACEBOOK_SYSTEM_USER_ACCESS_TOKENS='EAAVDdAi9kCcBACVHcGtj9Nv2ZBgXEZBGyrzRUihEGZC8G0inXCITrcIuEyX1uvVT7CBhR6czZB9QqlrZCl8JaViUyZCbojscwdeEBgD24OK5LEB3BedujZB5vbD2fo0UE4moka3H5fUhGVY59JwZBtM62gdtDbYKC355dDmW297ZBKQZDZD,EAAVDdAi9kCcBAHRyZCtzvR2GAnJBatZCPw4H4HOPRZBuakmHgX6Td2slNBWXS5U64rWGMrATBI6RLcA5h7uI1pvY9ajmqoiSwsKYcd8fF2jrPnQQPie0PUDgNQuv1CI4kJErsi2YFQQ7qLoD23Ptbj69PtL4eSZAtoySsLcgpzOAVEIcH94N,EAAVDdAi9kCcBAHNiF64ANOvCydkY9r4Gng2rFZB3df7ZBmaUYgERYJH6W9yLzxMw0Vq7v1uPoNkvw4muf91ZClbMtI8jtDxohG8HNbCeoZA7d4pwiOmbc1awVME8BqRB9GBtBJ5v2BKveimtpcvSbi4AWymyf53fvdn67aIuIIUbQ0s9U9VW,EAAVDdAi9kCcBABn8nNZAdx2hkVTp8Fnzu9aZCZCEJYhnZBC9xV0W3MaUZANM5qf87BFieU8gYQooBckZA5lnMZBaV9GFEhsmW8JZBN0CbLZAZACzx1qf4WeanJcKDYHy3VO6kZAlbspbJ9PcZB6gMyuNex1mSHl3fHeXbeqdq13Mxq38UpMy9XC520cj,EAAVDdAi9kCcBAETeaDeDwEzb9tgkDhadZBsNo1jtoDfvX1bSy4EPFNhyJWCrTlhw3X5EHY7YgAFTxawKT8iZAZCsuijABubSBozkKIZCZCja1bB2kYUvT1u2StBLLYLmKcOPX9SEZBZAFG32Y95XbMx9lH2oWZC6KF68xCADtjX7ZA4BDCHBOuTAY,EAAVDdAi9kCcBAPn3QZCV4t4WxnK5vFJm4RZB77mQTVAHfxZBtSIUEuhWZBP2sLiXerubCkouSDCUF3tXBvZBXBTwrneEPKMlWGhbdVmHfgqlKMQcAXRNxDZCQ6xjpIzd5zKs3uGHvb5OjJnw30lTsu1HvGsJZBkpxdM8ZB4wUdZAlYFZAaPxrRREYL'
    export FACEBOOK_ADMIN_SYSTEM_USER_ID='100015258549462'
    export FACEBOOK_ADMIN_SYSTEM_USER_ACCESS_TOKEN='EAAVDdAi9kCcBAO0luIkWur8C0qVcuTuCuxhAVTahjxYRv1UvyvsLA0SHV6AchZBOPX1WycW2Wvb5JJmGFXTVQyVMWIVXzZAho32GZAabuO1hhLU66J3uxw7bcfCGYjfXlJsHxrDezLT6XmF2hZB0mGfdgjDMMxkoNhZALMPhcDgZDZD'
    export FACEBOOK_USER_ACCESS_TOKEN='EAAVDdAi9kCcBAKYhPx4ssliEZBRrXpXme3r56gXApRs1XI5f61uOOzc5gkAZA3n74JrG7v1BXhL5diRpkwFWvOIwCdBNuwVflQoQesXYZAI5TYHtwnNd7xNERiT30bTgIDYrwo9bDB4aiCV1S7ZCknpF8705ZCIoZD'
}

# Google service account
set_google_environment () {
    export GOOGLE_SERVICE_ACCOUNT_TYPE="service_account"
    export GOOGLE_SERVICE_ACCOUNT_PROJECT_ID="photospire-services"
    export GOOGLE_SERVICE_ACCOUNT_PRIVATE_KEY_ID="9c71c62f995403d147c4fbdea20f9b1fb1eba1cf"
    export GOOGLE_SERVICE_ACCOUNT_PRIVATE_KEY="-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDNJ85+godMcBxQ\nM9R3g06fRw05mzC1DDsI1v7iT0lvbpiGyjWEHc3ifVXAV1kUua0qyEkGtoqp/WlD\nYqMlUKSNUkeczlboS3UBOI68v4YLKpJLshMNCiQLvU9B2U1TYdHuOeb44Dy2gehw\nvyhtAJ+F0yBylstnlCF6+0vsP7csED7ol97R5Z+MExGlFdj6bi2lgKkibbXM+4sQ\nB6O0fmLA4L42bUcg7MBOlMQR5JcQ9YS/NtCv0TgOGAQPLqXBgbfF5o8SJfc+DyH2\nxPZbzOzsxnHc3qHJLHLxul9eIMilhic39eNBXZT6HYCWS0YGU5uut6f3CUAeibJm\nNb+pYK0rAgMBAAECggEAIH5JimgKHeUz1tAeur8lWLzcL1+RG1vQjdnfjOCZ9PhD\nWDX2u/Ishc7sIgazqUCvWLNYPaPz2nC0l2OsC2D2bxu1E/Tqduhco9Ddaq+6/1HC\n0hJmSg5tHx7gysEsKiS4J08scgayFwYEVrcwI/ORUJTb8spHdSRVGTFsGQMOc//l\nyuVRyRe8vBsgpCULwLjuew0ifC1K36FJx6+ssDJdPTSVXH+UHULf1RhrGpakEVzg\nhwP+VkxQkHfNh8ER/IIo3s3nQstK1q5hCWtmtLJvusHjmytaibrokAguLWg0ozod\np8XJ0aBUbRTh8a1aMS3pxBVVah22VpAyT8zyTjmfYQKBgQD79JRkQVDIh6Ixs3k/\ncyHMiW3yujR/fpXxoEVc/RNQWIp1mg2oW6zkTpeEs+R+ZP+vh2GNEXTru3X37TYT\nw7kFn6ArP6NZdjcG7UfCGbI9lrui4nXIs3zhVcWLtn+rIRcVEYK0507h77GLIGSf\nD0NvQLjSG2YhkfE1NzmLLHTPNwKBgQDQcuan4oXmBCX65L7VkEI857LiX4wzhXC2\nUT1iPkxB3pMv0pvISC9CTVNdevX3616nDU0w0X7BZwt00Aa7rpA7voYqll5e/WG7\nJywcFhPeET4MgqwvR3gR+wmvtON1CPQH8UpmGquaV9Sm3vtfSCbjrKlEjuh1wAdz\nOEbVA5UDrQKBgHgSFqWwes8V1DXbUezq8TCITd1e36XirZJ4zpWCBbJEf7eLsvaI\nudwTmCGlmT6i4zbDTbnsl8u/inickyjYHVSQvcPej/oSXCbw7UGS/V5cdw8o3PjI\nkLrSJVJvpmfnXRitP5z2nqENmY6z4T/sBjb+oRV/+SwGYOz7ZHDuvrwBAoGAYJ1h\nG197AGnb0LZFXWdHzEL4PsRaj2bCHz74XJjTb5RiVEAhxGrwvKJqiWF8sDR/4p3f\nsUjon2vLe5EQDd2TLJ3aQdMAWrbGnaBCaaIyAzOqttG6TQ+rL2pTywTkiFJmCWhl\nO34RG7Cp985SZI9ktxJIQmaaiDlBOr5S1liasOECgYEAxvToTYpjlCSDmmIGn6cJ\nOHf0RDN99lUfcCG2/pm2xa35QfM46m9p9j/PeAfpk5sNQI6CdR+x4ACPuQSTDqQe\n3kaEf1UomzGyUkgYvjkNnUBdE4VmZLigohoOEWYzdincPvng3P8tKo3B/xGzYcOV\nNXAY0sciGtTiLk7Lf2fglKs=\n-----END PRIVATE KEY-----\n"
    export GOOGLE_SERVICE_ACCOUNT_CLIENT_EMAIL="drive-service-account@photospire-services.iam.gserviceaccount.com"
    export GOOGLE_SERVICE_ACCOUNT_CLIENT_ID="117580564322002203002"
    export GOOGLE_SERVICE_ACCOUNT_AUTH_URI="https://accounts.google.com/o/oauth2/auth"
    export GOOGLE_SERVICE_ACCOUNT_TOKEN_URI="https://accounts.google.com/o/oauth2/token"
    export GOOGLE_SERVICE_ACCOUNT_AUTH_PROVIDER_X509_CERT_URL="https://www.googleapis.com/oauth2/v1/certs"
    export GOOGLE_SERVICE_ACCOUNT_CLIENT_X509_CERT_URL="https://www.googleapis.com/robot/v1/metadata/x509/drive-service-account%40photospire-services.iam.gserviceaccount.com"
}

check_site_ssl_cert() {
    echo | openssl s_client -servername ${1} -connect ${1}:443 2>/dev/null | openssl x509 -noout -dates
}

# footer:
PATH="$(printf "%s" "${PATH}" | /usr/bin/awk -v RS=: -v ORS=: '!a[$0]++')"
export PATH

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/sridar/Photospire/pscluster/text-render/node_modules/tabtab/.completions/serverless.bash ] && . /Users/sridar/Photospire/pscluster/text-render/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/sridar/Photospire/pscluster/text-render/node_modules/tabtab/.completions/sls.bash ] && . /Users/sridar/Photospire/pscluster/text-render/node_modules/tabtab/.completions/sls.bash

#Virtualenvwrapper
export WORKON_HOME=${HOME}/Virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
#[ -r /usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper.sh


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash

 #Heroku autocomplete
#heroku autocomplete:script bash


###-begin-graphql-completions-###
#
# yargs command completion script
#
# Installation: /usr/local/bin/graphql completion >> ~/.bashrc
#    or /usr/local/bin/graphql completion >> ~/.bash_profile on OSX.
#
_yargs_completions()
{
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=$(/usr/local/bin/graphql --get-yargs-completions "${args[@]}")

    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=( $(compgen -f -- "${cur_word}" ) )
    fi

    return 0
}
complete -F _yargs_completions graphql
###-end-graphql-completions-###


# Elastic beanstak deployed git hash
function get_eb_git_hash() {
    application_name=${1:-"photospire_platform"}
    environment_type=${2:-"prod"}
    eval aws elasticbeanstalk describe-environments --application-name ${application_name} |jq -c ".[][] | select (.EnvironmentName |contains(\"-${environment_type}\")) | {Name: .EnvironmentName, GitHash: .VersionLabel | split(\"_\")[-1]}"
}

export GIT_ACCESS_TOKEN='zQJudC8LZzxLsFj1di-5'

# Rust - Cargo
export PATH=$PATH:$HOME/.cargo/bin
