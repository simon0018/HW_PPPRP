### Шаг 1: Запуск Minikube

Запустите Minikube, чтобы создать локальный Kubernetes кластер:
```bash
minikube start
```

### Шаг 2: Создание Docker-образов и развертывание манифестов

Создайте Docker-образы и примените манифесты для приложения, скрипта и сервисов:
```bash
sh deploy.sh
```

### Шаг 3: Подключение к LoadBalancer сервису

Создайте туннель для подключения к сервису LoadBalancer:
```bash
minikube tunnel
```

### Шаг 4: Получение URL-адреса сервиса

Во втором терминале получите URL-адрес для подключения к вашему сервису:
```bash
minikube service web-service
```
Добавив `/time` или `/statistics` к полученному URL, вы сможете получить текущее время и статистику обращений.

### Шаг 5: Чтение файла `statistics.txt`

Чтобы прочитать файл `statistics.txt`, выполните следующие шаги:

1. Получите название пода со скриптом:
   ```bash
   kubectl get pods
   ```

2. Выполните команду для входа в под:
   ```bash
   kubectl exec -it <pod_with_script_name> -- /bin/bash
   ```

3. Прочитайте файл `statistics.txt`:
   ```bash
   cat /app/statistics.txt
   ```

Эти шаги позволят вам получить доступ к статистике обращений через файл `statistics.txt`.
