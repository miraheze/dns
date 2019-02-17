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
_acme-challenge.miraheze.com.   TXT     "3cbVoX26a4NWn_pUCl2r95P6TmENGOxSQkpvs3tJi9c"
_acme-challenge.miraheze.com.   TXT     "G0-9pGmFOlR5nwrtWHAlJShcxFjTIl4hrrIZaIh5-38"

_acme-challenge.miraheze.com.   TXT     "3qKX_VTCSOU3wcMNAqg3-YGkh6Zy6919VcPAXF-lVZk"
_acme-challenge.miraheze.com.   TXT     "Ptyt-iCn3cErDOFaZJti90OkB1Rjg9BK1_1AC2rSIVs"


; CAA (issue: letsencrypt.com, iodef: operations)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 37 0005696F6465666D61696C746F3A6F7065726174696F6E73406D69726168657A652E6F7267

; Servers

; Services

; load balancers

; Other

