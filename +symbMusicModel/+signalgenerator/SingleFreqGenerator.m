classdef SingleFreqGenerator < handle

    properties
    end
    
    methods (Static = true)
        function sig = generate(staff, bpm, fs)
            sig = symbMusicModel.utilds.MutableArray();
            bps = bpm/60;
            NsamplePerBeat = round(fs/bps);
            for measureIdx = 1:length(staff.measures)
                measure = staff.measures{measureIdx};
                phase = 0;
                for noteIdx = 1:length(measure.notes)
                    note = measure.notes{noteIdx};
                    if sig.size() > 0
                        phase = acos( sig.get(sig.size())/note.amp );
                    end
                    sig_frag = note.amp*cos( 2*pi*note.freq*(1:round(NsamplePerBeat*note.duration/staff.DPB))/fs + phase );
                    sig_frag = sig_frag .* exp(-( (note.duration/staff.DPB)*(1:length(sig_frag)) /length(sig_frag)*sqrt(2)));
                    sig.add(sig_frag);
                end
            end
            sig = sig.array();
        end
    end
    
end

