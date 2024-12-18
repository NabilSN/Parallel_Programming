#include "../include/utils/MathUtils.hpp"
#include "../include/utils/Vec2.hpp"

#include "../include/agents/Bird.hpp"
#include "../include/agents/Eagle.hpp"
#include "../include/agents/Prey.hpp"
#include "../include/config.hpp"
#include <chrono>
#include <iostream>
#include <cstdlib>
#include <fstream>

#include "Grid.hpp"

#define SEQUENTIAL 0
#define OPENMP 1
#define TBB 2

double xpos, ypos;

int main(int argc, char* argv[]) {
    // Load default configuration
    SimulationConfig config;

    // Parse command-line arguments
    config = parseArguments(argc, argv, config);

    // points pre-processing

    // to be tested resolution
    int width{}, height{};

    int numAgents = config.numAgents; // 1000
    int numPredators = config.numPredators; // 2
    int numPrey = config.numPreys; // 10

    const float cellSize = config.cellSize; // 50.0f - Taille des cellules dans la grille
    const float minSpeed = config.minSpeed; // 0.1f      
    const float maxSpeed = config.maxSpeed; //0.5f - Vitesse maximale des agents
    const float agentSize = config.agentSize; // 7.0f
    const float range = config.range; // 100.0f
    const float viewAngle = config.viewAngle; //3 * M_PI / 2

    const float alignmentWeight = config.alignmentWeight; // 10.0f     
    const float cohesionWeight = config.cohesionWeight;// 1.0f       
    const float separationWeight = config.separationWeight; // 1.0f
    const float avoidanceWeight = config.avoidanceWeight; // 6.0f
    const float huntingWeight = config.huntingWeight; // 2.0f
    const float margin = config.margin; // 150.0f

    const float color_mode = config.colorMode; // 1.0
    const float shader_type = config.shaderType; // 0.0

    float ratio = std::max(std::min(std::max(1.2 * numAgents / 2000, 1.2), 1.2 * numAgents / 500), 1.1);
    float offsetX = (width - ratio * width) / 2;
    float offsetY = (height - ratio * height) / 2;

    std::vector<Bird> agents;
    std::vector<Eagle> predators;
    std::vector<Prey> fruits;

    for (int i = 0; i < numAgents; ++i) {
        agents.emplace_back(randomGenerationOnScreen(width, height, ratio), randomMovementGeneration(static_cast<int>(minSpeed), static_cast<int>(maxSpeed)), 
        agentSize, viewAngle, range, minSpeed, maxSpeed, cohesionWeight, alignmentWeight, separationWeight, avoidanceWeight, huntingWeight);
    }    

    for (int i = 0; i < numPredators; ++i) {
        predators.emplace_back(static_cast<int>(minSpeed) - 10, static_cast<int>(maxSpeed) + 10, width, height, ratio,
        agentSize + 10, viewAngle, cohesionWeight + 1, separationWeight + 2, huntingWeight);
    }

    for (int i = 0; i < numPrey; ++i) {
        fruits.emplace_back(static_cast<int>(minSpeed), static_cast<int>(maxSpeed) - static_cast<int>(minSpeed), width, height, ratio);
    }

    // Initialize FPS tracking variables
    int steps = 1000;
    double accumulated_time = 0;
    auto last_time = std::chrono::steady_clock::now();

    // Determine the mode of parallelism
    int mode = SEQUENTIAL; // Default to SEQUENTIAL
    if (argc > 1) {
        mode = std::atoi(argv[1]);
    }

    // global loop
    for (int i = 0; i < steps; ++i) {
        // Initialiser la grille et les agents
        Grid grid(ratio * width, ratio * height, cellSize, margin);

        {  // points
            mat3x3 transform = vertex_transform_2d(width, height);

            // Ajouter les agents à la grille
            for (auto& agent : agents) {
                grid.addBoid(&agent);             
            }

            for (auto& predator : predators) {
                grid.addBoid(&predator);
            }

            for (auto& fruit : fruits) {
                grid.addBoid(&fruit);
            }

            // Mettre à jour les agents en appliquant les règles
            grid.updateBoids(mode);
        }
    }
    auto end_time = std::chrono::steady_clock::now();
    auto elapsed_time = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - last_time).count();

    std::ofstream outfile;
    outfile.open("/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/src/freebirds/Bench_birds.log", std::ios_base::app);
    outfile << "Simulation completed in mode " << mode
            << " with " << numAgents << " agents, "
            << "in " << elapsed_time << " ms." << std::endl;
    exit(EXIT_SUCCESS);
}