# 🎯 Steering Random

Sistema de direção aleatória para veículos em FiveM.

![Steering Random](https://i.postimg.cc/x1Qk6JY1/image.png)

## 📋 Descrição

Este script implementa um sistema que mantém a direção aleatória dos veículos quando eles estão parados e com o motor desligado, criando um efeito mais realista.

## ⚙️ Como Funciona

- **Detecção de ângulo:** Captura o ângulo de direção quando o volante está em posições extremas (>32° ou <-32°)
- **Aplicação automática:** Quando o veículo está parado (velocidade < 0.1) e com motor desligado, aplica o ângulo capturado
- **Condições específicas:** Só funciona quando o jogador não está em uma tarefa específica (task 151)

## 🚀 Instalação

1. **Adicione ao server.cfg:**
   ```cfg
   ensure rgarage_steering
   ```

2. **Reinicie o servidor**

## 🎮 Funcionalidades

- ✅ Mantém direção aleatória em veículos parados
- ✅ Só ativa com motor desligado
- ✅ Funciona apenas quando veículo está parado
- ✅ Performance otimizada (1ms quando ativo, 1000ms quando inativo)

## 📊 Configuração

O script não requer configuração adicional. Funciona automaticamente em todos os veículos.

## 🔧 Desenvolvido por

**Ryu Garage™**

---
