# Proyecto Job Board - Ruby on Rails

Este proyecto permite administrar una bolsa de empleo donde se puede crear empresas reclutadoras, ofertas de trabajo y postular a los cargos disponibles.

## Visuales

<img src="portada.jpg" alt="Screenshot de RealEstateProject">

## Empezando 🚀

Estas instrucciones te guiarán para obtener una copia de este proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas. Ten en cuenta que el proyecto está en desarrollo y puede tener cambios en el futuro, por lo que se recomienda clonar el proyecto en lugar de descargarlo, para que puedas obtener las actualizaciones más recientes. También puedes hacer un fork del proyecto para contribuir con el desarrollo del mismo y estar al tanto de las actualizaciones.

Para obtener una copia local en funcionamiento, sigue estos pasos.

```bash
git clone https://github.com/apinango70/job_board
```

Ingresa a la carpeta del proyecto

```bash
cd job_board
```

Con estos simples pasos ya estas listo para comenzar a desarrollar.

### Prerrequisitos 📋

Antes de comenzar, asegúrate de cumplir con los siguientes requisitos:

- Sistema Operativo: Windows, Linux, macOS, WSL
- Lenguaje de programación Ruby 3.2.2
- Framework Ruby on Rails 7.0.8
- Base de datos Postgresql

Se recomienda usar un sistema unix-like (Linux, macOS, WSL) para el desarrollo de este proyecto. En caso de usar Windows, se recomienda usar WSL (Windows Subsystem for Linux) para el desarrollo de este proyecto. Si no se tiene instalado WSL, puedes seguir la siguiente guía de instalación: [Instalación de WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

Si no tienes instalado Ruby y Ruby on Rails, puedes seguir la siguiente guía de instalación: [Instalación de Ruby](https://www.ruby-lang.org/es/documentation/installation/)

Si no tienes instalado Postgresql, puedes seguir la siguiente guía de instalación: [Instalación de Postgresql](https://www.postgresql.org/download/)

### Gemas utilizadas en este proyecto

+ [Devise] - Para administrar los user y controles de acceso
+ [Pagy] - Para lapaginación de los registros
+ [Annotate] - Para mantener actualizados los modelos
+ [Active storage] - Para el manejo de las imágenes de los usuarios y las propiedades

### Instalación 🔧

Para poder ejecutar el proyecto después de haberlo clonado, debes ejecutar los siguientes pasos en tu terminal:

```bash
bundle install
```

```bash
rails db:create
```

```bash
rails db:migrate
```

** NOTA: Si se desea cargar datos de prueba, se deben ejecutar los siguientes comandos en este orden para evitar errores por las relaciones entre los modelos: **

```bash
rails db:seed
```

## Crear 20 usuarios ficticios con fotos de https://thispersondoesnotexist.com

```bash
rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "users.rb"))'
```

```bash
rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "companies.rb"))'
```

```bash
rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "properties.rb"))'
```

```bash
rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "propertyFeatures.rb"))'
```

```bash
rails s
```

## Construido Con 🛠️

Herramientas utilizadas para crear el proyecto:

- [Ruby](https://www.ruby-lang.org/es/) - El lenguaje utilizado
- [Ruby on Rails](https://rubyonrails.org) - El framework web utilizado
- [Ruby gems](https://rubygems.org) - Gestión de dependencias
- [Postgresql](https://www.postgresql.org) - Sistema de base de datos
- [Bootstrap](https://getbootstrap.com) - Framework de CSS

## Soporte

Si tienes algún problema o sugerencia, por favor abre un hilo [aquí](https://github.com/apinango70/Aprendiendo-RubyOnRails/issues).

## Roadmap

Ideas, mejoras planificadas y actualizaciones futuras

para el proyecto actual.

## Versionado 📌

Estoy usando [Git](https://git-scm.com) para el versionado.

## Autor ✒️

- [Alejandro Piñango](https://github.com/apinango70)

## Licencia 📄

Este proyecto está bajo la Licencia MIT - ve el archivo [LICENSE.md](LICENSE.md) para detalles

## Expresiones de Gratitud 🎁

Si encontraste cualquier valor en este proyecto o quieres contribuir, aquí está lo que puedes hacer:

- Comparte este proyecto con otros
- haz un fork de este proyecto
- Deja una estrella ⭐️
- Inicia un nuevo issue o contribuye con un PR
- Muestra tu agradecimiento diciendo gracias en un nuevo Issue.

⌨️ con ❤️ por [Alejandro Piñango](https://github.com/apinango70) 😊
