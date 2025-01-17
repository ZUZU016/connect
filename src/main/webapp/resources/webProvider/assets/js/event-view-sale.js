/**
 *
 */
document.addEventListener('DOMContentLoaded', function() {
	// Color Variables
	const purpleColor = '#836AF9',
		yellowColor = '#ffe800',
		cyanColor = '#28dac6',
		orangeColor = '#FF8132',
		orangeLightColor = '#FDAC34',
		oceanBlueColor = '#299AFF',
		greyColor = '#4F5D70',
		greyLightColor = '#EDF1F4',
		blueColor = '#2B9AFF',
		blueLightColor = '#84D0FF',
		blueDarkColor = '#1D9FF2';

	let cardColor, headingColor, labelColor, borderColor, legendColor;

	if (isDarkStyle) {
		cardColor = config.colors_dark.cardColor;
		headingColor = config.colors_dark.headingColor;
		labelColor = config.colors_dark.textMuted;
		legendColor = config.colors_dark.bodyColor;
		borderColor = config.colors_dark.borderColor;
	} else {
		cardColor = config.colors.cardColor;
		headingColor = config.colors.headingColor;
		labelColor = config.colors.textMuted;
		legendColor = config.colors.bodyColor;
		borderColor = config.colors.borderColor;
	}

	// Set height according to their data-height
	// --------------------------------------------------------------------
	const chartList = document.querySelectorAll('.chartjs');
	chartList.forEach(function(chartListItem) {
		chartListItem.height = chartListItem.dataset.height;
	});


	// Bar Chart
	// --------------------------------------------------------------------
	const barChart = document.getElementById('barChart');
	if (barChart) {
		const barChartVar = new Chart(barChart, {
			type: 'bar',
			data: {
				labels: labels,
				datasets: [
					{
						data: data1,
						backgroundColor: orangeLightColor,
						borderColor: 'transparent',
						maxBarThickness: 15,
						borderRadius: {
							topRight: 15,
							topLeft: 15
						}
					}
				]
			},
			options: {
				responsive: true,
				maintainAspectRatio: false,
				animation: {
					duration: 500
				},
				plugins: {
					tooltip: {
						rtl: isRtl,
						backgroundColor: cardColor,
						titleColor: headingColor,
						bodyColor: legendColor,
						borderWidth: 1,
						borderColor: borderColor
					},
					legend: {
						display: false
					}
				},
				scales: {
					x: {
						grid: {
							color: borderColor,
							drawBorder: false,
							borderColor: borderColor
						},
						ticks: {
							color: labelColor
						}
					},
					y: {
						min: 50000,
						max: maxAmount+100000,
						grid: {
							color: borderColor,
							drawBorder: false,
							borderColor: borderColor
						},
						ticks: {
							stepSize: (maxAmount+100000)/5,
							color: labelColor
						}
					}
				}
			}
		});
	}



});
