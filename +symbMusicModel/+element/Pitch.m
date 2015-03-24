classdef Pitch
    
    properties (Constant)
        B3 = 493.8833;
        A3 = 440;
        G3 = 391.9954;
        F3 = 349.2282;
        E3 = 329.6276;
        D3 = 293.6648;
        C3 = 261.6256;
    end
    
    methods (Static = true)
        function freq = computeFreq(chroma)
            switch lower(chroma(1))
                case 'b'
                    freq = symbMusicModel.element.Pitch.B3;
                case 'a'
                    freq = symbMusicModel.element.Pitch.A3;
                case 'g'
                    freq = symbMusicModel.element.Pitch.G3;
                case 'f'
                    freq = symbMusicModel.element.Pitch.F3;
                case 'e'
                    freq = symbMusicModel.element.Pitch.E3;
                case 'd'
                    freq = symbMusicModel.element.Pitch.D3;
                case 'c'
                    freq = symbMusicModel.element.Pitch.C3;
            end
            if str2double(chroma(2)) ~= 3
                freq = freq * power(2, str2double(chroma(2))-3);
            end
            if length(chroma) == 3
                switch lower(chroma(3))
                    case 's'
                        freq = freq * power(2, 1/12);
                    case 'f'
                        freq = freq / power(2, 1/12);
                end
            end
        end
    end
    
end

