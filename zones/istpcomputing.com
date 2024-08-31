$TTL 300
$ORIGIN istpcomputing.com.

@		SOA ns1.wikitide.net. hostmaster.wikitide.net. (
		20220712000001	; serial
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

; CAA (issue: letsencrypt.org, iodef: mailto:caapolicy@wikitide.org)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 36 0005696F6465666D61696C746F3A636161706F6C6963794077696B69746964652E6F7267

; Mail exchangers

; Servers

; Services
www		CNAME	cf-lb.miraheze.org.

; load balancers

; Other
