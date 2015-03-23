classdef MutableArray < handle
    
    properties
        maxSize;
        data;
    end
    
    methods
        function obj = MutableArray(size)
            if nargin == 1
                obj.data = zeros(size, 1);
                obj.maxSize = 0;
            else
                obj.data = zeros(10, 1);
                obj.maxSize = 0;
            end
        end
        
        function size = size(obj)
            size = obj.maxSize;
        end
        
        function [] = add(obj, num)
            if obj.maxSize + length(num) > length(obj.data)
                if obj.maxSize + length(num) > length(obj.data)*2
                    obj.data = [obj.data(1:obj.maxSize); zeros(length(num), 1)];
                else
                    obj.data = [obj.data; zeros(size(obj.data))];
                end
            end
            obj.data(obj.maxSize+1:obj.maxSize+length(num)) = num(:);
            obj.maxSize = obj.maxSize + length(num);
        end
        
        function [] = insert(obj, num, idx)
            if idx > obj.maxSize
                error('IndexOutOfBoundException');
            else
                if obj.maxSize + length(num) > length(obj.data)
                    if obj.maxSize + length(num) > length(obj.data)*2
                        obj.data = [obj.data(1:obj.maxSize); zeros(length(num), 1)];
                    else
                        obj.data = [obj.data; zeros(size(obj.data))];
                    end
                end
                obj.data(idx+1+length(num):obj.maxSize+length(num)) = obj.data(idx+1:obj.maxSize);
                obj.data(idx+1:idx+length(num)) = num(:);
                obj.maxSize = obj.maxSize + length(num);
            end
        end
        
        function [] = clear(obj)
            obj.data = zeros(10, 1);
            obj.maxSize = 0;
        end
        
        function value = get(obj, idx)
            if idx > obj.maxSize
                error('IndexOutOfBoundException');
            else
                value = obj.data(idx);
            end
        end
        
        function arrayData = array(obj)
            arrayData = obj.data(1:obj.maxSize);
        end
    end
    
end

