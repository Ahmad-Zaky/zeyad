mkdir -p ~/.ssh
touch ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-keyscan -H 'gitlab.com' >> ~/.ssh/known_hosts
chmod 644 ~/.ssh/known_hosts
echo -e "Host *\n\tStrictHostKeyChecking no\n\n" >> ~/.ssh/config
chmod 600 ~/.ssh/config