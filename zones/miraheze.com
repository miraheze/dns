$TTL 300
$ORIGIN miraheze.com.

@		SOA ns1.miraheze.org. hostmaster.miraheze.org. (
		20180829000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services
@		DYNA	geoip!cp

; Name servers
@		NS	ns1.miraheze.org.
@		NS	ns2.miraheze.org.

; Mail exchangers

; Mail policies

; Miscellaneous

_acme-challenge.miraheze.com.   TXT     "avjB6KX324renEcLlN3aJwa_AaJ4wlgElcu4NLvZfLw"
_acme-challenge.miraheze.com.   TXT     "k_8I39zw3UaNzrKqRg3HFDKSZP_C1tcFcZN7ZQKiEjk"

_acme-challenge.miraheze.com.   TXT     "6qbKJh36McspsmAh1KtZri54gX9F881vLN08x7F--RM"
_acme-challenge.miraheze.com.   TXT     "0Nt6d7sP2biUxB-aX1BGLf1oyLnnG83BKDLyQq5Woas"

; CAA (issue: letsencrypt.com, iodef: operations)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 37 0005696F6465666D61696C746F3A6F7065726174696F6E73406D69726168657A652E6F7267

; Servers

; Services

; load balancers

; Other

