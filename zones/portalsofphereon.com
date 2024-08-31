$TTL 300
$ORIGIN portalsofphereon.com.

@		SOA ns1.wikitide.net. hostmaster.wikitide.net. (
		20191128000001	; serial
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
@		MX	1	ASPMX.L.GOOGLE.COM.
@		MX	5	ALT1.ASPMX.L.GOOGLE.COM.
@		MX	10	ALT3.ASPMX.L.GOOGLE.COM.

; CAA (issue: letsencrypt.org, iodef: mailto:caapolicy@wikitide.org)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 36 0005696F6465666D61696C746F3A636161706F6C6963794077696B69746964652E6F7267

; Servers

; Services
www		CNAME	cf-lb.miraheze.org.

; load balancers

; Miscellaneous

portalsofphereon.com.   TXT     "google-site-verification=07tDAfwRr6KvnZRzcIdMCm7dfyJm9pOSRVMpxPxZxqM"

; Other
