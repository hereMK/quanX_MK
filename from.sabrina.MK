;“;” “#”为注释符号，去掉前面的符号，该行才会生效
; 基于STICK RULES项目的配置整理
; 自用规则，随缘更新。欢迎访问本人的小破站： https://merlinblog.xyz/
; https://github.com/solikethis/QuantumultX-demo/blob/master/SabrinaQuanxConf.conf

[general]
excluded_routes=192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, 17.0.0.0/8
network_check_url=http://cp.cloudflare.com/generate_204
server_check_url=http://www.qualcomm.cn/generate_204
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://github.com/KOP-XIAO/QuantumultX/raw/master/Scripts/IP_API.js
resource_parser_url=https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/resource-parser.js
profile_img_url=https://raw.githubusercontent.com/Orz-3/mini/none/qikuo.png
dns_exclusion_list = *.cmpassport.com, *.jegotrip.com.cn, *.icitymobile.mobi, id6.me, *.icitymobile.mobi, *.pingan.com.cn, *.cmbchina.com, *.localnetwork.uop, mfs.ykimg.com*.ttf

[dns]
no-ipv6
server=119.29.29.29
server=223.5.5.5
server=1.2.4.8
server=/*.taobao.com/223.5.5.5
server=/*.tmall.com/223.5.5.5
server=/*.alipay.com/223.5.5.5
server=/*.alicdn.com/223.5.5.5
server=/*.aliyun.com/223.5.5.5
server=/*.jd.com/119.28.28.28
server=/*.qq.com/119.28.28.28
server=/*.tencent.com/119.28.28.28
server=/*.weixin.com/119.28.28.28
server=/*.bilibili.com/119.29.29.29
server=/hdslb.com/119.29.29.29
server=/*.163.com/119.29.29.29
server=/*.126.com/119.29.29.29
server=/*.126.net/119.29.29.29
server=/*.127.net/119.29.29.29
server=/*.netease.com/119.29.29.29
server=/*.mi.com/119.29.29.29
server=/*.xiaomi.com/119.29.29.29
address=/mtalk.google.com/108.177.125.188


[policy]
# 其中 Apple Update 为屏蔽iOS系统更新的策略组，默认保持直连，如有需要屏蔽，请在面板自行切换至REJECT； CMedia 策略组为中国媒体（包括A站、B站、爱奇艺等）；
# GMedia 为国际媒体（包括HULU、HBO等）；
# Outside 指定访问境外网站时的策略或节点；Mainland 控制访问大陆网站时的策略；Others 为其他规则，若前边的规则都没有被匹配到，则听从此策略组的规定。
static=AdBlock, reject, direct, Outside, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/AdBlock.png
static=Netease Music, direct, proxy, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Netease_Music_Unlock.png
static=CMedia, direct, proxy, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/CMedia.png
static=TikTok, proxy, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/TikTok.png
static=GMedia, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/GMedia.png
static=Netflix, GMedia, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Netflix.png
static=Spotify, GMedia, Outside, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Spotify.png
static=YouTube, GMedia, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/YouTube.png
static=Telegram, Outside, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram_X.png
static=PayPal, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/PayPal.png
static=Outside, proxy, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Outside.png
static=Mainland, direct, proxy, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Mainland.png
static=Speedtest, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Speedtest.png
static=Apple Update, direct, reject, Outside, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple_Update.png
static=Apple, direct, Outside, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Apple.png
static=Microsoft, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Microsoft.png
static=Others, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Others.png
static=CN_MK, direct, Outside, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/CN.png
static=Genuine_IP, Outside, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/IEPL.png


[server_local]
# 本地服务器部分
; 自行添加即可


[server_remote]
# 节点远程订阅，自行添加

[filter_remote]
https://raw.githubusercontent.com/hereMK/quanX_MK/main/Genuine_IP,tag=Genuine_IP, enabled=true
https://raw.githubusercontent.com/hereMK/quanX_MK/main/CN_MK,tag=CN_MK, enabled=true
https://raw.githubusercontent.com/hereMK/quanX_MK/main/ACL4SSR/filter.ACL4SSR.microsoft, tag=Microsoft (ACL4SSR), enabled=true



https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/AdBlock.list, tag=AdBlock (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Apple.list, tag=Apple (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Optional/Netease%20Music.list, tag=Netease Music, enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/CMedia.list, tag=CMedia (Stick Rules), enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Filter/StreamingMedia/Video/TikTok.list, tag=TikTok (ConnersHua), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Optional/Netflix.list, tag=Netflix (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Optional/Spotify.list, tag=Spotify (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Optional/YouTube.list, tag=YouTube (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/GMedia.list, tag=GMedia (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Optional/Telegram.list, tag=Telegram (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Optional/PayPal.list, tag=PayPal (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Speedtest.list, tag=Speedtest (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Outside.list, tag=Outside (Stick Rules), enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Mainland.list, tag=Mainland (Stick Rules), enabled=true



[filter_local]
# 本地分流规则(相同规则下，本地规则将覆盖远程规则，优先生效)

# 其他
host-suffix, local, direct
host-keyword, merlinblog, proxy
ip-cidr, 10.0.0.0/8, direct
ip-cidr, 17.0.0.0/8, direct
ip-cidr, 100.64.0.0/10, direct
ip-cidr, 127.0.0.0/8, direct
ip-cidr, 172.16.0.0/12, direct
ip-cidr, 192.168.0.0/16, direct
geoip, cn, Mainland
final, Others

[rewrite_remote]
# rewrite 复写远程订阅
https://raw.githubusercontent.com/hereMK/quanX_MK/main/tiktok.quanX.UK, tag=TikTok解锁UK, enabled=false

[rewrite_local]
# 本地复写规则

[task_local]

[mitm]
# 以下为证书&主机名部分

