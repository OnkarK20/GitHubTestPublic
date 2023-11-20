@echo off

REM Set your Git repository URL and credentials
set GIT_REPO=https://username:password@github.com/your-username/your-repo.git
set GIT_CREDENTIALS_ID=your-git-credentials-id

REM Set the path to your Git executable
set GIT_EXECUTABLE=C:\Program Files\Git\cmd\git.exe

REM Set the path to your local repository
set LOCAL_REPO=C:\path\to\your\local\repo

REM Clone the Git repository
"%GIT_EXECUTABLE%" clone %GIT_REPO% %LOCAL_REPO%

REM Make changes to your files
echo Hello, Jenkins! > %LOCAL_REPO%\sample.txt

REM Stage and commit changes
cd %LOCAL_REPO%
"%GIT_EXECUTABLE%" add .
"%GIT_EXECUTABLE%" commit -m "Jenkins automated commit"

REM Push changes back to the repository
"%GIT_EXECUTABLE%" push origin master

echo Script completed successfully.
