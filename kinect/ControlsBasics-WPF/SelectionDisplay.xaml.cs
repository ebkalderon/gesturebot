namespace Microsoft.Samples.Kinect.ControlsBasics
{
    using System.Windows.Controls;
    using System.IO.Ports;

    /// <summary>
    /// Interaction logic
    /// </summary>
    public partial class SelectionDisplay : UserControl
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SelectionDisplay"/> class. 
        /// </summary>
        /// 
        /// <param name="itemId">ID of the item that was selected</param>
        public SelectionDisplay(string itemId, ref SerialPort port)
        {
            this.InitializeComponent();

            if (itemId.Equals("Forward"))
            {
                this.messageTextBlock.Text = "Car is moving forward";
                port.Write("move 30\n");
            }
            if (itemId.Equals("Backward"))
            {
                this.messageTextBlock.Text = "Car is moving backward";
                port.Write("move -30\n");
            }
            if (itemId.Equals("Right"))
            {
                this.messageTextBlock.Text = "Car is moving right";
                port.Write("right 30\n");
            }
            if (itemId.Equals("Left"))
            {
                this.messageTextBlock.Text = "Car is moving left";
                port.Write("left 30\n");
            }
            if (itemId.Equals("Circle"))
            {
                this.messageTextBlock.Text = "Car is moving in a circle";
                port.Write("circle 40\n");
            }
            if(itemId.Equals("Stop"))
            {
                this.messageTextBlock.Text = "Car is stopping";
                port.Write("move 0\n");
            }
        }

        /// <summary>
        /// Called when the OnLoaded storyboard completes.
        /// </summary>
        /// <param name="sender">Event sender</param>
        /// <param name="e">Event arguments</param>
        private void OnLoadedStoryboardCompleted(object sender, System.EventArgs e)
        {
            var parent = (Panel)this.Parent;
            parent.Children.Remove(this);
        }
    }
}
