#!/bin/bash
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo update
helm install prometheus-operator stable/prometheus-operator --namespace monitoring --set grafana.service.type=LoadBalancer
kubectl apply -f ingress.yaml -n monitoring
kubectl get svc -n monitoring | grep prometheus-operator-grafana
