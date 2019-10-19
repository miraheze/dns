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

_acme-challenge.miraheze.com.   TXT     "4J6nF7XhcPa5boRo9Mia-KoIc-hZZt75Iqkoon808FM"
_acme-challenge.miraheze.com.   TXT     "etuezgd6z75VT4cEuKk8CG_GuGvR-I9dI2gBtJKzBl4"

_acme-challenge.miraheze.com.   TXT     "-rNAtB2nrtDMuZwxbWzLomh86hQLEPF0BbnSrFx_8Fg"
_acme-challenge.miraheze.com.   TXT     "-XcYjIJ8_ZQE4JoKtpk4WwJ-h2klA1DWwNH-B2cdPFo"

_acme-challenge.miraheze.com.   TXT     "Gzzms6BDZSgS2qv8qKei3-T5yCaK__G3wAlUSyPM3vo"
_acme-challenge.miraheze.com.   TXT     "X5l5c-JdR1KF6pTZc9Y3ScZPwqR0pNb0-A0TGVzgGuo"

; CAA (issue: letsencrypt.com, iodef: operations)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 37 0005696F6465666D61696C746F3A6F7065726174696F6E73406D69726168657A652E6F7267

; Servers

; Services

; load balancers

; Other

