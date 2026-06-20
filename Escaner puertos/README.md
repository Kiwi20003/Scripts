
# Escáner de Puertos Nativo en Bash

## 📝 Explicación
Este es mi primer proyecto pequeño: un escáner de puertos en Bash que incluye validación completa de direcciones IPv4.

## ⚙️ Funcionamiento
Al ejecutar el script, el flujo de trabajo es el siguiente:
1. **Validación:** El script comprueba que la IP introducida tenga un formato válido y esté dentro del rango correcto (0-255).
2. **Comprobación de Host:** Hace una pequeña comprobación mediante `ping` para ver si el host objetivo está activo.
3. **Escaneo:** Si el host responde, empieza a escanear de forma nativa desde los puertos elegido te muestra en pantalla qué puertos están abiertos e intentara decirte que servicio corre en cada puerto.

## Futuras actualizaciones

Intentare añadir nuevas funciones, para poder elegir el metodo de escaneo y poder guardar el escaneo en un fichero. 

Espero que sea de vuestro agrado ;)

## Lista de cambios 
- **2026-06-20**  — Añadido el poder elegir los puertos.
- **2026-06-20** — Añadido el escaneo en paralelo asi priorizando la velocidad del escaneo.
- **2026-06-20** — Detección de servicio por número de puerto.

## 🛠️ Cómo usarlo
Para ejecutar el script en tu terminal de Linux:
```bash
chmod +x portipval.sh
./portipval.sh
```
