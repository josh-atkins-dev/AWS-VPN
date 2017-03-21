__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

alias vpn_is_present="ansible-playbook -i ${__dir}/hosts ${__dir}/aws_vpn.yml"