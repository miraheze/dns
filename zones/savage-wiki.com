$TTL 300
$ORIGIN savage-wiki.com.

@		SOA ns1.wikitide.net. hostmaster.wikitide.net. (
		20180829000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services
@		DYNA	geoip!cp

; Name servers
@		NS	ns1.wikitide.net.
@		NS	ns2.wikitide.net.

; Mail exchangers

; CAA (issue: symantec.com, iodef: mailto:caapolicy@wikitide.org)
@		TYPE257 \# 19 0005697373756573796D616E7465632E636F6D
@		TYPE257 \# 36 0005696F6465666D61696C746F3A636161706F6C6963794077696B69746964652E6F7267

; Servers

; Services
www		DYNA	geoip!cp

; load balancers

; Other
