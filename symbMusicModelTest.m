clear all; close all;
import symbMusicModel.element.*;
import symbMusicModel.utilds.*;
import symbMusicModel.signalgenerator.*;


%% MutableArray Testing Code
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


%% Staff Testing Part
fs = 16000;
bpm = 170;


% Bee
staff = Staff();
staff.setDurationPerBeat(1/4);
staff.setBeatPerMeasure(4);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('G3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('E3')) ));
meas.push(Note( struct('duration', 1/2, 'amp', 1, 'freq', Pitch.computeFreq('E3')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('F3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('D3')) ));
meas.push(Note( struct('duration', 1/2, 'amp', 1, 'freq', Pitch.computeFreq('D3')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('C3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('D3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('E3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('F3')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('G3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('G3')) ));
meas.push(Note( struct('duration', 1/2, 'amp', 1, 'freq', Pitch.computeFreq('G3')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('G3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('E3')) ));
meas.push(Note( struct('duration', 1/2, 'amp', 1, 'freq', Pitch.computeFreq('E3')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('F3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('D3')) ));
meas.push(Note( struct('duration', 1/2, 'amp', 1, 'freq', Pitch.computeFreq('D3')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('C3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('E3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('G3')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('G3')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 4/4, 'amp', 1, 'freq', Pitch.computeFreq('E3')) ));
staff.push(meas);

sig1 = SingleFreqGenerator.generate(staff, bpm, fs);



% Minuet in G Major
staff = Staff();
staff.setDurationPerBeat(1/4);
staff.setBeatPerMeasure(3);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('D3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('G2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('A2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('B2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('C3')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('D3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('G2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('F2s')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('G2')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('E3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('C3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('D3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('E3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('F3s')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('G3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('G2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('F2s')) ));
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('G2')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('C3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('D3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('C3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('B2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('A2')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('B2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('C3')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('B2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('A2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('G2')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('F2s')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('G2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('A2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('B2')) ));
meas.push(Note( struct('duration', 1/8, 'amp', 1, 'freq', Pitch.computeFreq('G2')) ));
staff.push(meas);

meas = Measure();
meas.push(Note( struct('duration', 1/4, 'amp', 1, 'freq', Pitch.computeFreq('B2')) ));
meas.push(Note( struct('duration', 1/16, 'amp', 1, 'freq', Pitch.computeFreq('A2')) ));
meas.push(Note( struct('duration', 1/16, 'amp', 1, 'freq', Pitch.computeFreq('B2')) ));
meas.push(Note( struct('duration', 3/8, 'amp', 1, 'freq', Pitch.computeFreq('A2')) ));
staff.push(meas);

sig2 = SingleFreqGenerator.generate(staff, bpm, fs);
