namespace Dashboard2
{
    partial class Form1
    {
        private System.ComponentModel.IContainer components = null;

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        private void InitializeComponent()
        {
            this.dateTimePickerStart = new System.Windows.Forms.DateTimePicker();
            this.dateTimePickerEnd = new System.Windows.Forms.DateTimePicker();
            this.buttonLoadData = new System.Windows.Forms.Button();
            this.chartSales = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.labelTotalRevenue = new System.Windows.Forms.Label();
            this.labelTotalProfit = new System.Windows.Forms.Label();
            this.labelRevenueGrowth = new System.Windows.Forms.Label();
            this.labelRevenueComparison = new System.Windows.Forms.Label();
            this.dataGridViewOrders = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.chartSales)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewOrders)).BeginInit();
            this.SuspendLayout();
            // 
            // dateTimePickerStart
            // 
            this.dateTimePickerStart.Location = new System.Drawing.Point(12, 12);
            this.dateTimePickerStart.Name = "dateTimePickerStart";
            this.dateTimePickerStart.Size = new System.Drawing.Size(200, 20);
            this.dateTimePickerStart.TabIndex = 0;
            // 
            // dateTimePickerEnd
            // 
            this.dateTimePickerEnd.Location = new System.Drawing.Point(12, 38);
            this.dateTimePickerEnd.Name = "dateTimePickerEnd";
            this.dateTimePickerEnd.Size = new System.Drawing.Size(200, 20);
            this.dateTimePickerEnd.TabIndex = 1;
            // 
            // buttonLoadData
            // 
            this.buttonLoadData.Location = new System.Drawing.Point(218, 12);
            this.buttonLoadData.Name = "buttonLoadData";
            this.buttonLoadData.Size = new System.Drawing.Size(75, 46);
            this.buttonLoadData.TabIndex = 2;
            this.buttonLoadData.Text = "Load Data";
            this.buttonLoadData.UseVisualStyleBackColor = true;
            this.buttonLoadData.Click += new System.EventHandler(this.buttonLoadData_Click);
            // 
            // chartSales
            // 
            this.chartSales.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
            | System.Windows.Forms.AnchorStyles.Left)));
            this.chartSales.Location = new System.Drawing.Point(12, 64);
            this.chartSales.Name = "chartSales";
            this.chartSales.Size = new System.Drawing.Size(776, 300);
            this.chartSales.TabIndex = 3;
            this.chartSales.Text = "chart1";
            // 
            // labelTotalRevenue
            // 
            this.labelTotalRevenue.AutoSize = true;
            this.labelTotalRevenue.Location = new System.Drawing.Point(12, 380);
            this.labelTotalRevenue.Name = "labelTotalRevenue";
            this.labelTotalRevenue.Size = new System.Drawing.Size(80, 13);
            this.labelTotalRevenue.TabIndex = 4;
            this.labelTotalRevenue.Text = "Total Revenue:";
            // 
            // labelTotalProfit
            // 
            this.labelTotalProfit.AutoSize = true;
            this.labelTotalProfit.Location = new System.Drawing.Point(12, 403);
            this.labelTotalProfit.Name = "labelTotalProfit";
            this.labelTotalProfit.Size = new System.Drawing.Size(62, 13);
            this.labelTotalProfit.TabIndex = 5;
            this.labelTotalProfit.Text = "Total Profit:";
            // 
            // labelRevenueGrowth
            // 
            this.labelRevenueGrowth.AutoSize = true;
            this.labelRevenueGrowth.Location = new System.Drawing.Point(12, 426);
            this.labelRevenueGrowth.Name = "labelRevenueGrowth";
            this.labelRevenueGrowth.Size = new System.Drawing.Size(94, 13);
            this.labelRevenueGrowth.TabIndex = 6;
            this.labelRevenueGrowth.Text = "Revenue Growth:";
            // 
            // labelRevenueComparison
            // 
            this.labelRevenueComparison.AutoSize = true;
            this.labelRevenueComparison.Location = new System.Drawing.Point(12, 449);
            this.labelRevenueComparison.Name = "labelRevenueComparison";
            this.labelRevenueComparison.Size = new System.Drawing.Size(111, 13);
            this.labelRevenueComparison.TabIndex = 7;
            this.labelRevenueComparison.Text = "Revenue Comparison:";
            // 
            // dataGridViewOrders
            // 
            this.dataGridViewOrders.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridViewOrders.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewOrders.Location = new System.Drawing.Point(796, 12);
            this.dataGridViewOrders.Name = "dataGridViewOrders";
            this.dataGridViewOrders.Size = new System.Drawing.Size(400, 450);
            this.dataGridViewOrders.TabIndex = 8;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1208, 481);
            this.Controls.Add(this.dataGridViewOrders);
            this.Controls.Add(this.labelRevenueComparison);
            this.Controls.Add(this.labelRevenueGrowth);
            this.Controls.Add(this.labelTotalProfit);
            this.Controls.Add(this.labelTotalRevenue);
            this.Controls.Add(this.chartSales);
            this.Controls.Add(this.buttonLoadData);
            this.Controls.Add(this.dateTimePickerEnd);
            this.Controls.Add(this.dateTimePickerStart);
            this.Name = "Form1";
            this.Text = "Sales Dashboard";
            ((System.ComponentModel.ISupportInitialize)(this.chartSales)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewOrders)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();
        }


        private System.Windows.Forms.DateTimePicker dateTimePickerStart;
        private System.Windows.Forms.DateTimePicker dateTimePickerEnd;
        private System.Windows.Forms.Button buttonLoadData;
        private System.Windows.Forms.DataVisualization.Charting.Chart chartSales;
        private System.Windows.Forms.Label labelTotalRevenue;
        private System.Windows.Forms.Label labelTotalProfit;
        private System.Windows.Forms.Label labelRevenueGrowth;
        private System.Windows.Forms.Label labelRevenueComparison;
        private System.Windows.Forms.DataGridView dataGridViewOrders;
    }
}
