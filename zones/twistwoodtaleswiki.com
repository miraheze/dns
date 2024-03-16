$TTL 300
$ORIGIN twistwoodtaleswiki.com.

@		SOA ns1.wikitide.net. hostmaster.wikitide.net. (
		20221110000001	; serial
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

; CAA (issue: letsencrypt.com, iodef: operations)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 37 0005696F6465666D61696C746F3A6F7065726174696F6E73406D69726168657A652E6F7267

; Mail exchangers

; Servers

; Services
www		DYNA	geoip!cp

; load balancers

; Other
