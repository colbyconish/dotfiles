default_name="main"

output=$(tmux list-session | grep $default_name)
attached=$(echo "$output" | awk "/attached/{print}")
if [ -n "$attached" ]; then
    tmux new-session 
else
    tmux new -As "$default_name"
fi
