__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

alias vpn_is_present="ansible-playbook -i ${__dir}/ec2.py ${__dir}/aws_vpn.yml"

export ANSIBLE_PRIVATE_KEY_FILE=${VM_TEMP_PATH}/ssh/${AWS_PREFIX}-key.pem