echo "Running Jupyter Server"
export JUPYTER_SERVER_IP=`hostname -i`

jupyter notebook --config=/app/config/jupyter_server_config.py \
                   --ip=$JUPYTER_SERVER_IP