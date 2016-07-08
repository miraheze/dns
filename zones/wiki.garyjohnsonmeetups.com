$TTL 300
$ORIGIN wiki.garyjohnsonmeetups.com.

@		SOA ns1.miraheze.org. hostmaster.miraheze.org. (
		20160708000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services

; Name servers
@		NS	ns1.miraheze.org.
@		NS	ns2.miraheze.org.

; Mail exchangers

; Servers

; Services
wiki	DYNA	geoip!mw

; load balancers

; Other
