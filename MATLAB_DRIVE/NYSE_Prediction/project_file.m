data = readtable('fundamentals.csv', 'VariableNamingRule', 'preserve');
disp(head(data));
data.Properties.VariableNames{'Ticker Symbol'} = 'TickerSymbol';

data.('Period Ending') = datetime(data.('Period Ending'), 'InputFormat', 'yyyy-MM-dd');
summary(data);

%% Plotting 4 metric over time for 'AAL':
ticker = 'AAL';
tickerData = data(strcmp(data.TickerSymbol, ticker), :);


%% We already have tickerData filtered for the 'AAL' ticker:
figure;

subplot(3,2,1);
plot(tickerData.('Period Ending'), tickerData.('Net Income'), 'LineWidth', 1.5);
title('Net Income');
xlabel('Period Ending'); ylabel('Net Income');
grid on;

subplot(3,2,2);
plot(tickerData.('Period Ending'), tickerData.('Total Revenue'), 'LineWidth', 1.5);
title('Total Revenue');
xlabel('Period Ending'); ylabel('Total Revenue');
grid on;

subplot(3,2,3);
plot(tickerData.('Period Ending'), tickerData.('Total Assets'), 'LineWidth', 1.5);
title('Total Assets');
xlabel('Period Ending'); ylabel('Total Assets');
grid on;

subplot(3,2,4);
plot(tickerData.('Period Ending'), tickerData.('Earnings Per Share'), 'LineWidth', 1.5);
title('Earnings Per Share');
xlabel('Period Ending'); ylabel('EPS');
grid on;

subplot(3,2,5);
plot(tickerData.('Period Ending'), tickerData.('Current Ratio'), 'LineWidth', 1.5);
title('Current Ratio');
xlabel('Period Ending'); ylabel('Current Ratio');
grid on;

sgtitle(['4 Financial Metrics for ', tickerData.TickerSymbol{1}]);

% Linking the x-axes of all subplots
ax = findall(gcf, 'Type', 'axes');  % Get all axes in the current figure
linkaxes(ax, 'x');                  % Link their x-axes for simultaneous zoom/pan

% Format the x-axis to display years
datetick('x','yyyy', 'keeplimits');  % or 'mm/yyyy'

% Adjust the figure size (width x height in pixels)
set(gcf, 'Position', [100, 100, 1000, 800]);

%% 


