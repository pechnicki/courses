#!/bin/bash
minikube kubectl -- delete deployment vote
minikube kubectl -- delete service vote
minikube kubectl -- delete deployment redis
minikube kubectl -- delete service redis
minikube kubectl -- delete deployment postgres
minikube kubectl -- delete service db
minikube kubectl -- delete deployment worker
minikube kubectl -- delete deployment result
minikube kubectl -- delete service result
sleep 5
minikube kubectl -- get all