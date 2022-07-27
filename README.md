# TP SISTEMAS OPERATIVOS

### Cómo deployar

- Entrar en modo root, password: utnso
```
sudo su
```


- Para deployar hay que copiar y pegar en la terminal el siguiente script:

```
cd /home/utnso&&REPO='alumnoso'&&git clone https://github.com/rvegabaldiviezo/${REPO}.git&&cd ${REPO}&&sh deploy.sh
```

- 3) Te va a pedir que ingreses una clave, es la concatenacion de dos palabras, quien hizo memoria, el nombre de su modulo.