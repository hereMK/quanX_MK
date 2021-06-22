;“;” “#” “//”为注释符号，去掉前面的符号，该行才会生效
; 基于STICK RULES、神机规则、mini等项目的配置整理
; “Sabrina的万事屋”博主自用规则模板，随缘更新。欢迎访问本人的小破站： https://merlinblog.xyz/
; 本次更新日期：2021/05/16

[general]
# QuanX会对server_check_url指定的网址进行相应测试，以确认节点的可用性
server_check_url=http://cp.cloudflare.com/generate_204

# list中的域名将不使用fake-ip方式, 多个域名用“, ”连接。其它域名则全部采用 fake-ip及远程解析的模式
dns_exclusion_list=*.cmpassport.com, *.jegotrip.com.cn, *.icitymobile.mobi, id6.me, *.pingan.com.cn, *.cmbchina.com

# 用于获取及展示节点信息
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://raw.githubusercontent.com/Orz-3/Orz-3/master/QuantumultX/IP.js

# 资源解析器，自定义各类远程资源的转换
resource_parser_url=https://cdn.jsdelivr.net/gh/KOP-XIAO/QuantumultX@master/Scripts/resource-parser.js

# 下列路径将不经过QuanX的处理
excluded_routes=239.255.255.250/32, 24.105.30.129/32, 185.60.112.157/32, 185.60.112.158/32, 182.162.132.1/32

[dns]
no-ipv6
server=119.29.29.29
address=/mtalk.google.com/108.177.125.188
server=/dl.google.com/119.29.29.29
server=/dl.l.google.com/119.29.29.29
# 指定域名解析dns
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


[policy]
# 其中 Apple Update 为屏蔽iOS系统更新的策略组，默认保持直连，如有需要屏蔽，请在面板自行切换至REJECT； CMedia 策略组为中国媒体（包括A站、B站、爱奇艺等）；
# GMedia 为国际媒体（包括HULU、HBO等）；
# Outside 指定访问境外网站时的策略或节点；Mainland 控制访问大陆网站时的策略；Others 为其他规则，若前边的规则都没有被匹配到，则听从此策略组的规定。
static=Outside, proxy, US-reg, SG-reg, HK-reg, TW-reg, JP-reg, direct, reg, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Outside.png
static=AdBlock, reject, direct, Outside, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/AdBlock.png
static=Netease Music, direct, Outside, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Netease_Music_Unlock.png
static=CMedia, direct, Outside, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/CMedia.png
static=TikTok, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/TikTok.png
static=GMedia, Outside, direct, US-reg, SG-reg, HK-reg, TW-reg, JP-reg, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/GMedia.png
static=Emby公益服, HK-reg, US-reg, SG-reg, TW-reg, JP-reg, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/GMedia.png
static=Netflix, GMedia, Outside, direct, US-reg, SG-reg, HK-reg, TW-reg, JP-reg, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Netflix.png
static=Spotify, GMedia, Outside, direct, US-reg, SG-reg, HK-reg, TW-reg, JP-reg, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Spotify.png
static=YouTube, GMedia, Outside, direct, US-reg, SG-reg, HK-reg, TW-reg, JP-reg, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/YouTube.png
static=Telegram, Outside, direct, US-reg, SG-reg, HK-reg, TW-reg, JP-reg, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram_X.png
static=PayPal, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/PayPal.png
static=Mainland, direct, Outside, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Mainland.png
#static=Speedtest, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Speedtest.png
static=Apple Update, direct, reject, Outside, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple_Update.png
static=Apple, direct, Outside, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Apple.png
static=Microsoft, Outside, direct, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Microsoft.png
static=Others, Outside, direct, US-reg, SG-reg, HK-reg, TW-reg, JP-reg, img-url=https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/IconSet/Others.png
static=CN_MK, direct, Outside, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/CN.png
static=TW_MK, TW-reg, Outside, proxy, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/TW.png
static=HK_MK, HK-reg, Outside, proxy, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/HK.png
#static=emby_SG_MK, SG-reg, proxy, direct, Outside, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/SG.png
#static=emby_HK_MK, HK-reg，proxy, direct, Outside, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/HK.png
static=US_MK, US-reg, Outside, proxy, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/US.png
static=JP_MK, JP-reg, Outside, proxy, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/JP.png
static=Genuine_IP, Outside, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/IEPL.png

