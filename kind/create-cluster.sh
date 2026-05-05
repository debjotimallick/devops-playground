#!/bin/bash

kind create cluster --name dev --config kind-config.yaml
kubectl cluster-info
