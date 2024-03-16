$TTL 300
$ORIGIN miraheze.com.

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

; Mail policies

; Miscellaneous

_acme-challenge.miraheze.com.	TXT	"OvFteDERJQofKT3AzqZUihlEE_d9O9f4KSavZzxUbVc"
_acme-challenge.miraheze.com.   TXT     "ZlqFACVW9MBZiHGox0WSZmU9P5ItQBmqQyfV8dusn0M"
miraheze.com.                   TXT     "google-site-verification=6VTOzpQjKwJaim0vE1GjI2vAgZb5T8v40lvJ3LkdhEE"
_acme-challenge.miraheze.com.   TXT     "RT3MSH4mpp-W8kScpao5Qqmw9l5Pw_LHWHC7klo9kS0"
_acme-challenge.miraheze.com.   TXT     "qQ_l0Sg48bP0pzCfuDQzGxMszxFJ6BFmYWjqgnR7ugs"

; CAA (issue: letsencrypt.org, iodef: mailto:caapolicy@wikitide.org)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 36 0005696F6465666D61696C746F3A636161706F6C6963794077696B69746964652E6F7267

; Servers

; Services

; load balancers

; Other

