# Authentication Proxy Helm Charts
Helm Charts for deploying reverse proxy and any application(using Jupyter Notebook Server here) based on **Oauth2-proxy(Golang module)** that provides authentication using Providers to validate accounts by email, domain or group.

Jupyter Authentication Proxy Docs: [Click Here](./Proxy/README.md) <br/>
Jupyter Notebook Server Docs: [Click Here](./Jupyter/README.md)


## Configuation
### Generating Client ID
> Do generate a Client ID and Secret for the application for any of the supported OAuth2 Provider.

### Generating a Cookie Secret
To generate a strong cookie secret use one of the below commands:

**Using Python**
```python
python -c "import secrets; print(secrets.token_hex(16))"
```

**Using BASH** 
```bash
dd if=/dev/urandom bs=16 count=1 2>/dev/null | base64 | tr-d -- '\n' | tr --'+/''-_' ; echo
```

> Update all the required configuration either using the configuration file or Environment variables.