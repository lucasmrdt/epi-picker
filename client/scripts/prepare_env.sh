VARIABLE_NAME="REACT_APP_IP"
ENV_PATH=.env
LOCAL_IP=$(ipconfig getifaddr en0)

IFS=""

ENV_CONTENT=$(sed -e "s/$VARIABLE_NAME.*/$VARIABLE_NAME=$LOCAL_IP/" $ENV_PATH)
ENV_CONTENT=$(tr ' ' '\n' <<< $ENV_CONTENT)
echo $ENV_CONTENT > $ENV_PATH
