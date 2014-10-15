
Sherlocked by this [template](https://github.com/krzysztofzablocki/KZBootstrap)

Overview
=========================
Esta plantilla implementa los [pasos](http://www.punteroavoid.com/blog/2013/07/12/iniciando-un-nuevo-proyecto-ios/) descritos por [@sendoaportuondo](https://twitter.com/sendoaportuondo) a la hora de crear un nuevo proyecto para iOS, basándose en la [plantilla](https://github.com/reidmain/Xcode-5-Project-Templates) con algunos cambios:
- Genera una plantilla universal, añadiendo un archivo con las macros típicas para iPad.
- Cambia la estructura de carpetas.
- Modifica el .gitignore
- Integra las configuraciones de liftoff en la plantilla, por lo que no hace falta ejecutarlo.
- Integra Testflight en la creación del proyecto.
- Muestra la versión en la barra de estado, si pulsamos sobre el label de build dos veces podremos enviar feedback a Testflight.
- Crea tres configuraciones (Debug, Ad Hoc, AppStore). Generando un bundle id distinto para cada una, para permitir tener instaladas tres versiones de la misma aplicación en un dispositivo de test, además mostrará iconos distintos para cada una. 
- No crea un target de test, ni añade las librerías para testing, cada programador tiene sus preferencias, se puede añadir un target desde cualquiera de las opciones que nos da Xcode5, configurando las librerías que desees.
- No integra el script para el aumento de versión automático al desplegar, se debe copiar manualmente.

Está pensada para un proyecto universal en iOS7, pero se puede modificar fácilmente para iOS6, o cualquier otro proposito creándote tu propia plantilla empresarial.

Installation
============
- Ejecuta el script install.sh con el nombre de carpeta que quieres que utilice Xcode, por defecto utiliza jotaro17
- Abre Xcode5 y crea el proyecto
- Añade en schemes, build, pre-action el script recomendado para el aumento de versión automático, cambiando "Release" por "Ad Hoc".
- Cierra el proyecto y ejecuta cocoapods.

