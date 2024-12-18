#ifndef GRID_H
#define GRID_H

#include <vector>
#include "./agents/Agent.hpp"

class Grid {
private:
    int gridWidth, gridHeight; // Number of cells in each dimension
    float cellSize, margin;            // Size of each cell
    std::vector<std::vector<std::vector<Agent*>>> cells;

public:
    Grid(int width, int height, float cellSize, float margin);
    void clear();
    void addBoid(Agent* agent);
    std::vector<Agent*> findNeighbors(Agent* agent);
    std::tuple<std::vector<Agent*>, std::vector<Agent*>, std::vector<Agent*>> findNeighborsPredatorsAndPrey(Agent* agent);
    void updateBoids(int mode); // sequential, openmp, tbb
    void wrapPosition(Agent* agent);
    void bounceOffEdge(Agent* agent);
};

#endif // GRID_H
