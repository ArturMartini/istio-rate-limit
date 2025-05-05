# Istio Rate Limiting with Redis and Lua

## Overview
This project demonstrates how to implement a robust rate limiting solution in Istio using Redis as a storage backend and Lua scripts for custom rate limiting logic. The implementation provides a scalable and flexible way to control traffic in your microservices architecture.

## Prerequisites
- Kubernetes cluster
- Istio installed and configured
- Redis 6.x or higher
- kubectl CLI tool
- Make (optional, for using the provided Makefile)

## Architecture
The rate limiting solution consists of the following components:

1. **Echo Server**: A sample application to test rate limiting
2. **Istio Gateway**: Handles incoming traffic
3. **Virtual Service**: Routes traffic to the echo server
4. **Redis**: Stores rate limiting data
5. **JWT Filter**: Handles JWT authentication
6. **Global Lua Filter**: Implements custom rate limiting logic

## Components Description

### Redis Configuration
Redis is used as a distributed storage solution for maintaining rate limiting counters across multiple instances. It provides:
- Fast in-memory operations
- Persistence options
- Atomic operations for accurate counting

### Lua Script
The Lua script implements the rate limiting logic with the following features:
- Custom rate limiting rules
- Token bucket algorithm implementation
- Distributed counter management

### JWT Authentication
JWT authentication ensures that:
- All requests are properly authenticated
- Rate limits can be applied based on client identity
- Token validation and verification
