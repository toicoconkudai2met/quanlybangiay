namespace quanlybangiay
{
    partial class FormDangNhap
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            GroupBox GB_dangnhap;
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            button1 = new Button();
            button2 = new Button();
            textBox1 = new TextBox();
            textBox2 = new TextBox();
            button3 = new Button();
            GB_dangnhap = new GroupBox();
            GB_dangnhap.SuspendLayout();
            SuspendLayout();
            // 
            // GB_dangnhap
            // 
            GB_dangnhap.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            GB_dangnhap.BackgroundImageLayout = ImageLayout.None;
            GB_dangnhap.Controls.Add(button3);
            GB_dangnhap.Controls.Add(textBox2);
            GB_dangnhap.Controls.Add(textBox1);
            GB_dangnhap.Controls.Add(button2);
            GB_dangnhap.Controls.Add(button1);
            GB_dangnhap.Controls.Add(label3);
            GB_dangnhap.Controls.Add(label2);
            GB_dangnhap.Controls.Add(label1);
            GB_dangnhap.Font = new Font("Cambria", 10.8F, FontStyle.Bold, GraphicsUnit.Point, 0);
            GB_dangnhap.ForeColor = SystemColors.ActiveCaptionText;
            GB_dangnhap.ImeMode = ImeMode.Off;
            GB_dangnhap.Location = new Point(141, 77);
            GB_dangnhap.Name = "GB_dangnhap";
            GB_dangnhap.Size = new Size(525, 282);
            GB_dangnhap.TabIndex = 0;
            GB_dangnhap.TabStop = false;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Cambria", 16.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.ForeColor = Color.Red;
            label1.Location = new Point(197, 9);
            label1.Name = "label1";
            label1.Size = new Size(156, 33);
            label1.TabIndex = 0;
            label1.Text = "Đăng Nhập";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(39, 62);
            label2.Name = "label2";
            label2.Size = new Size(95, 21);
            label2.TabIndex = 1;
            label2.Text = "Tài Khoản";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(39, 109);
            label3.Name = "label3";
            label3.Size = new Size(89, 21);
            label3.TabIndex = 2;
            label3.Text = "Mật khẩu";
            // 
            // button1
            // 
            button1.Location = new Point(123, 196);
            button1.Name = "button1";
            button1.Size = new Size(147, 29);
            button1.TabIndex = 3;
            button1.Text = "Đăng nhập";
            button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            button2.Location = new Point(301, 196);
            button2.Name = "button2";
            button2.Size = new Size(147, 29);
            button2.TabIndex = 4;
            button2.Text = "Thoát";
            button2.UseVisualStyleBackColor = true;
            // 
            // textBox1
            // 
            textBox1.Location = new Point(163, 59);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(285, 29);
            textBox1.TabIndex = 5;
            // 
            // textBox2
            // 
            textBox2.Location = new Point(163, 101);
            textBox2.Name = "textBox2";
            textBox2.Size = new Size(285, 29);
            textBox2.TabIndex = 6;
            // 
            // button3
            // 
            button3.Font = new Font("Cambria", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            button3.Location = new Point(379, 152);
            button3.Name = "button3";
            button3.Size = new Size(114, 29);
            button3.TabIndex = 7;
            button3.Text = "Quên mật khẩu";
            button3.UseVisualStyleBackColor = true;
            // 
            // FormDangNhap
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackgroundImage = Properties.Resources.login1;
            ClientSize = new Size(800, 450);
            Controls.Add(GB_dangnhap);
            Name = "FormDangNhap";
            Text = "Đăng nhập";
            GB_dangnhap.ResumeLayout(false);
            GB_dangnhap.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private GroupBox GB_dangnhap;
        private TextBox textBox2;
        private TextBox textBox1;
        private Button button2;
        private Button button1;
        private Label label3;
        private Label label2;
        private Label label1;
        private Button button3;
    }
}
