//
//  DockerCompose.swift
//  container-compose-app
//
//  Created by Morris Richman on 6/17/25.
//


/// Represents the top-level structure of a docker-compose.yml file.
struct DockerCompose: Codable {
    let version: String? // The Compose file format version (e.g., '3.8')
    let name: String? // Optional project name
    let services: [String: Service] // Dictionary of service definitions, keyed by service name
    let volumes: [String: Volume]? // Optional top-level volume definitions
    let networks: [String: Network]? // Optional top-level network definitions
    let configs: [String: Config]? // Optional top-level config definitions (primarily for Swarm)
    let secrets: [String: Secret]? // Optional top-level secret definitions (primarily for Swarm)
}