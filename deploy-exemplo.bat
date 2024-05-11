if exist .git\ (
 echo Ok
) else (
 git init
)

git add -A
git commit -m "codigo: DEPLOY"
git push -f https://<TOKEN>@github.com/<USUARIO_GITHUB>/<NOME_REPOSITORIO>.git master

call npm run build

cd dist
git init
git add -A
git commit -m "dist: DEPLOY"
git push -f https://<TOKEN>@github.com/<USUARIO_GITHUB>/<NOME_REPOSITORIO>.git master:gh-pages

cd ..