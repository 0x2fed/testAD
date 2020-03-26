@ECHO OFF

REM check install git
REM git --version

REM Enter your UserName 
git config --global user.name "0x2fed"
REM Then verify that you have the correct username:
git config --global user.name


git config --global user.email "0x2fed@gmail.com"
REM To verify that you entered your email correctly, type:
git config --global user.email

git init
git add README.md

git add *
git rm -r --cached __Previews
git rm -r --cached History
REM git rm -r --cached */__Previews
REM git rm -r --cached */History

echo '__Previews/' >> .gitignore
echo '*/__Previews/' >> .gitignore
echo 'History/' >> .gitignore
echo '*/History/' >> .gitignore
echo '*.SchDocPreview' >> .gitignore
echo '*.PcbDocPreview' >> .gitignore
echo '*.~\([0-9]*\)*' >> .gitignore
git add .gitignore

REM Теперь перейдите к gitlab и создайте там пустой репозиторий. 

git commit -m "first commit"

git remote add origin https://github.com/0x2fed/testAD.git

REM Затем нажмите на gitlab, набрав ниже и затем заполнив свое имя пользователя gitlab при запросе, а затем введите пароль, введите Личный токен доступа, который был создан и сохранен в безопасном месте ранее.
git push -u origin master




pause