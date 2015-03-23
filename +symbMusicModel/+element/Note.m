classdef Note < handle
    
    properties
        freq; % in terms of Hz
        duration; % in terms of note, e.g. eighth note, sixteenth note...
        amp;
    end
    
    methods
        function obj = Note(data)
            if nargin == 1
                obj.freq = data.freq;
                obj.duration = data.duration;
                obj.amp = data.amp;
            else
                obj.freq = 0;
                obj.duration = 0;
                obj.amp = 0;
            end
        end
        function [] = setFreq(obj, f)
            obj.freq = f;
        end
        function [] = setDuration(obj, d)
            obj.duration = d;
        end
        function [] = setAmp(obj, a)
            obj.amp = a;
        end
    end
    
end

