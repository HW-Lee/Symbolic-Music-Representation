classdef Staff < handle
    
    properties
        measures;
        sumDPM; % sum of duration per measure
        DPB; % duration per beat
    end
    
    methods
        function obj = Staff(measures)
            if nargin == 1
                obj.measures = measures;
            else
                obj.measures = cell(0);
            end
        end
        function [] = push(obj, measure)
            if abs(measure.sumDuration - obj.sumDPM/obj.DPB) < 1e-7
                obj.measures{length(obj.measures)+1} = measure;
            else
                error('measure error');
            end
        end
        function [] = remove(obj, idx)
            obj.measures(idx) = [];
        end
        function [] = setSumDurationPerMeasure(obj, sumDPM)
            obj.sumDPM = sumDPM;
        end
        function [] = setDurationPerBeat(obj, DPB)
            obj.DPB = DPB;
        end
    end
    
end

