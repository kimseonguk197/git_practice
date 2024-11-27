# 현재 working directory, staging area 만 상태 확인
git status

# git add : 모든 수정/추가사항 add
git add .

# git add 특정파일: 특정 파일 add
git add 특정파일(위치포함)

# local repository에 반영 및 커밋이력 생성
git commit -m "메시지타이틀" -m "메시지내용"

# vi모드에서 작성 : git commit 후 엔터

# add와 commit 동시에
git commit -am "add와 commit 동시에" 

# commit 이력 확인(local repository의 이력)
git log
# git log 간결하게
git log --oneline
# 전체 이력 조회
git log --all
# 로그를 그래프 형태로 조회
git log --graph

# 원격저장소로 업로드
git push origin 브랜치명

# 충돌무시하고 강제 push // pull하지 않음
git push origin master --force

# 특정 commit ID로의 전환(과거로 가보자)
git checkout 커밋ID

# 다시 현재의 master(브랜치)의 commit으로 return //원래 있던 위치로 
git checkout master

# git pull은 원격의 변경사항을 local로 다운로드(working directory까지 변경)
git pull origin 브랜치명

# git 작업 취소
# working directory에서 수정사항만 취소
git checkout .
# working directory에서 추가파일 취소
git clean --fdx
# 수정취소 동시에
git checkout . | git clean --fdx
# staging area에서의 취소
git reset
# commit 이후의 취소
git reset head~1
git reset head^
# push 이후의 취소
git revert 커밋ID



# 버전별 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경이 있는지를 비교
git diff A B
git diff commitId1 commitId2
git diff A브랜치 B브랜치

# git fetch
# 원격에 변경사항을 local에 가져오되 병합은 하지 않는 것
# 비교 : git pull origin master와 git fetch origin master비교 
# fetch는 되고 merge는 안된 상황
git fetch --all
git fetch --all --prune

# git stash : 작업중인 사항을 임시저장(충돌 상황에서 쓰이는 방법)
git stash
# 저장한 최신의 작업목록 꺼내기
git stash pop
# 저장한 목록은 놔둔채 작업목록 적용
git stash apply stash@인덱스값
# 저장한 작업사항 목록조회
git stash list
# 저장한 작업목록 상세조회
git stash show -p 인덱스
# 저장한 작업목록 초기화(전체 삭제)
git stash clear

# 버전명시 tagging
git tag v1.0
git tag v1.0 -m "1.주요사항A 2.주요사항B"

# tag release 배포
# commit push와 상관없이 태그(release)별도 push
git push origin v1.0

# 태그 목록 조회
git tag