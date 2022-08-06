# TP SISTEMAS OPERATIVOS

### Cómo deployar

- Entrar en modo root, password: utnso
```
sudo su
```


- Para deployar hay que copiar y pegar en la terminal el siguiente script:

```
REPO='alumnoso'&&PASS='...?'&&MODULO='...?'&&RAMA='develop'&&git clone https://github.com/rvegabaldiviezo/${REPO}.git&&cd ${REPO}&&git checkout -b ${RAMA}&&sh deploy.sh
```

- Nota: Hay que completar
 MODULO='**cpu**' ó '**memoria**' ó '**kernel**'
 PASS='g***a'