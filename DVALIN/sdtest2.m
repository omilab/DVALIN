filename='D:\Dropbox\Dropbox\OUTS\oldnewtest.wav';
% [x,fs]=detectVoiced(filename);
% y = [];
% for k = 1 : numel(x)
% 	y = [y; x{k}];
% end
% audiowrite('2.wav',y,fs)
%filename='1.wav';
stwin=0.3;
mtwin=stwin*20;
[segs, classes,l1,c1]=speakerDiarization(filename,2,stwin, stwin, mtwin,mtwin*0.1);
segmentationPlotResults(segs,classes,filename);