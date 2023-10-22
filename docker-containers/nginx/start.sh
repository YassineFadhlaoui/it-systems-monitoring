#!/bin/bash
docker run --name nginx -v ./status.conf:/etc/nginx/conf.d/status.conf:ro -p 8000:8000 -p 80:80 nginx