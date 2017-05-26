$TTL 300
$ORIGIN www.aksaraywiki.com.

@		SOA ns1.miraheze.org. hostmaster.miraheze.org. (
		20170407000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services
@		DYNA	geoip!mw

; Name servers
@		NS	ns1.miraheze.org.
@		NS	ns2.miraheze.org.

; Mail exchangers

; Servers

; Services

; load balancers

; Other
