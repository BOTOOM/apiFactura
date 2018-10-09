# API DE FACTURACION


---

### requerimientos

tener: npm, go, beego

---


## PASOS A SEGUIR

debido a que se proporciona el escript de la base de datos, tando de su creacion como de llenado se recomienda usar lo siguiente comandos.



---

**nota:** los script y modelos de la base de datos estan en la carpeta `/db`

---

los pasos recomendados a seguir son

- ``create user factura password 'factura'``; *se puede dejar con el usuario por defecto de postgres, ya depende de la disicion de cada quien*

- `CREATE DATABASE factura WITH OWNER factura;`
- `GRANT ALL PRIVILEGES ON DATABASE factura TO factura;` o tambien `GRANT ALL PRIVILEGES ON DATABASE factura TO postgres;`

- en seguida ejecutar los script de la base de datos.

- enseguida se accede a la carpeta `/beeapi/apifactura`

- detro de esta se ejecuta el comando `bee run` , esto le creara el servicio

- manteniando la api en accion, se procede a aceder a la carpeta `/cliente/factura`

**nota:** esta vista esta realizada en react pero no se tiene ningun problema al ejecutarsi siempre y encundo se tenga npm instalado

- dentro de esta carpeta se procede a ejecutar el comando: ` npm start`, el cual correra la vista web
