
INFOLETTRE_NB=$1
INFOLETTRE_BRANCH="infolettre_$INFOLETTRE_NB"

git switch main
git pull origin main
git switch -c $INFOLETTRE_BRANCH 
git push --set-upstream origin $INFOLETTRE_BRANCH 

cp -r infolettre/infolettre_XX infolettre/$INFOLETTRE_BRANCH
mv infolettre/$INFOLETTRE_BRANCH/template.txt infolettre/$INFOLETTRE_BRANCH/index.qmd 

git add infolettre/$INFOLETTRE_BRANCH/index.qmd && git commit -m "initializing infolettre $INFOLETTRE_NB"
