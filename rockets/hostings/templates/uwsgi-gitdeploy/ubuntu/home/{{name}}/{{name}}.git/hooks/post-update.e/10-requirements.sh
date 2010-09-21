
HOME_DIR="/home/{{name}}/uwsgi/app{{secret}}"
ENV_DIR="/home/{{name}}/env"
REQUIREMENT_FILE="$HOME_DIR/requirements.ini"

echo "Installing requirements.ini..." >&2
if [ -f $REQUIREMENT_FILE ]
then 
	$ENV_DIR/bin/pip install -r $REQUIREMENT_FILE | sed "s@$HOME_DIR/@@g" | sed "s@$ENV_DIR/@@g"
fi
