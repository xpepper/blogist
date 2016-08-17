token=$(git config github.oauth-token)
if [ -z $token ]
then
		echo "getting the token from github"
		token="48b0ffa4189667f7d7af04d816e3d230368fbd5cb342a4672d8b2542668f0cac"
fi
travis encrypt "GH_TOKEN=$token" --add
echo "now open https://travis-ci.org/profile and toggle on the repo"
