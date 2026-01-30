# Épreuve de Shaders !

## Installation

Dépendances pour compiler le projet :
- CMake

Pour installer les dépendances sur Ubuntu/Debian :
```bash
sudo apt-get install build-essential cmake
````

Sur macOS :

```bash
brew install cmake
```

Sur Arch Linux :

```bash
sudo pacman -S base-devel cmake
```

Pour compiler le projet, il suffit d'exécuter les commandes suivantes dans le dossier `Shaders` :

```bash
mkdir -p build/ && cd build/
cmake .. # Si tu as des erreurs de version de CMake, essaie avec le flag -DCMAKE_POLICY_VERSION_MINIMUM=3.5
make -j$(nproc)

./cs_exam_shaders
```

# Tâches à faire

## 1. Shaders pour la vague

1. Implémenter le vertex shader dans le fichier [wavePlane.vs.glsl](./shaders/wavePlane/wavePlane.vs.glsl)

Ce vertex shader prend des uniforms lock en entrée, cette logique est déjà faite pour vous :

```glsl
uniform float waveAmplitude;
uniform float waveFrequency;
uniform float waveSpeed;
```

Vous devez implémenter la logique qui change la hauteur du fragment selon sa position.

2. Finir l'implémentation du fragment shader : [wavePlane.fs.glsl](./shaders/wavePlane/wavePlane.fs.glsl)

Ce shader prend en entrée les uniforms lock suivants :

```glsl
uniform vec3 waveColor1;
uniform vec3 waveColor2;
uniform float waveAmplitude;
```

Vous devez également implémenter une transition graduelle de couleur entre `waveColor1` et `waveColor2` selon la hauteur de la vague.

Vous devez implémenter le meilleur shader de génération de vagues !

## 2. Implémenter votre propre Mesh

Vous devez implémenter les uniforms lock manquants dans le fichier [Cube.cpp](./src/mesh/cube/cube.cpp)

L'effet désiré est une transition de couleur entre la couleur du dessus et la couleur du dessous du cube.

Nous voulons avoir une gradation entre les deux couleurs qui change avec le temps.

Pour ce faire, vous allez devoir finir l'implémentation du fragment shader pour le cube dans le fichier [cube.fs.glsl](./shaders/cube/cube.fs.glsl).

Bonne chance !

