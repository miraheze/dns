$TTL 300
$ORIGIN mwcosmos.com.

@		SOA ns1.miraheze.org. hostmaster.miraheze.org. (
		20240116000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services
@		DYNA	geoip!cp2

; Name servers
@		NS	ns1.miraheze.org.
@		NS	ns2.miraheze.org.

; CAA (issue: letsencrypt.com, iodef: mailto:sre@wikitide.org)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 37 0005696F6465666D61696C746F3A6F7065726174696F6E73406D69726168657A652E6F7267

; Miscellaneous

; Mail exchangers

; Servers

; Services
www			DYNA	geoip!cp2
discord-chatlogs	CNAME	universal-omega.github.io.

; load balancers

; Other