classdef SingleFreqGenerator < handle

    properties
    end
    
    methods (Static = true)
        function sig = generate(staff, bpm, fs)
            NsamplePerBeat = round(fs/bpm);
            for measureIdx = 1:length(staff.measures)
            end
        end
    end
    
end

