# Godot Do-Not-Mind-Me: The Stealth Capstone Project

This is the eighth and final project in my Godot 2D learning journey. As the capstone project, it synthesizes every major concept learned—from physics and UI to advanced pathfinding and global data management—into a cohesive stealth-action experience.

## Learning Outcomes
This project represents the peak of my current Godot expertise, focusing on complex systems and game logic:
- **Advanced Pathfinding (Navigation2D):** Leveraged `NavigationRegion2D` and `NavigationAgent2D` to implement sophisticated enemy pathfinding, allowing AI to navigate complex environments dynamically.
- **Stealth AI & Detection:** Implemented a field-of-view (FOV) system using `RayCast2D` to create realistic line-of-sight mechanics.
- **Dynamic Patrolling Systems:** Developed an AI state machine where enemies switch between patrolling defined paths and chasing the player upon detection.
- **Global Game Orchestration:** Utilized a centralized `GameManager` (Singleton) to track level progression, scoring, and player states across multiple scenes.
- **Interactive Environment Design:** Created a variety of interactable objects and collectibles that trigger specific game events through a robust `SignalHub`.

## Tech Stack
- **Engine:** Godot 4.5
- **Language:** GDScript
- **Navigation:** NavigationRegion2D, NavigationAgent2D (Pathfinding).
- **Architecture:** Stealth AI (FOV), Singleton Pattern, Signal-driven Event System.

## Technical Excellence: Navigation & Pathfinding Logic
The following snippet shows how I integrated `NavigationAgent2D` to handle smooth AI movement and goal-oriented pathfinding:

```gdscript
# Professional Implementation of NavigationAgent2D for AI Pathfinding
func _physics_process(delta: float) -> void:
    if navigation_agent.is_navigation_finished():
        return

    var next_path_position: Vector2 = navigation_agent.get_next_path_position()
    var current_agent_position: Vector2 = global_position
    var new_velocity: Vector2 = (next_path_position - current_agent_position).normalized() * movement_speed
    
    # Smoothly rotating the enemy towards the movement direction
    if new_velocity.length() > 0:
        rotation = lerp_angle(rotation, new_velocity.angle(), 0.1)
    
    velocity = new_velocity
    move_and_slide()

func set_movement_target(target_point: Vector2) -> void:
    navigation_agent.target_position = target_point
```

## Credits & Acknowledgments
- **Course:** Developed as part of the ["Jumpstart to 2D Game Development"](https://www.udemy.com/course/jumpstart-to-2d-game-development-godot-4-for-beginners/) course by Richard Allbert and Martyna Olivares.
- **Assets:** Game assets provided by the course instructor.
