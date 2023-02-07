# get_myip
检测本机IP地址

```
# Thanks 
# https://github.com/wangxiaoke123/233v2ray
# https://owo.misaka.rest/xui-routing/
get_ipv4() {
  ipv4=$(curl -4s https://api.myip.la)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s https://api.myip.com | jq -r '.ip')
  [[ -z $ipv4 ]] && ipv4=$(curl -4s https://myip.ipip.net | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}")
  [[ -z $ipv4 ]] && ipv4=$(curl -4s ipv4.icanhazip.com)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s ipget.net)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s https://api.ipify.org)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s https://ip.seeip.org)
  [[ -z $ipv4 ]] && ipv4=$(curl -4s https://ifconfig.co/ip)
  [[ -z $ipv4 ]] && echo -e "\n没有获得本机IPv4地址\n" 
}
get_ipv6() {
  ipv6=$(curl -6s https://api.myip.la)
  [[ -z $ipv6 ]] && ipv6=$(curl -6s ipv6.icanhazip.com)
  [[ -z $ipv6 ]] && ipv6=$(curl -6s ipget.net)
  [[ -z $ipv6 ]] && ipv6=$(curl -6s https://api.myip.com | jq -r '.ip')
  [[ -z $ipv6 ]] && ipv6=$(curl -6s https://ifconfig.co/ip)
  [[ -z $ipv6 ]] && echo -e "\n没有获得本机IPv6地址\n" 
}
get_ip() {
  ip=$(curl -s https://api.myip.la)
  [[ -z $ip ]] && ip=$(curl -s icanhazip.com)
  [[ -z $ip ]] && ip=$(curl -s ipget.net)
  [[ -z $ip ]] && ip=$(curl -s https://api.myip.com | jq -r '.ip')
  [[ -z $ip ]] && ip=$(curl -s https://ifconfig.co/ip)
  [[ -z $ip ]] && echo -e "\n没有获得本机IP地址\n" 
}
```
