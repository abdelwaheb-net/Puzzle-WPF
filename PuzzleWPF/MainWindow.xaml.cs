using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PuzzleWPF
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Point EmptyPoint = new Point();
        ArrayList images = new ArrayList();
        public MainWindow()
        {
           
            InitializeComponent();
            EmptyPoint.X = 180;
            EmptyPoint.Y = 180;

        }

        private void Window_Initialized(object sender, EventArgs e)
        {
            
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            foreach (Button b in GridButton.Controls)
            {
                
            }
        }

      

      
    }
}
