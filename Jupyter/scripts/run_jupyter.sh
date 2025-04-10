echo "Running Jupyter Server"
export JUPYTER_SERVER_IP=`hostname -i`

python -m notebook --config=/app/config/jupyter_server_config.py \
                   --ip=$JUPYTER_SERVER_IP