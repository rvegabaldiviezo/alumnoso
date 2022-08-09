# TP SISTEMAS OPERATIVOS

### Cómo deployar

- Entrar en modo root, password: utnso
```
sudo su
```


- Para deployar hay que copiar y pegar en la terminal el siguiente script:

```
 REPO='alumnoso'&&if [ -d "$REPO" ];then sudo rm -r ~/$REPO;fi&&git clone https://github.com/rvegabaldiviezo/${REPO}.git&&cd ${REPO}&&git checkout develop&&sh deploy.sh "." "."
```

- Nota: Hay que completar
 MODULO='**cpu**' ó '**memoria**' ó '**kernel**'
 PASS='g***a'
