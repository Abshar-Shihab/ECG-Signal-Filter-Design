classdef app1_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                   matlab.ui.Figure
        ResetButton                matlab.ui.control.Button
        plotMagphButton            matlab.ui.control.Button
        ApplyAllButton             matlab.ui.control.Button
        LoadButton                 matlab.ui.control.Button
        ApplyButton_3              matlab.ui.control.Button
        ApplyButton_2              matlab.ui.control.Button
        ApplyButton                matlab.ui.control.Button
        above45HzButtonGroup       matlab.ui.container.ButtonGroup
        EllipticButton_3           matlab.ui.control.RadioButton
        ChebyshevtypeIIButton_3    matlab.ui.control.RadioButton
        ChebyshevtypeIButton_3     matlab.ui.control.RadioButton
        ButterworthButton_3        matlab.ui.control.RadioButton
        HzButtonGroup_2            matlab.ui.container.ButtonGroup
        EllipticButton_2           matlab.ui.control.RadioButton
        ChebyshevtypeIIButton_2    matlab.ui.control.RadioButton
        ChebyshevtypeIButton_2     matlab.ui.control.RadioButton
        ButterworthButton_2        matlab.ui.control.RadioButton
        HzButtonGroup              matlab.ui.container.ButtonGroup
        EllipticButton             matlab.ui.control.RadioButton
        ChebyshevtypeIIButton      matlab.ui.control.RadioButton
        ChebyshevtypeIButton       matlab.ui.control.RadioButton
        ButterworthButton          matlab.ui.control.RadioButton
        ECGSignalEnhancementLabel  matlab.ui.control.Label
        UIAxes4                    matlab.ui.control.UIAxes
        UIAxes3                    matlab.ui.control.UIAxes
        UIAxes2                    matlab.ui.control.UIAxes
        UIAxes                     matlab.ui.control.UIAxes
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 860 567];
            app.UIFigure.Name = 'MATLAB App';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Original Signal')
            app.UIAxes.Position = [23 306 388 194];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.UIFigure);
            title(app.UIAxes2, 'Output Signal')
            app.UIAxes2.Position = [423 306 395 194];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.UIFigure);
            title(app.UIAxes3, 'Magnitude Plot')
            app.UIAxes3.Position = [517 169 301 138];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.UIFigure);
            title(app.UIAxes4, 'Phase Plot')
            app.UIAxes4.Position = [517 29 301 133];

            % Create ECGSignalEnhancementLabel
            app.ECGSignalEnhancementLabel = uilabel(app.UIFigure);
            app.ECGSignalEnhancementLabel.HorizontalAlignment = 'center';
            app.ECGSignalEnhancementLabel.FontName = 'Algerian';
            app.ECGSignalEnhancementLabel.FontSize = 24;
            app.ECGSignalEnhancementLabel.Position = [22 499 796 45];
            app.ECGSignalEnhancementLabel.Text = 'ECG Signal Enhancement';

            % Create HzButtonGroup
            app.HzButtonGroup = uibuttongroup(app.UIFigure);
            app.HzButtonGroup.TitlePosition = 'centertop';
            app.HzButtonGroup.Title = '0-1 Hz';
            app.HzButtonGroup.Position = [58 151 131 133];

            % Create ButterworthButton
            app.ButterworthButton = uiradiobutton(app.HzButtonGroup);
            app.ButterworthButton.Text = 'Butterworth';
            app.ButterworthButton.Position = [11 76 83 22];
            app.ButterworthButton.Value = true;

            % Create ChebyshevtypeIButton
            app.ChebyshevtypeIButton = uiradiobutton(app.HzButtonGroup);
            app.ChebyshevtypeIButton.Text = 'Chebyshev type I';
            app.ChebyshevtypeIButton.Position = [11 55 115 22];

            % Create ChebyshevtypeIIButton
            app.ChebyshevtypeIIButton = uiradiobutton(app.HzButtonGroup);
            app.ChebyshevtypeIIButton.Text = 'Chebyshev type II';
            app.ChebyshevtypeIIButton.Position = [11 34 118 22];

            % Create EllipticButton
            app.EllipticButton = uiradiobutton(app.HzButtonGroup);
            app.EllipticButton.Text = 'Elliptic';
            app.EllipticButton.Position = [11 10 57 22];

            % Create HzButtonGroup_2
            app.HzButtonGroup_2 = uibuttongroup(app.UIFigure);
            app.HzButtonGroup_2.TitlePosition = 'centertop';
            app.HzButtonGroup_2.Title = '6-40 Hz';
            app.HzButtonGroup_2.Position = [210 151 131 133];

            % Create ButterworthButton_2
            app.ButterworthButton_2 = uiradiobutton(app.HzButtonGroup_2);
            app.ButterworthButton_2.Text = 'Butterworth';
            app.ButterworthButton_2.Position = [11 76 83 22];
            app.ButterworthButton_2.Value = true;

            % Create ChebyshevtypeIButton_2
            app.ChebyshevtypeIButton_2 = uiradiobutton(app.HzButtonGroup_2);
            app.ChebyshevtypeIButton_2.Text = 'Chebyshev type I';
            app.ChebyshevtypeIButton_2.Position = [11 55 115 22];

            % Create ChebyshevtypeIIButton_2
            app.ChebyshevtypeIIButton_2 = uiradiobutton(app.HzButtonGroup_2);
            app.ChebyshevtypeIIButton_2.Text = 'Chebyshev type II';
            app.ChebyshevtypeIIButton_2.Position = [11 34 118 22];

            % Create EllipticButton_2
            app.EllipticButton_2 = uiradiobutton(app.HzButtonGroup_2);
            app.EllipticButton_2.Text = 'Elliptic';
            app.EllipticButton_2.Position = [11 10 57 22];

            % Create above45HzButtonGroup
            app.above45HzButtonGroup = uibuttongroup(app.UIFigure);
            app.above45HzButtonGroup.TitlePosition = 'centertop';
            app.above45HzButtonGroup.Title = 'above 45 Hz';
            app.above45HzButtonGroup.Position = [365 151 131 133];

            % Create ButterworthButton_3
            app.ButterworthButton_3 = uiradiobutton(app.above45HzButtonGroup);
            app.ButterworthButton_3.Text = 'Butterworth';
            app.ButterworthButton_3.Position = [11 76 83 22];
            app.ButterworthButton_3.Value = true;

            % Create ChebyshevtypeIButton_3
            app.ChebyshevtypeIButton_3 = uiradiobutton(app.above45HzButtonGroup);
            app.ChebyshevtypeIButton_3.Text = 'Chebyshev type I';
            app.ChebyshevtypeIButton_3.Position = [11 55 115 22];

            % Create ChebyshevtypeIIButton_3
            app.ChebyshevtypeIIButton_3 = uiradiobutton(app.above45HzButtonGroup);
            app.ChebyshevtypeIIButton_3.Text = 'Chebyshev type II';
            app.ChebyshevtypeIIButton_3.Position = [11 34 118 22];

            % Create EllipticButton_3
            app.EllipticButton_3 = uiradiobutton(app.above45HzButtonGroup);
            app.EllipticButton_3.Text = 'Elliptic';
            app.EllipticButton_3.Position = [11 10 57 22];

            % Create ApplyButton
            app.ApplyButton = uibutton(app.UIFigure, 'push');
            app.ApplyButton.Position = [70 106 105 28];
            app.ApplyButton.Text = 'Apply';

            % Create ApplyButton_2
            app.ApplyButton_2 = uibutton(app.UIFigure, 'push');
            app.ApplyButton_2.Position = [226 106 105 28];
            app.ApplyButton_2.Text = 'Apply';

            % Create ApplyButton_3
            app.ApplyButton_3 = uibutton(app.UIFigure, 'push');
            app.ApplyButton_3.Position = [380 106 105 28];
            app.ApplyButton_3.Text = 'Apply';

            % Create LoadButton
            app.LoadButton = uibutton(app.UIFigure, 'push');
            app.LoadButton.Position = [23 29 105 28];
            app.LoadButton.Text = 'Load';

            % Create ApplyAllButton
            app.ApplyAllButton = uibutton(app.UIFigure, 'push');
            app.ApplyAllButton.Position = [151 29 105 28];
            app.ApplyAllButton.Text = 'Apply All';

            % Create plotMagphButton
            app.plotMagphButton = uibutton(app.UIFigure, 'push');
            app.plotMagphButton.Position = [277 29 122 28];
            app.plotMagphButton.Text = 'plot Mag & ph';

            % Create ResetButton
            app.ResetButton = uibutton(app.UIFigure, 'push');
            app.ResetButton.Position = [413 29 105 28];
            app.ResetButton.Text = 'Reset';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

        methods (Access = private)
        
        % Button pushed function: LoadButton
        function LoadButtonPushed(app)
            disp('Its working')
            [file, path] = uigetfile('*.csv');
            if isequal(file, 0)
                disp('File selection canceled');
            else
                fullFileName = fullfile(path, file);
                app.data = readtable(fullFileName);
                app.time = app.data.('Time_s_');
                app.ecg_signal = app.data.('Channel1_V_');
                
                % Plot original ECG signal
                plot(app.UIAxes, app.time, app.ecg_signal);
                title(app.UIAxes, 'Original ECG Signal');
                xlabel(app.UIAxes, 'Time (s)');
                ylabel(app.UIAxes, 'Amplitude (V)');
                grid(app.UIAxes, 'on');
            end
        end
        
        % Button pushed function: ApplyButton, ApplyButton_2, ApplyButton_3
        function ApplyFilterButtonPushed(app, event)
            % Apply the selected filter based on the button group selection
            if event.Source == app.ApplyButton
                filterType = app.HzButtonGroup.SelectedObject.Text;
            elseif event.Source == app.ApplyButton_2
                filterType = app.HzButtonGroup_2.SelectedObject.Text;
            else
                filterType = app.above45HzButtonGroup.SelectedObject.Text;
            end
            
            % Define filter specifications
            fs = 200;  % Sampling frequency
            Wp = [6 40] / (fs / 2);  % Passband edge frequencies (normalized)
            Ws = [1 45] / (fs / 2);  % Stopband edge frequencies (normalized)
            Rp = 1;   % Passband ripple in dB
            Rs = 40;  % Stopband attenuation in dB
            
            switch filterType
                case 'Butterworth'
                    [n, Wn] = buttord(Wp, Ws, Rp, Rs);
                    [b, a] = butter(n, Wn);
                case 'Chebyshev type I'
                    [n, Wp] = cheb1ord(Wp, Ws, Rp, Rs);
                    [b, a] = cheby1(n, Rp, Wp);
                case 'Chebyshev type II'
                    [n, Ws] = cheb2ord(Wp, Ws, Rp, Rs);
                    [b, a] = cheby2(n, Rs, Ws);
                case 'Elliptic'
                    [n, Wp] = ellipord(Wp, Ws, Rp, Rs);
                    [b, a] = ellip(n, Rp, Rs, Wp);
            end
            
            % Apply the filter
            app.filtered_signal = filtfilt(b, a, app.ecg_signal);
            
            % Plot the filtered ECG signal
            plot(app.UIAxes2, app.time, app.filtered_signal);
            title(app.UIAxes2, 'Filtered ECG Signal');
            xlabel(app.UIAxes2, 'Time (s)');
            ylabel(app.UIAxes2, 'Amplitude (V)');
            grid(app.UIAxes2, 'on');
        end
        
        % Button pushed function: ApplyAllButton
        function ApplyAllButtonPushed(app, event)
            % Apply all filters
            fs = 200;  % Sampling frequency
            Wp = [6 40] / (fs / 2);  % Passband edge frequencies (normalized)
            Ws = [1 45] / (fs / 2);  % Stopband edge frequencies (normalized)
            Rp = 1;   % Passband ripple in dB
            Rs = 40;  % Stopband attenuation in dB
            
            % Design filters
            [n_butt, Wn_butt] = buttord(Wp, Ws, Rp, Rs);
            [b_butt, a_butt] = butter(n_butt, Wn_butt);
            
            [n_cheb1, Wp_cheb1] = cheb1ord(Wp, Ws, Rp, Rs);
            [b_cheb1, a_cheb1] = cheby1(n_cheb1, Rp, Wp_cheb1);
            
            [n_cheb2, Ws_cheb2] = cheb2ord(Wp, Ws, Rp, Rs);
            [b_cheb2, a_cheb2] = cheby2(n_cheb2, Rs, Ws_cheb2);
            
            [n_ellip, Wp_ellip] = ellipord(Wp, Ws, Rp, Rs);
            [b_ellip, a_ellip] = ellip(n_ellip, Rp, Rs, Wp_ellip);
            
            % Apply filters
            ecg_butt = filtfilt(b_butt, a_butt, app.ecg_signal);
            ecg_cheb1 = filtfilt(b_cheb1, a_cheb1, app.ecg_signal);
            ecg_cheb2 = filtfilt(b_cheb2, a_cheb2, app.ecg_signal);
            ecg_ellip = filtfilt(b_ellip, a_ellip, app.ecg_signal);
            
            % Plot filtered signals
            plot(app.UIAxes, app.time, app.ecg_signal);
            title(app.UIAxes, 'Original ECG Signal');
            xlabel(app.UIAxes, 'Time (s)');
            ylabel(app.UIAxes, 'Amplitude (V)');
            grid(app.UIAxes, 'on');
            
            plot(app.UIAxes2, app.time, ecg_butt, app.time, ecg_cheb1, app.time, ecg_cheb2, app.time, ecg_ellip);
            title(app.UIAxes2, 'Filtered ECG Signals');
            xlabel(app.UIAxes2, 'Time (s)');
            ylabel(app.UIAxes2, 'Amplitude (V)');
            legend(app.UIAxes2, 'Butterworth', 'Chebyshev I', 'Chebyshev II', 'Elliptic');
            grid(app.UIAxes2, 'on');
        end
        
        % Button pushed function: plotMagphButton
        function plotMagphButtonPushed(app, event)
            fs = 200;  % Sampling frequency
            
            % Get filter coefficients for selected filter
            switch app.HzButtonGroup.SelectedObject.Text
                case 'Butterworth'
                    [n, Wn] = buttord(Wp, Ws, Rp, Rs);
                    [b, a] = butter(n, Wn);
                case 'Chebyshev type I'
                    [n, Wp] = cheb1ord(Wp, Ws, Rp, Rs);
                    [b, a] = cheby1(n, Rp, Wp);
                case 'Chebyshev type II'
                    [n, Ws] = cheb2ord(Wp, Ws, Rp, Rs);
                    [b, a] = cheby2(n, Rs, Ws);
                case 'Elliptic'
                    [n, Wp] = ellipord(Wp, Ws, Rp, Rs);
                    [b, a] = ellip(n, Rp, Rs, Wp);
            end
            
            % Frequency response
            [H, w] = freqz(b, a);
            
            % Plot magnitude response
            plot(app.UIAxes3, w/pi*fs/2, 20*log10(abs(H)));
            title(app.UIAxes3, 'Magnitude Response');
            xlabel(app.UIAxes3, 'Frequency (Hz)');
            ylabel(app.UIAxes3, 'Magnitude (dB)');
            grid(app.UIAxes3, 'on');
            
            % Plot phase response
            plot(app.UIAxes4, w/pi*fs/2, angle(H));
            title(app.UIAxes4, 'Phase Response');
            xlabel(app.UIAxes4, 'Frequency (Hz)');
            ylabel(app.UIAxes4, 'Phase (radians)');
            grid(app.UIAxes4, 'on');
        end
        
        % Button pushed function: ResetButton
        function ResetButtonPushed(app, event)
            cla(app.UIAxes);
            cla(app.UIAxes2);
            cla(app.UIAxes3);
            cla(app.UIAxes4);
        end
    end


    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = app1_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end