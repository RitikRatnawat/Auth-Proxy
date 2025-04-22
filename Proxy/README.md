# Authentication Proxy
A reverse proxy and static file server based on **Oauth2-proxy(Golang module)** that provides authentication using Providers to validate accounts by email, domain or group.

Docs: [Oauth2 Proxy Docs](https://oauth2-proxy.github.io/oauth2-proxy/)


## Configuration
#### Using a Config file
```toml
# Provider Configuration
provider = "<provider_name>" # Here, we are using "oidc" for COIN integration 
provider_display_name = "<provider_display_name>" # Name to be displayed on the Webpage 
client_id = "<client_id>" # Client ID provided by the Authentication provider 
client_secret = "<client_secret>" # Client secret provided by the Authentication provider 
cookie_secret = "<cookie_secret>" # Secret string for creating session cookies
oidc_issuer_url = "<oidc_issuer_url>" # the OpenID Connect issuer URL
login_url = "<login_url>" # Login or Authentication Endpoint
redeem_url = "<redeem_url>" # Token redemption endpoint
profile_url = "<profile_url>" # Profile access endpoint
oidc_jwks_url = "<oidc_jwks_url>" # OIDC JWKS URI for token verification
prompt = "<prompt>" # OIDC Prompt
oidc_email_claim = "<oidc_email_claim>" # Which OIDC claim contains the user's email
code_challenge_method = "<code_challenge_method>" # use PKCE code challenges with the specified method. Either 'plain' or 's256' (recommended)

# Email Domain whitelist for Authentication
email_domains = ["<List of Email domains allowed to access the resource>"]

# Port Configuration
http_address = "<HTTP port to be exposed for the Proxy>"
https_address = "<HTTPS port to be exposed for the Proxy>"

# Upstream Service
upstreams = ["<List of HTTP urls to upstream after successful authentication>"]

# TLS Configuration
tls_cert_file = "<Path to the TLS Certificate file>" 
tls_key_file = "<Path to the TLS Private key>"

# Configuration for ignoring paths for Authentication
skip_auth_routes = ["<List of URL paths to ignored for Authentication>"]
```

#### Using Environment Variables
```bash
# Provider Configuration
OAUTH2_PROXY_PROVIDER = "<provider_name>" # Here, we are using "oidc" for COIN integration 
OAUTH2_PROXY_PROVIDER_DISPLAY_NAME = "<provider_display_name>" # Name to be displayed on the Webpage
OAUTH2_PROXY_CLIENT_ID = "<client_id>" # Client ID provided by the Authentication provider
OAUTH2_PROXY_CLIENT_SECRET = "<client_secret>" # Client Secret provided by the Authentication provider
OAUTH2_PROXY_COOKIE_SECRET = "<cookie_secret>" # Secret string for creating session cookies
OAUTH2_PROXY_OIDC_ISSUER_URL = "<oidc_issuer_url>" # the OpenID Connect issuer URL
OAUTH2_PROXY_LOGIN_URL = "<login_ur1>" # Login or Authentication Endpoint
OAUTH2_PROXY_REDEEM_URL = "<redeem_url>" # Token redemption endpoint
OAUTH2_PROXY_PROFILE_URL = "<profile_url>" # Profile access endpoint
OAUTH2_PROXY_OIDC_JWKS_URL = "<oidc_jwks_url>" # OIDC JWKS URI for token verification
OAUTH2_PROXY_PROMPT = "<prompt>" # OIDC Prompt
OAUTH2_PROXY_OIDC_EMAIL_CLAIM = "<oid_email_claim>" # Which OIDC claim contains the user's email
OAUTH2_PROXY_CODE_CHALLENGE_METHOD = "<code_challenge_method>" # use PKCE code challenges with the specified method. Either 'plain' or 'S256' (recommended)

# Email Domain whitelist for Authentication
OAUTH2_PROXY_EMAIL_DOMAINS = "<List of Email domains allowed to access the resource (separated by ,)>"

# Port Configuration
OAUTH2_PROXY_HTTP_ADDRESS = "<HTTP port to be exposed for the proxy>"
OAUTH2_PROXY_HTTPS_ADDRESS = "<HTPS port to be exposed for the Proxy>"

# Upstream Service
OAUTH2_PROXY_UPSTREAMS = "<List of HTTP urls to upstream after successful authentication (separated by ,) >"

# TLS Configuration
OAUTH2_PROXY_TLS_CERT_FILE = "<Path to the TLS Certificate file>"
OAUTH2_PROXY_TLS_KEY_FILE = "<Path to the TLS Private key>"

# Configuration for ignoring paths for Authentication
OAUTH2_PROXY_SKIP_AUTH_ROUTES = "<List of URL paths to ignored for Authentication (separated by ,)>"
```

> **Jupyter Auth Proxy** can be configured via command line options, environment variables or config file (in decreasing order of precedence, i.e. command line options will overwrite environment variables and environment variables will overwrite configuration file settings).
