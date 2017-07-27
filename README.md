# Miraheze DNS Production Configuration

All changes pushed to this repository are automatically deployed to nameservers every 10th minute.
Syntax is checked for changes go live however so please be aware when pushing changes.

# CAA Records

From September 2017, CAA records will be mandatory for CAs.
A CAA record is a DNS record which allows DNS admins to authorise CAs to issue SSL certificates for certain domains.
This decreases the chance of phising through fake issuance of SSL certificates from *genuine* CAs.
Further, this allows Miraheze to more realistically control which [CAs are allowed onto our platform](https://meta.miraheze.org/wiki/Special:Diff/13904#WoSign_and_StartSSL_untrusted_on_FF).

Unfortunately due to a lack of upstream implementation, CAA records have to defined using TYPE257 instead of the more appealing CAA.

To allow a CA to issue a certificate, check the box at [SSLMate CAA Generator](https://sslmate.com/labs/caa/) and use "Legacy Zone File" value.

All CAA definitions should end with a location to email violations too which can be done as:
TYPE257	\# 37 0005696F6465666D61696C746F3A6F7065726174696F6E73406D69726168657A652E6F7267

Not all CAs currently support CAA such as GlobalSign and GoDaddy. This has to change in the next month however.
