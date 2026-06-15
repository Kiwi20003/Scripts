
# Escáner de Puertos Nativo en Bash

## 📝 Explicación
Este es mi primer proyecto pequeño: un escáner de puertos en Bash que incluye validación completa de direcciones IPv4.

## ⚙️ Funcionamiento
Al ejecutar el script, el flujo de trabajo es el siguiente:
1. **Validación:** El script comprueba que la IP introducida tenga un formato válido y esté dentro del rango correcto (0-255).
2. **Comprobación de Host:** Hace una pequeña comprobación mediante `ping` para ver si el host objetivo está activo.
3. **Escaneo:** Si el host responde, empieza a escanear de forma nativa desde el puerto `1` al `100` (este rango se puede modificar en el bucle `for` del código el que tiene el comentario) y te muestra en pantalla qué puertos están abiertos.

## Futuras actualizaciones

Intentare añadir nuevas funciones, para poder elegir los puertos para escanear y el metodo de escaneo. 

Espero que sea de vuestro agrado ;)

## 🛠️ Cómo usarlo
Para ejecutar el script en tu terminal de Linux:
```bash
chmod +x portipval.sh
./portipval.sh
```
