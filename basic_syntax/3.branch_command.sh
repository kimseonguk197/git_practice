# 브랜치생성
# 현재 checkout 하고 있는 브랜치를 기준으로 브랜치 생성
git branch 브랜치명

# 해당 브랜치로 전환
git checkout 브랜치명

# 브랜치 목록 조회 및 현재 나의 브랜치
git branch

# 브랜치 생성과 전환 동시에
git checkout -b 브랜치명

# 브랜치 삭제
git branch -D 브랜치

# 삭제한 브랜치 자동으로 없애기
git fetch --all --prune

# origin(원격)에서 받은 브랜치 다운(받기)
git fetch --all

