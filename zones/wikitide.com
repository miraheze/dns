$TTL 300
$ORIGIN wikitide.com.

@		SOA ns1.wikitide.net. hostmaster.wikitide.net. (
		20240116000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services
@		DYNA	geoip!cp
*		DYNA	geoip!cp

; Name servers
@		NS	ns1.wikitide.net.
@		NS	ns2.wikitide.net.

; CAA (issue: letsencrypt.com, iodef: mailto:sre@wikitide.org)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 37 0005696F6465666D61696C746F3A6F7065726174696F6E73406D69726168657A652E6F7267

; Mail exchanges
@			MX	10	smtp.google.com.

; Mail policies
wikitide.com.		TXT	"v=spf1 include:_spf.google.com ~all"

; Mail autodiscovery
_imaps._tcp		IN SRV	0 0 993	imap.gmail.com.
_submission._tcp	IN SRV  0 0 587	smtp.gmail.com.

;; DKIM - Policy: Mail may be signed. Not required.
mail._domainkey		TXT	"v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvn/JeGnNnhRHqyvuHEJxY87GckiFFGnx5lhWGY2oKJtt6yR74VXSi3UAonUIjlfkDl+KqrNZtRtTIVLsLU8eTx67xJGi5oOgdv2nu0EwOAbDU9EWZjoA1FrJKRfFLfyfkRhnXLX0WTIXs5v+lWz9FAva+E/muXBb5PRk0UpaiorN5oGXyX18T0Xdnmq07aG5TgNeQQgYX2hSxY9njb9Lpw8KDAqH2exczmtQP/dmY5Yc0UmvRcBSAQ8yc9RtAGtzcDzaidtjyyolyQDcYVcW4p8nv8Wzhr8/EKrS0qKq4WV5OfVfWhfPH+iFQ1mJPphN7IrH5vAlxudJQm72LAKDcwIDAQAB"

;; DMARC - Policy: Reject - unauthorized mail will not send, remote SMTPs will just drop the mail.
_dmarc			TXT	"v=DMARC1;p=quarantine;pct=100;fo=1"

; BIMI - Used for verified emails
default._bimi		TXT	"v=BIMI1;l=https://static.wikitide.net/commonswiki/e/ea/WikiTide_BIMI.svg;a="

; Services

; load balancers

; Miscellaneous
_acme-challenge.wikitide.com.	TXT     "PbOWecuJrhv2mDR0PGy5eqdiR2XsNBHJHylJaY6n5OE"	
_acme-challenge.wikitide.com.	TXT     "ANFnqKm0lt9d8vlr3zdeP0zmBzvf3WgQOt01OjNimz8"

; Other
