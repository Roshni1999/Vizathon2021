[India, d1] = xlsread('States2.xlsx','India');
Andhra_Pradesh = xlsread('States2.xlsx','AP');
Arunachal_Pradesh = xlsread('States2.xlsx','Arunachal');
Assam = xlsread('States2.xlsx','Assam');
Bihar = xlsread('States2.xlsx','Bihar');
Chhattisgarh = xlsread('States2.xlsx','Chhattisgarh');
Goa = xlsread('States2.xlsx','Goa');
Gujarat = xlsread('States2.xlsx','Gujarat');
Haryana = xlsread('States2.xlsx','Haryana');
Himachal_Pradesh = xlsread('States2.xlsx','Himachal');
Jharkhand = xlsread('States2.xlsx','Jharkhand');
Karnataka = xlsread('States2.xlsx','Karnataka');
Kerala = xlsread('States2.xlsx','Kerala');
Madhya_Pradesh = xlsread('States2.xlsx','MP');
Maharashtra = xlsread('States2.xlsx','Maharashtra');
Manipur = xlsread('States2.xlsx','Manipur');
Meghalaya = xlsread('States2.xlsx','Meghalaya');
Mizoram = xlsread('States2.xlsx','Mizoram');
Nagaland = xlsread('States2.xlsx','Nagaland');
Odisha = xlsread('States2.xlsx','Odisha');
Punjab = xlsread('States2.xlsx','Punjab');
Rajasthan = xlsread('States2.xlsx','Rajasthan');
Sikkim = xlsread('States2.xlsx','Sikkim');
Tamil_Nadu = xlsread('States2.xlsx','Assam');
Telangana = xlsread('States2.xlsx','Telangana');
Tripura = xlsread('States2.xlsx','Tripura');
Uttar_Pradesh = xlsread('States2.xlsx','UP');
Uttarakhand = xlsread('States2.xlsx','Uttarakhand');
West_Bengal = xlsread('States2.xlsx','WB');

Andaman_Nicobar = xlsread('States2.xlsx','Andaman');
Chandigarh = xlsread('States2.xlsx','Chandigarh');
DadraNagarHaveli_DamanDiu = xlsread('States2.xlsx','Dadra_Diu');
Delhi = xlsread('States2.xlsx','Delhi');
Jammu_Kashmir = xlsread('States2.xlsx','JK');
Ladakh = xlsread('States2.xlsx','Ladakh');
Lakshadweep = xlsread('States2.xlsx','Lakshadweep');
Puducherry = xlsread('States2.xlsx','Puducherry');
%%
%India data
%Vaccine Types
Covaxin = India(:,9);  Covaxin(isnan(Covaxin))=0;
Covishield = India(:,10); Covishield(isnan(Covishield))=0;
Sputnik = India(:, 11); Sputnik(isnan(Sputnik))=0;

Covaxin_sum = sum(Covaxin);
Covishield_sum = sum(Covishield);
Sputnik_sum = sum(Sputnik);

figure, set(gcf,'color','w')
labels = {'Covaxin', 'Sputnik','Covishield' };
X = [Covaxin_sum Sputnik_sum Covishield_sum ];
explode = [1 1 1];
pie(X, explode)
lgd = legend(labels);
title('Vaccines Administered in India (16Jan - 30July, 2021)')

%%
%Gender
Male = India(:,19);  Male(isnan(Male))=0;
Female = India(:,20); Female(isnan(Female))=0;
Others = India(: ,21); Others(isnan(Others))=0;

figure, set(gcf,'color','w')
labels = {'Male', 'Other','Female' };
X = [sum(Male) sum(Others) sum(Female)];

explode = [0 0 0];
pie(X, explode)
lgd = legend(labels);
title('Gender distribution of doses administered in India (16Jan - 30July, 2021)')

%%
%Age Group

figure, set(gcf,'color','w')
labels = {'18 - 44 ', '45 - 60', 'Above 60' };
X = [194933854 155174811 112763499];  %From Covin database
explode = [0 0 0];
pie(X, explode)
lgd = legend(labels);
title('Age-Group of Vaccinated Individuals in India ( 16Jan - 30July, 2021)')

%%






