# 📐Laboratorio de Diseño de Sistemas Digitales
## 📝 Práctica 2
---

### 👓 Problema a resolver

1. Generar un código, de preferencia en VHDL, que realice lo
siguiente:

- Utilizando los cuatro display de siete segmentos, cada
segundo mostrar un año, iniciando de 1950 y terminando en 2050.
- En cada año, calculará, según las reglas dadas en clase, si el año es bisiesto o no. Si lo es encenderá uno de los 10 Led con los que cuenta la tarjeta, de lo contrario lo apagará.
- Configurar un push button para que, al presionarlo reinicie la cuenta en 1950.

2. Programe la tarjeta DE0.

3. Capture fotografías o vídeo de la tarjeta DE0, de al menos 3 años bisiestos y 7 no bisiestos para su reporte.

4. Genere el reporte de la práctica.

---

### 🖥️ Características del código
- El código fue desarrollado para un FPGA EP4CE6E22
- Utiliza dos contadores, uno para mover los años y realizar el cálculo de si es bisieto, el segundo sirve para encender cada display de 7 segmentos por un periodo de milisegundos, uno a la vez.
- Utiliza módulos, razón por la cual tiene dos archivos _vhd_.

#### 🧩 Archivos que componen el proyecto
- [bisiesto/bisieto.vhd](/bisiesto/bisiesto.vhd) - Contiene el código para mostrar los años en los display de 7 segmentos, así como realizar el cálculo si es bisiesto o no.
- [bisiesto/contador.vhd](/bisiesto/contador.vhd) - Contiene el código de dos contadores, uno llamado *cont* y otro *cont_veloz*. El primero se usa para contar los años y el segundo para encender un display de 7 segmentos por vez.
- [README.md](/README.md) - Es este documento.
- .gitignore - Elementos (archivos y directorios) ignorados en el versionado git de este repositorio.

### ⚠ Advertencias del código

- Mientras que el alumnado utilizará la tarjeta DE0 Cyclone III. **Este código fue realizado para un FPGA Cyclone IV (EP4CE6E22)**
- Para que un LED se encienda, en este modelo de FPGA, se tiene que mandar un 0 y no un 1 como lo haría la DE0.
- Para usar los display de 7 segmentos se hace por milisegundos la selección de un display para encenderlo mostrando el número alimentado según su posición (millares, centenas, decenas o unidades). La tarjeta DE0 (de los alumnos) si puede encender a la vez los 4 display de 7 segmentos, se recomienda leer la documentación de los pines.

---

_Author: @ulises-aragon1_