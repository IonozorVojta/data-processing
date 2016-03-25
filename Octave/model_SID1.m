%Vojtěch Laitl 2016
%Ionozor group - VLF data analysis
load 't0.txt' %model pro počítač v Ostrově
load 'L0.txt' %model v souborech t0.txt a L0.txt prosím neměnit
load 't.txt'
load 'L.txt'
L1 = L0 + 10
plot(t0,L1,'m;Model;')
ishold
hold on
plot(t,L,'b;Measurement;')
hold off
xlabel "Time interval [t/24 hrs.]"
ylabel"Radio signal intensity level [dB]"
print 'SID_model_date.jpg','-dpng','-landscape','-FArial:18'
close