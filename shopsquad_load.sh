echo -e "\n\nStarting Redis...\n\n"
cd $HOME/src/redis-*
src/redis-server redis.conf &
cd $HOME/src/shopsquad.com
echo -e "\n\nStarting MySQL Server...\n\n"
mysqld -u root &
echo -e "\n\nIndexing and Starting Sphinx...\n\n"
rake thinking_sphinx:index
rake thinking_sphinx:start
echo -e "\n\nStarting Rails Server...\n\n"
rails s
exit 0
