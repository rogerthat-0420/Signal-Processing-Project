function out= background_identification(input)

pressure_cooker=audioread('truncate_pressure_cooker.wav');
city_traffic=audioread('truncate_city_traffic.wav');
ceiling_fan=audioread('truncate_ceiling_fan.wav');
water_pump=audioread('truncate_water_pump.wav');

% this is to ensure that all the loaded files are column vectors
input = input(:);
pressure_cooker = pressure_cooker(:);
city_traffic=city_traffic(:);
ceiling_fan=ceiling_fan(:);
water_pump=water_pump(:);

cc_pressurecooker = xcorr(input, pressure_cooker);

cc_citytraffic = xcorr(input, city_traffic);

cc_ceilingfan = xcorr(input,ceiling_fan);

cc_waterpump = xcorr(input,water_pump);

[~, maxIndex] = max([max(cc_pressurecooker),max(cc_citytraffic),max(cc_ceilingfan),max(cc_waterpump)]);

out=maxIndex;