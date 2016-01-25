$TTL 300
$ORIGIN publictestwiki.com.

@		SOA ns1.miraheze.org. hostmaster.miraheze.org. (
		20160125000001	; serial
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
@		NS	ns3.miraheze.org.

; Mail exchangers
@		MX	10	mx1.privateemail.com.
@		MX	10	mx2.privateemail.com.


; Mail policies
@		TXT	"v=spf1 include:_spf.google.com include:spf.privateemail.com ?all"

; Other
autodiscover	CNAME	privateemail.com
autoconfig	CNAME	privateemail.com
mail		CNAME	privateemail.com
