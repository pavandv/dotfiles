# rm -rf ${HOME}/.ssh
# ln -s ${gdrive}/work/ssh ${HOME}/.ssh

SSH_DIR="${HOME}/.ssh";

[ ! -d $SSH_DIR ] && mkdir ${SSH_DIR};

rm -f ${SSH_DIR}/config
cat ${dtf_location}/files/ssh-configs/* >> ${SSH_DIR}/config

for file in ${0:A:h}/src/**/**/*; do
	source $file;
done;

function create_ssh_key() {
    EMAIL=$1;
    FILE_NAME=$2;

    if test -z "$EMAIL"; then
        echo "Email is needed"
        return 5;
    fi;

    if test -z ${FILE_NAME}; then
        echo "File name is needed"
        return 1;
    fi;

    ssh-keygen -t rsa -C "$EMAIL" -o -f ~/.ssh/${FILE_NAME}
}

function sshgl() {
    # rm -f ${HOME}/.ssh/scm-default/gitlab
    # cp ${HOME}/.ssh/${1}/scm/gitlab ${HOME}/.ssh/scm-default/gitlab
    # chmod 400 ${HOME}/.ssh/scm-default/gitlab

    load-ssh-profile gitlab
}

function sshgh() {
    # rm -f ${HOME}/.ssh/scm-default/github
    # cp ${HOME}/.ssh/${1}/scm/github ${HOME}/.ssh/scm-default/github
    # chmod 400 ${HOME}/.ssh/scm-default/github

    load-ssh-profile github
}

function sshbb() {
    rm -f ${HOME}/.ssh/scm-default/bitbucket
    cp ${HOME}/.ssh/${1}/scm/bitbucket ${HOME}/.ssh/scm-default/bitbucket
    chmod 400 ${HOME}/.ssh/scm-default/bitbucket
}

function unload_ssh_profiles() {
    ssh-add -D; # delete all identites from ssh-agent
}

function load-ssh-profile() {
    SSH_PROFILE=$1;

    unload_ssh_profiles;
    ssh-add ~/.ssh/$SSH_PROFILE
}

function show-ssh-profile() {
    ssh-add -l;
}

function eval-ssh() {
    eval $(ssh-agent -s);
}
