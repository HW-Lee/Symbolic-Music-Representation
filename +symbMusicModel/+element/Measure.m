classdef Measure < handle
    
    properties
        notes; % note array
        sumDuration; % sum of duration of all notes
    end
    
    methods
        function obj = Measure(notes)
            if nargin == 1
                obj.notes = notes;
                obj.sumDuration = 0;
                for ii = 1:length(notes)
                    obj.sumDuration = obj.sumDuration + notes{ii}.duration;
                end
            else
                obj.notes = cell(0);
                obj.sumDuration = 0;
            end
        end
        function [] = push(obj, note)
            obj.notes{length(obj.notes)+1} = note;
            obj.sumDuration = obj.sumDuration + note.duration;
        end
        function [] = remove(obj, idx)
            obj.sumDuration = obj.sumDuration - obj.notes{idx}.duration;
            obj.notes(idx) = [];
        end
    end
    
end
