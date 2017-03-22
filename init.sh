__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

alias vpn_is_present="ansible-playbook -i ${__dir}/ec2.py ${__dir}/aws_vpn.yml"
alias update_security_group="ansible-playbook -i ${__dir}/hosts ${__dir}/update_security_group.yml"


export ANSIBLE_PRIVATE_KEY_FILE=${VM_TEMP_PATH}/ssh/${AWS_PREFIX}-key.pem
export ANSIBLE_REMOTE_USER=ubuntu


alias ssh_vpn="ssh -v -i ${VM_TEMP_PATH}/ssh/${AWS_PREFIX}-key.pem"