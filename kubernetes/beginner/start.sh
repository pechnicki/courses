#!/bin/bash
minikube kubectl -- apply -f deployments/vote.yaml
minikube kubectl -- apply -f services/vote.yaml
minikube kubectl -- apply -f deployments/redis.yaml
minikube kubectl -- apply -f services/redis.yaml
minikube kubectl -- apply -f deployments/postgres.yaml
minikube kubectl -- apply -f services/postgres.yaml
minikube kubectl -- apply -f deployments/worker.yaml
minikube kubectl -- apply -f deployments/result.yaml
minikube kubectl -- apply -f services/result.yaml
sleep 5
minikube kubectl -- get all