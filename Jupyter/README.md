# Jupyter Notebook Server
This directory creates a Jupyter Notebook Server Image.

## Description
### config/jupyter_server_config.py
This file contains the configurations for the Jupyter Notebook Server like hostname, port, authentication token etc.

### scripts/run-jupyter.sh
The BASH script which will configure the Notebook Auth Token with Jupyter Notebook Server configuration.


## Local Developer Setup
### Setup your virtual environment
```bash
python -m venv .env
source .env/Scripts/activate
```

### Install Dependencies
```bash
pip install --no-cache-dir -r requirements.txt
```

### Run the Jupyter Notebook Server
```bash
python -m notebook --port=8080
```