static= HK-reg, server-tag-regex= 港|HK|HONG|Hong|HGC, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/HK.png
static= TW-reg, server-tag-regex= 台|台北|新北|彰化|TW|Tai, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/TW.png
static= US-reg, server-tag-regex= 美|波特兰|达拉斯|俄勒冈|凤凰城|费利蒙|硅谷|拉斯维加斯|洛杉矶|圣何塞|圣克拉拉|西雅图|芝加哥|纽约|US|United.*?States|Ameri, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/US.png
static= JP-reg, server-tag-regex= 日本|日|川日|东京|大阪|泉日|埼玉|沪日|深日|JP|Jap|京日|杭日|青日, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/JP.png
static= SG-reg, server-tag-regex= 新|狮城|SG|Singa|Sing|Sin, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/SG.png
static= reg, server-tag-regex= ||, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png

[server_local]
# 本地服务器部分
; 自行添加即可


[server_remote]
# 节点远程订阅，自行添加

[filter_remote]
https://raw.githubusercontent.com/hereMK/quanX_MK/main/Genuine_IP,tag=Genuine_IP, enabled=true
https://raw.githubusercontent.com/hereMK/quanX_MK/main/CN_MK,tag=CN_MK, enabled=true
https://raw.githubusercontent.com/hereMK/quanX_MK/main/TW_MK,tag=TW_MK, enabled=true
https://raw.githubusercontent.com/hereMK/quanX_MK/main/HK_MK,tag=HK_MK, enabled=true
https://raw.githubusercontent.com/hereMK/quanX_MK/main/US_MK,tag=US_MK, enabled=true
#https://raw.githubusercontent.com/hereMK/quanX_MK/main/SG_MK,tag=emby_SG_MK, enabled=true
#https://raw.githubusercontent.com/hereMK/quanX_MK/main/HK_MK,tag=emby_HK_MK, enabled=true
https://raw.githubusercontent.com/hereMK/quanX_MK/main/ACL4SSR/filter.ACL4SSR.microsoft, tag=Microsoft (ACL4SSR), enabled=true



https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Advertising.list, tag=AdBlock, force-policy=AdBlock, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/NobyDa/Script/master/Surge/AdRule.list, tag=AdBlock, force-policy=AdBlock, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Apple/AppStore.list, tag=Apple , force-policy=Apple, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Apple/AppStoreConnect.list, tag=Apple , force-policy=Apple, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Apple/TestFlight.list, tag=Apple , force-policy=Apple, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Optional/Netease%20Music.list, tag=Netease Music, enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/CMedia.list, tag=CMedia , enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Filter/StreamingMedia/Video/TikTok.list, tag=TikTok , enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Filter/StreamingMedia/Video/Netflix.list, tag=Netflix , force-policy=Netflix, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Filter/StreamingMedia/Music/Spotify.list, tag=Spotify , force-policy=Spotify, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Filter/StreamingMedia/Video/YouTube.list, tag=YouTube , force-policy=YouTube, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Streaming.list, tag=GMedia , force-policy=GMedia, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/Tartarus2014/For-own-use/master/Ruleset/Emby/Emby.list, tag=Emby公益服, force-policy=Emby公益服, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Optional/Telegram.list, tag=Telegram , enabled=true
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Optional/PayPal.list, tag=PayPal , enabled=true
#https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Speedtest.list, tag=Speedtest , enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Global.list, tag=Outside , force-policy=Outside, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/China.list, tag=Mainland , force-policy=direct, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/ChinaIP.list, tag=Mainland , force-policy=direct, update-interval=86400, opt-parser=true, enabled=true



[filter_local]
# 本地分流规则(相同规则下，本地规则将覆盖远程规则，优先生效)

# 其他
host-suffix, local, direct
host-keyword, merlinblog, Outside
ip-cidr, 192.168.0.0/16, direct
ip-cidr, 10.0.0.0/8, direct
ip-cidr, 172.16.0.0/12, direct
ip-cidr, 127.0.0.0/8, direct
ip-cidr, 100.64.0.0/10, direct
ip-cidr, 224.0.0.0/4, direct
ip6-cidr, fe80::/10, direct
-geoip, cn, direct
final, Others

[rewrite_remote]
# rewrite 复写远程订阅
# https://raw.githubusercontent.com/hereMK/quanX_MK/main/tiktok.quanX.UK, tag=TikTok解锁UK, enabled=false
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult%20X/TikTok-US.conf, tag=TikTok-US, update-interval=86400, opt-parser=false, enabled=false
https://subweb.oss-cn-hongkong.aliyuncs.com/Module/embyUnlocked.conf, tag=emby破解, enabled=false

[rewrite_local]
# 本地复写规则

[task_local]

[mitm]
# 以下为证书&主机名部分

