clear all; close all;
import symbMusicModel.element.*;
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

staff = Staff();
staff.setDurationPerBeat(1/4);
staff.setBeatPerMeasure(4);

G3 = 391.9954;
F3 = 349.2282;
E3 = 329.6276;
D3 = 293.6648;
C3 = 261.6256;

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', G3) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', E3) ));
meas.push(Note( struct('duration', 1/2, 'amp', 1, 'freq', E3) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', F3) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', D3) ));
meas.push(Note( struct('duration', 1/2, 'amp', 1, 'freq', D3) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', C3) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', D3) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', E3) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', F3) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', G3) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', G3) ));
meas.push(Note( struct('duration', 1/2, 'amp', 1, 'freq', G3) ));
staff.push(meas);
