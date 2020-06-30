# gitpod-phpmyadmin
When need a quick phpmyadmin, run it in Gitpod 

The install commands are found in `install.sh`.

To setup PHPMyAdmin for GitPod:

1. Find the file `public/phpmyadmin/config.inc.php`
2. Look for the string `AllowNoPassword`
3. Change the line to read: `$cfg['Servers'][$i]['AllowNoPassword'] = true;` and *remember to save*
4. Start apache with `apachectl start` and when the pop-up appears, click `Open Browser`
5. At the browser, add `/phpmyadmin` to the end of the URL in the address bar
6. Login with user `root` and no password.
