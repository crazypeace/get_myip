# Thanks 
# https://github.com/wangxiaoke123/233v2ray
# https://owo.misaka.rest/xui-routing/
get_ipv4() {
  ipv4=$(curl -4s --connect-timeout 3 https://api.myip.la)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s --connect-timeout 3 https://api.myip.com | jq -r '.ip')
  [[ -z $ipv4 ]] && ipv4=$(curl -4s --connect-timeout 3 https://myip.ipip.net | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}")
  [[ -z $ipv4 ]] && ipv4=$(curl -4s --connect-timeout 3 ipv4.icanhazip.com)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s --connect-timeout 3 ipget.net)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s --connect-timeout 3 https://api.ipify.org)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s --connect-timeout 3 https://ip.seeip.org)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s --connect-timeout 3 https://ifconfig.co/ip)
  [[ -z $ipv4 ]] && echo -e "\n没有获得本机IPv4地址\n" 
}
get_ipv6() {
  ipv6=$(curl -6s --connect-timeout 3 https://api.myip.la)
  [[ -z $ipv6 ]] && ipv6=$(curl -6s --connect-timeout 3 ipv6.icanhazip.com)
  [[ -z $ipv6 ]] && ipv6=$(curl -6s --connect-timeout 3 ipget.net)
  [[ -z $ipv6 ]] && ipv6=$(curl -6s --connect-timeout 3 https://api.myip.com | jq -r '.ip')
  [[ -z $ipv6 ]] && ipv6=$(curl -6s --connect-timeout 3 https://ifconfig.co/ip)
  [[ -z $ipv6 ]] && echo -e "\n没有获得本机IPv6地址\n" 
}
get_ip() {
  ip=$(curl -s --connect-timeout 3 https://api.myip.la)
  [[ -z $ip ]] && ip=$(curl -s --connect-timeout 3 icanhazip.com)
  [[ -z $ip ]] && ip=$(curl -s --connect-timeout 3 ipget.net)
  [[ -z $ip ]] && ip=$(curl -s --connect-timeout 3 https://api.myip.com | jq -r '.ip')
  [[ -z $ip ]] && ip=$(curl -s --connect-timeout 3 https://ifconfig.co/ip)
  [[ -z $ip ]] && echo -e "\n没有获得本机IP地址\n" 
}
