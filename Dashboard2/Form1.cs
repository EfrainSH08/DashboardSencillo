using System;
using System.Linq;
using System.Windows.Forms;
using DashboardApp.Models;

namespace Dashboard2
{
    public partial class Form1 : Form
    {
        private Dashboard dashboard;

        public Form1()
        {
            InitializeComponent();
            dashboard = new Dashboard();
            dateTimePickerStart.Value = DateTime.Today.AddDays(-7);
            dateTimePickerEnd.Value = DateTime.Now;
            LoadData();
        }

        private void buttonLoadData_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            DateTime startDate = dateTimePickerStart.Value;
            DateTime endDate = dateTimePickerEnd.Value;

            if (dashboard.LoadData(startDate, endDate))
            {
                UpdateCharts();
                UpdateKPIs();
                LoadOrderData();
            }
        }

        private void UpdateCharts()
        {
            // Clear existing data
            chartSales.Series.Clear();
            chartSales.ChartAreas.Clear();

            // Create a new chart area
            var chartArea = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            chartSales.ChartAreas.Add(chartArea);

            // Configure the series for revenue by date
            var seriesRevenue = new System.Windows.Forms.DataVisualization.Charting.Series("Revenue")
            {
                ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Column,
                XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.String,
                YValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Double
            };

            // Add data to the series
            foreach (var data in dashboard.GrossRevenueList)
            {
                seriesRevenue.Points.AddXY(data.Date, (double)data.TotalAmount);
            }

            // Add the series to the chart
            chartSales.Series.Add(seriesRevenue);

            // Optional: Configure the series for growth percentage
            var seriesGrowth = new System.Windows.Forms.DataVisualization.Charting.Series("Growth")
            {
                ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line,
                XValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.String,
                YValueType = System.Windows.Forms.DataVisualization.Charting.ChartValueType.Double
            };

            // Here you can add the growth percentage data to the series if available
            // Example:
            // seriesGrowth.Points.AddXY("Date1", growthValue1);
            // seriesGrowth.Points.AddXY("Date2", growthValue2);

            chartSales.Series.Add(seriesGrowth);

            // Optionally, you can configure additional properties for the chart
            chartSales.Titles.Clear();
            chartSales.Titles.Add("Sales and Growth Over Time");
        }


        private void UpdateKPIs()
        {
            labelTotalRevenue.Text = $"Total Revenue: {dashboard.TotalRevenue:C}";
            labelTotalProfit.Text = $"Total Profit: {dashboard.TotalProfit:C}";
            labelRevenueGrowth.Text = $"Revenue Growth: {dashboard.RevenueGrowth:P}";
            labelRevenueComparison.Text = $"Revenue Comparison: {dashboard.RevenueComparison:P}";
        }

        private void LoadOrderData()
        {
            dataGridViewOrders.DataSource = dashboard.GrossRevenueList.Select(r => new
            {
                Date = r.Date,
                TotalAmount = r.TotalAmount
            }).ToList();
        }
    }
}
