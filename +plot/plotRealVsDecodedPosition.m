function plotRealVsDecodedPosition(mData,area,session)
    col =  [122 172 210
            80 106 139
            217 85 88
            129 89 162 
            180 151 94
            179 205 142]./255; 

    real_position =  mData(area ,session).d_data(length(mData(area ,session).d_data)).iter{1,mData(area ,session).d_data(length(mData(area ,session).d_data)).medianTestFold}.realPos_test;
    predicted_position = mData(area ,session).d_data(length(mData(area ,session).d_data)).iter{1,mData(area ,session).d_data(length(mData(area ,session).d_data)).medianTestFold}.predPos_test;

    figure()
    plot(real_position, 'LineWidth', 1.5, 'Color', 'k'); hold on
    plot(predicted_position, 'LineWidth',1.5, 'Color', col(area,:));
    xlim( [100 700])
    xticks([]);
    yticks([0 156])
    yticklabels({'0','157'});
    box 'off'
    set(gca, 'FontSize',12, 'FontName', 'Arial')
    axis('off')
end