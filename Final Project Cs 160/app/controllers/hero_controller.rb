class HeroController < ActionController::Base
    layout 'base'
    def panther
        @strength = 0
        @cardio = 0
        @flex = 0
        @upper = 0
        @lower = 0
        @core = 0
        @hero = "None"
        @max = 0
        
        entries = Journal.all
        entries.each do |entry|
            workout = entry.workout
            if workout == "Arms"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Chest"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Back"
                @upper = @upper + 1
            elsif workout == "Legs"
                @strength = @strength + 1
                @lower = @lower + 1
            elsif workout == "Buns"
                @lower = @lower + 1
            elsif workout == "Calves"
                @lower = @lower + 1
            elsif workout == "Running"
                @cardio = @cardio + 1
                @lower = @lower + 1
                @core = @core + 1
            elsif workout == "Swimming"
                @cardio = @cardio + 1
                @core = @core + 1
                @lower = @lower + 1
            elsif workout == "Hiking"
                @lower = @lower + 1
                @cardio = @cardio + 1
            elsif workout == "Basketball"
                @cardio = @cardio + 1
                @lower = @lower + 1
            elsif workout == "Yoga"
                @flex = @flex + 1
            elsif workout == "Stretching"
                @flex = @flex + 1
            elsif workout == "Pilates"
                @flex = @flex + 1
                @core = @core + 1
            end
        end
        if @strength < 1 and @upper < 1 and @lower < 1 and @flex < 1 and @cardio < 1 and @core < 1
            @hero = "None"
            @max = 5
        elsif @strength >= @upper and @strength >= @lower and @strength >= @flex and @strength >= @cardio and @strength >= @core
            @hero = "Strength"
            @max = @strength
        elsif @flex >= @strength and @flex >= @upper and @flex >= @lower and @flex >= @cardio and @flex >= @core
            @hero = "Flex"
            @max = @flex
        elsif @cardio >= @strength and @cardio >= @flex and @cardio >= @upper and @cardio >= @lower and @cardio >= @core
            @hero = "Cardio"
            @max = @cardio
        elsif @core >= @strength and @core >= @cardio and @core >= @flex and @core >= @upper and @core >= @lower
            @hero = "Core"
            @max = @core
        elsif @upper >= @strength and @upper >= @lower and @upper >= @flex and @upper >= @cardio and @upper >= @core
            @hero = "Upper"
            @max = @upper
        elsif @lower >= @strength and @lower >= @upper and @lower >= @flex and @lower >= @cardio and @lower >= @core
            @hero = "Lower"
            @max = @lower
        else
            @hero = "Something weird happened"
        end
        if @max < 5
            @max = 5
        end
        @max = @max.to_f
        @strength = @strength / @max * 5
        @flex = @flex / @max * 5
        @upper = @upper / @max * 5
        @lower = @lower / @max * 5
        @cardio = @cardio / @max * 5
        @core = @core / @max * 5
    end
    def captain
        @strength = 0
        @cardio = 0
        @flex = 0
        @upper = 0
        @lower = 0
        @core = 0
        @hero = "None"
        @max = 0
        
        entries = Journal.all
        entries.each do |entry|
            workout = entry.workout
            if workout == "Arms"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Chest"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Back"
                @upper = @upper + 1
            elsif workout == "Legs"
                @strength = @strength + 1
                @lower = @lower + 1
            elsif workout == "Buns"
                @lower = @lower + 1
            elsif workout == "Calves"
                @lower = @lower + 1
            elsif workout == "Running"
                @cardio = @cardio + 1
                @lower = @lower + 1
                @core = @core + 1
            elsif workout == "Swimming"
                @cardio = @cardio + 1
                @core = @core + 1
                @lower = @lower + 1
            elsif workout == "Hiking"
                @lower = @lower + 1
                @cardio = @cardio + 1
            elsif workout == "Basketball"
                @cardio = @cardio + 1
                @lower = @lower + 1
            elsif workout == "Yoga"
                @flex = @flex + 1
            elsif workout == "Stretching"
                @flex = @flex + 1
            elsif workout == "Pilates"
                @flex = @flex + 1
                @core = @core + 1
            end
        end
        if @strength < 1 and @upper < 1 and @lower < 1 and @flex < 1 and @cardio < 1 and @core < 1
            @hero = "None"
            @max = 0
        elsif @strength >= @upper and @strength >= @lower and @strength >= @flex and @strength >= @cardio and @strength >= @core
            @hero = "Strength"
            @max = @strength
        elsif @flex >= @strength and @flex >= @upper and @flex >= @lower and @flex >= @cardio and @flex >= @core
            @hero = "Flex"
            @max = @flex
        elsif @cardio >= @strength and @cardio >= @flex and @cardio >= @upper and @cardio >= @lower and @cardio >= @core
            @hero = "Cardio"
            @max = @cardio
        elsif @core >= @strength and @core >= @cardio and @core >= @flex and @core >= @upper and @core >= @lower
            @hero = "Core"
            @max = @core
        elsif @upper >= @strength and @upper >= @lower and @upper >= @flex and @upper >= @cardio and @upper >= @core
            @hero = "Upper"
            @max = @upper
        elsif @lower >= @strength and @lower >= @upper and @lower >= @flex and @lower >= @cardio and @lower >= @core
            @hero = "Lower"
            @max = @lower
        else
            @hero = "Something weird happened"
        end
        if @max < 5
            @max = 5
        end
        @max = @max.to_f
        @strength = @strength / @max * 5
        @flex = @flex / @max * 5
        @upper = @upper / @max * 5
        @lower = @lower / @max * 5
        @cardio = @cardio / @max * 5
        @core = @core / @max * 5
    end
    def spidey
        @strength = 0
        @cardio = 0
        @flex = 0
        @upper = 0
        @lower = 0
        @core = 0
        @hero = "None"
        @max = 0
        
        entries = Journal.all
        entries.each do |entry|
            workout = entry.workout
            if workout == "Arms"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Chest"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Back"
                @upper = @upper + 1
            elsif workout == "Legs"
                @strength = @strength + 1
                @lower = @lower + 1
            elsif workout == "Buns"
                @lower = @lower + 1
            elsif workout == "Calves"
                @lower = @lower + 1
            elsif workout == "Running"
                @cardio = @cardio + 1
                @lower = @lower + 1
                @core = @core + 1
            elsif workout == "Swimming"
                @cardio = @cardio + 1
                @core = @core + 1
                @lower = @lower + 1
            elsif workout == "Hiking"
                @lower = @lower + 1
                @cardio = @cardio + 1
            elsif workout == "Basketball"
                @cardio = @cardio + 1
                @lower = @lower + 1
            elsif workout == "Yoga"
                @flex = @flex + 1
            elsif workout == "Stretching"
                @flex = @flex + 1
            elsif workout == "Pilates"
                @flex = @flex + 1
                @core = @core + 1
            end
        end
        if @strength < 1 and @upper < 1 and @lower < 1 and @flex < 1 and @cardio < 1 and @core < 1
            @hero = "None"
            @max = 0
        elsif @strength >= @upper and @strength >= @lower and @strength >= @flex and @strength >= @cardio and @strength >= @core
            @hero = "Strength"
            @max = @strength
        elsif @flex >= @strength and @flex >= @upper and @flex >= @lower and @flex >= @cardio and @flex >= @core
            @hero = "Flex"
            @max = @flex
        elsif @cardio >= @strength and @cardio >= @flex and @cardio >= @upper and @cardio >= @lower and @cardio >= @core
            @hero = "Cardio"
            @max = @cardio
        elsif @core >= @strength and @core >= @cardio and @core >= @flex and @core >= @upper and @core >= @lower
            @hero = "Core"
            @max = @core
        elsif @upper >= @strength and @upper >= @lower and @upper >= @flex and @upper >= @cardio and @upper >= @core
            @hero = "Upper"
            @max = @upper
        elsif @lower >= @strength and @lower >= @upper and @lower >= @flex and @lower >= @cardio and @lower >= @core
            @hero = "Lower"
            @max = @lower
        else
            @hero = "Something weird happened"
        end
        if @max < 5
            @max = 5
        end
        @max = @max.to_f
        @strength = @strength / @max * 5
        @flex = @flex / @max * 5
        @upper = @upper / @max * 5
        @lower = @lower / @max * 5
        @cardio = @cardio / @max * 5
        @core = @core / @max * 5
    end
    def hulk
        @strength = 0
        @cardio = 0
        @flex = 0
        @upper = 0
        @lower = 0
        @core = 0
        @hero = "None"
        @max = 0
        @queries = [:activity_list, :steps]
        
        entries = Journal.all
        entries.each do |entry|
            workout = entry.workout
            if workout == "Arms"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Chest"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Back"
                @upper = @upper + 1
            elsif workout == "Legs"
                @strength = @strength + 1
                @lower = @lower + 1
            elsif workout == "Buns"
                @lower = @lower + 1
            elsif workout == "Calves"
                @lower = @lower + 1
            elsif workout == "Running"
                @cardio = @cardio + 1
                @lower = @lower + 1
                @core = @core + 1
            elsif workout == "Swimming"
                @cardio = @cardio + 1
                @core = @core + 1
                @lower = @lower + 1
            elsif workout == "Hiking"
                @lower = @lower + 1
                @cardio = @cardio + 1
            elsif workout == "Basketball"
                @cardio = @cardio + 1
                @lower = @lower + 1
            elsif workout == "Yoga"
                @flex = @flex + 1
            elsif workout == "Stretching"
                @flex = @flex + 1
            elsif workout == "Pilates"
                @flex = @flex + 1
                @core = @core + 1
            end
        end
        if @strength < 1 and @upper < 1 and @lower < 1 and @flex < 1 and @cardio < 1 and @core < 1
            @hero = "None"
            @max = 0
        elsif @strength >= @upper and @strength >= @lower and @strength >= @flex and @strength >= @cardio and @strength >= @core
            @hero = "Strength"
            @max = @strength
        elsif @flex >= @strength and @flex >= @upper and @flex >= @lower and @flex >= @cardio and @flex >= @core
            @hero = "Flex"
            @max = @flex
        elsif @cardio >= @strength and @cardio >= @flex and @cardio >= @upper and @cardio >= @lower and @cardio >= @core
            @hero = "Cardio"
            @max = @cardio
        elsif @core >= @strength and @core >= @cardio and @core >= @flex and @core >= @upper and @core >= @lower
            @hero = "Core"
            @max = @core
        elsif @upper >= @strength and @upper >= @lower and @upper >= @flex and @upper >= @cardio and @upper >= @core
            @hero = "Upper"
            @max = @upper
        elsif @lower >= @strength and @lower >= @upper and @lower >= @flex and @lower >= @cardio and @lower >= @core
            @hero = "Lower"
            @max = @lower
        else
            @hero = "Something weird happened"
        end
        if @max < 5
            @max = 5
        end
        @max = @max.to_f
        @strength = @strength / @max * 5
        @flex = @flex / @max * 5
        @upper = @upper / @max * 5
        @lower = @lower / @max * 5
        @cardio = @cardio / @max * 5
        @core = @core / @max * 5
    end
    def thor
        @strength = 0
        @cardio = 0
        @flex = 0
        @upper = 0
        @lower = 0
        @core = 0
        @hero = "None"
        @max = 0
        
        entries = Journal.all
        entries.each do |entry|
            workout = entry.workout
            if workout == "Arms"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Chest"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Back"
                @upper = @upper + 1
            elsif workout == "Legs"
                @strength = @strength + 1
                @lower = @lower + 1
            elsif workout == "Buns"
                @lower = @lower + 1
            elsif workout == "Calves"
                @lower = @lower + 1
            elsif workout == "Running"
                @cardio = @cardio + 1
                @lower = @lower + 1
                @core = @core + 1
            elsif workout == "Swimming"
                @cardio = @cardio + 1
                @core = @core + 1
                @lower = @lower + 1
            elsif workout == "Hiking"
                @lower = @lower + 1
                @cardio = @cardio + 1
            elsif workout == "Basketball"
                @cardio = @cardio + 1
                @lower = @lower + 1
            elsif workout == "Yoga"
                @flex = @flex + 1
            elsif workout == "Stretching"
                @flex = @flex + 1
            elsif workout == "Pilates"
                @flex = @flex + 1
                @core = @core + 1
            end
        end
        if @strength < 1 and @upper < 1 and @lower < 1 and @flex < 1 and @cardio < 1 and @core < 1
            @hero = "None"
            @max = 0
        elsif @strength >= @upper and @strength >= @lower and @strength >= @flex and @strength >= @cardio and @strength >= @core
            @hero = "Strength"
            @max = @strength
        elsif @flex >= @strength and @flex >= @upper and @flex >= @lower and @flex >= @cardio and @flex >= @core
            @hero = "Flex"
            @max = @flex
        elsif @cardio >= @strength and @cardio >= @flex and @cardio >= @upper and @cardio >= @lower and @cardio >= @core
            @hero = "Cardio"
            @max = @cardio
        elsif @core >= @strength and @core >= @cardio and @core >= @flex and @core >= @upper and @core >= @lower
            @hero = "Core"
            @max = @core
        elsif @upper >= @strength and @upper >= @lower and @upper >= @flex and @upper >= @cardio and @upper >= @core
            @hero = "Upper"
            @max = @upper
        elsif @lower >= @strength and @lower >= @upper and @lower >= @flex and @lower >= @cardio and @lower >= @core
            @hero = "Lower"
            @max = @lower
        else
            @hero = "Something weird happened"
        end
        if @max < 5
            @max = 5
        end
        @max = @max.to_f
        @strength = @strength / @max * 5
        @flex = @flex / @max * 5
        @upper = @upper / @max * 5
        @lower = @lower / @max * 5
        @cardio = @cardio / @max * 5
        @core = @core / @max * 5
    end
    def ghost
        @strength = 0
        @cardio = 0
        @flex = 0
        @upper = 0
        @lower = 0
        @core = 0
        @hero = "None"
        @max = 0
        
        entries = Journal.all
        entries.each do |entry|
            workout = entry.workout
            if workout == "Arms"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Chest"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Back"
                @upper = @upper + 1
            elsif workout == "Legs"
                @strength = @strength + 1
                @lower = @lower + 1
            elsif workout == "Buns"
                @lower = @lower + 1
            elsif workout == "Calves"
                @lower = @lower + 1
            elsif workout == "Running"
                @cardio = @cardio + 1
                @lower = @lower + 1
                @core = @core + 1
            elsif workout == "Swimming"
                @cardio = @cardio + 1
                @core = @core + 1
                @lower = @lower + 1
            elsif workout == "Hiking"
                @lower = @lower + 1
                @cardio = @cardio + 1
            elsif workout == "Basketball"
                @cardio = @cardio + 1
                @lower = @lower + 1
            elsif workout == "Yoga"
                @flex = @flex + 1
            elsif workout == "Stretching"
                @flex = @flex + 1
            elsif workout == "Pilates"
                @flex = @flex + 1
                @core = @core + 1
            end
        end
        if @strength < 1 and @upper < 1 and @lower < 1 and @flex < 1 and @cardio < 1 and @core < 1
            @hero = "None"
            @max = 0
        elsif @strength >= @upper and @strength >= @lower and @strength >= @flex and @strength >= @cardio and @strength >= @core
            @hero = "Strength"
            @max = @strength
        elsif @flex >= @strength and @flex >= @upper and @flex >= @lower and @flex >= @cardio and @flex >= @core
            @hero = "Flex"
            @max = @flex
        elsif @cardio >= @strength and @cardio >= @flex and @cardio >= @upper and @cardio >= @lower and @cardio >= @core
            @hero = "Cardio"
            @max = @cardio
        elsif @core >= @strength and @core >= @cardio and @core >= @flex and @core >= @upper and @core >= @lower
            @hero = "Core"
            @max = @core
        elsif @upper >= @strength and @upper >= @lower and @upper >= @flex and @upper >= @cardio and @upper >= @core
            @hero = "Upper"
            @max = @upper
        elsif @lower >= @strength and @lower >= @upper and @lower >= @flex and @lower >= @cardio and @lower >= @core
            @hero = "Lower"
            @max = @lower
        else
            @hero = "Something weird happened"
        end
        if @max < 5
            @max = 5
        end
        @max = @max.to_f
        @strength = @strength / @max * 5
        @flex = @flex / @max * 5
        @upper = @upper / @max * 5
        @lower = @lower / @max * 5
        @cardio = @cardio / @max * 5
        @core = @core / @max * 5
    end
    def show
        @strength = 0
        @cardio = 0
        @flex = 0
        @upper = 0
        @lower = 0
        @core = 0
        @hero = "None"
        @max = 0
        @queries = [:activity_list, :steps]
        
        entries = Journal.all
        entries.each do |entry|
            workout = entry.workout
            if workout == "Arms"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Chest"
                @strength = @strength + 1
                @upper = @upper + 1
            elsif workout == "Back"
                @upper = @upper + 1
            elsif workout == "Legs"
                @strength = @strength + 1
                @lower = @lower + 1
            elsif workout == "Buns"
                @lower = @lower + 1
            elsif workout == "Calves"
                @lower = @lower + 1
            elsif workout == "Running"
                @cardio = @cardio + 1
                @lower = @lower + 1
                @core = @core + 1
            elsif workout == "Swimming"
                @cardio = @cardio + 1
                @core = @core + 1
                @lower = @lower + 1
            elsif workout == "Hiking"
                @lower = @lower + 1
                @cardio = @cardio + 1
            elsif workout == "Basketball"
                @cardio = @cardio + 1
                @lower = @lower + 1
            elsif workout == "Yoga"
                @flex = @flex + 1
            elsif workout == "Stretching"
                @flex = @flex + 1
            elsif workout == "Pilates"
                @flex = @flex + 1
                @core = @core + 1
            end
        end
        if @strength < 1 and @upper < 1 and @lower < 1 and @flex < 1 and @cardio < 1 and @core < 1
            @hero = "None"
            @max = 0
            redirect_to ghost_hero_path and return
        elsif @strength >= @upper and @strength >= @lower and @strength >= @flex and @strength >= @cardio and @strength >= @core
            @hero = "Strength"
            @max = @strength
            redirect_to captain_hero_path and return
        elsif @flex >= @strength and @flex >= @upper and @flex >= @lower and @flex >= @cardio and @flex >= @core
            @hero = "Flex"
            @max = @flex
            redirect_to spidey_hero_path and return
        elsif @cardio >= @strength and @cardio >= @flex and @cardio >= @upper and @cardio >= @lower and @cardio >= @core
            @hero = "Cardio"
            @max = @cardio
            redirect_to panther_hero_path and return
        elsif @core >= @strength and @core >= @cardio and @core >= @flex and @core >= @upper and @core >= @lower
            @hero = "Core"
            @max = @core
            redirect_to spidey_hero_path and return
        elsif @upper >= @strength and @upper >= @lower and @upper >= @flex and @upper >= @cardio and @upper >= @core
            @hero = "Upper"
            @max = @upper
            redirect_to thor_hero_path and return
        elsif @lower >= @strength and @lower >= @upper and @lower >= @flex and @lower >= @cardio and @lower >= @core
            @hero = "Lower"
            @max = @lower
            redirect_to hulk_hero_path and return
        else
            @hero = "Something weird happened"
        end
        if @max < 5
            @max = 5
        end
        @max = @max.to_f
        @strength = @strength / @max * 5
        @flex = @flex / @max * 5
        @upper = @upper / @max * 5
        @lower = @lower / @max * 5
        @cardio = @cardio / @max * 5
        @core = @core / @max * 5
    end
end