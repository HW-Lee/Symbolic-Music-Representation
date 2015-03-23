clear all; close all;
import symbMusicModel.measure.*;
import symbMusicModel.staff.*;
import symbMusicModel.note.*;
import symbMusicModel.utilds.*;

array = MutableArray();
array.add(ones(5, 1));
if array.size() ~= 5 || sum(array.data(1:array.size())) ~= 5 || length(array.data) ~= 10
    error('testcase01 incorrect');
end
array.add(2*ones(7, 1));
if array.size() ~= 12 || sum(array.data(6:array.size())) ~= 14 || length(array.data) ~= 20
    error('testcase02 incorrect');
end
array.insert(3*ones(29, 1), 2);
if array.size() ~= 41 || sum(array.data(3:31)) ~= 87 || length(array.data) ~= 41
    error('testcase03 incorrect');
end