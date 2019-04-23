%% Liong, S. T., See, J., Wong, K., & Phan, R. C. W. (2018). Less is more: Micro-expression recognition from video using apex frame. Signal Processing: Image Communication, 62, 82-92
% Bi-WOOF implementation
% Version 1.0
% Author: Liong Sze Teng
% Email: stliong@fcu.edu.tw



magPath = ['D:/magnitude/'];        % Path where magnitude.mat are saved
orientPath = ['D:/orientation/'];    % Path where orientation.mat are saved
osPath = ['D:/os/'];                            % Path where opticalstrain.mat are saved

nBin = 8;       
nW = 5;
nH = nW;

data_mat = [];

for vid = 1:size(vid_list,1) % vid_list =  video list

    sub_path = vid_list{vid};
    mag = load([magPath,sub_path]);     % Magnitude
    mag = cell2mat(struct2cell(mag));

    orient = load([orientPath,sub_path]);   % Orientation
    orient = cell2mat(struct2cell(orient));

    os = load([osPath,sub_path]);           % Optical strain
    os = cell2mat(struct2cell(os));

    Hist = [];
    sumMag = [];
    
    % 5 x 5 block BiWOOF feature extraction
    [nheight nwidth] = size(orient);
    h=floor(nheight/nH); w=floor(nwidth/nW);
    ah=0;bh=0;aw=0;bw=0;
    for hh=1:nH
        for ww=1:nW
            if hh==1
                ah=1;
                bh=hh*h+1;
            elseif hh==nH
                ah=(hh-1)*h;
                bh=nheight;
            else
                ah=(hh-1)*h;
                bh=hh*h+1;
            end

            if ww==1
                aw=1;
                bw=ww*w+1;
            elseif ww==nW
                aw=(ww-1)*w;
                bw=nwidth;
            else
                aw=(ww-1)*w;
                bw=ww*w+1;
            end
    
            % Reshape to 1 row 
            orientRow = reshape(orient([ah:bh], [aw:bw],:) , [] ,1);    
            magRow = reshape(mag([ah:bh], [aw:bw],:) , [] ,1);
            osRow = reshape(os([ah:bh], [aw:bw],:) , [] ,1);        
            
            % Obtain global weight (each block) of optical strain 
            sumMag = [sumMag,sum(osRow)]; 
            
            % Weight magnitude locally (each bin) 
            histt = weightedhistc(orientRow,magRow,[-180 : 360/nBin : 179]);
            histt = histt/sum(histt); 
            Hist = [Hist,histt];
        end
    end

    % Weight optical strain globally (each block) 
    for loop = 1:length(sumMag)
            Hist((loop-1)*nBin+1 : loop*nBin) = Hist((loop-1)*nBin+1 : loop*nBin) * sumMag(loop);
    end
     Hist = Hist/norm(Hist); 
end