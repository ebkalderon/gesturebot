   M S B A M L   `   `   `  ���� M  IControlsBasics-WPF, Version=0.0.0.0, Culture=neutral, PublicKeyToken=nulla5clr-namespace:Microsoft.Samples.Kinect.ControlsBasics'Microsoft.Samples.Kinect.ControlsBasics  8    2Microsoft.Samples.Kinect.ControlsBasics.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     S OMicrosoft.Kinect.Toolkit, Version=1.8.0.0, Culture=neutral, PublicKeyToken=null\ XMicrosoft.Kinect.Toolkit.Controls, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null2k(http://schemas.microsoft.com/kinect/2013   <d2http://schemas.microsoft.com/expression/blend/2008   Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   Clocal5clr-namespace:Microsoft.Samples.Kinect.ControlsBasics   -   $��ControlsBasicsWindow��  � Title$  Controls Basics��$	��500��$	��700��$��Segoe UI)� � 	Resources    ChevronGeometry  	ChevronUp �� Stretch
 �� Top �� FallbackValue �� Path �� RelativeSource �� AncestorType?  9Microsoft.Samples.Kinect.ControlsBasics.KinectHoverButton J� RenderTransformOrigin	 �� Angle  ChevronRight  ChevronDown  ChevronLeft  KinectHoverButtonStyle
 �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value " KinectHoverButtonScrollUpStyle �� BasedOn % !KinectHoverButtonScrollRightStyle $  KinectHoverButtonScrollDownStyle $	  KinectHoverButtonScrollLeftStyle��%o  &	       &	 s    7   &	 �    7   &	 ~   7   &	    7   &	 �    &	 K    7  7  &	 o    7  7  &	 �    7  7  &		 �    7  7  B�miF1M150.001,146.9932L126.565,169.3822L126.565,153.5962L150.001,130.6182L173.435,153.5962L173.435,169.3822z�F� $��48��$��48��$ Uniform=�$ 0��8��  ���� $ Black��$ 
Foreground� �� "  $ 0.5,0.5&�z��� $	 0Q�F� $��48��$��48��$ Uniform=�$ 0��8��  ���� $ Black��$ 
Foreground� �� "  $ 0.5,0.5&�z��� $	 90Q�F� $��48��$��48��$ Uniform=�$ 0��8��  ���� $ Black��$ 
Foreground� �� "  $ 0.5,0.5&�z��� $		 180Q�F� $��48��$��48��$ Uniform=�$ 0��8��  ���� $ Black��$ 
Foreground� �� "  $ 0.5,0.5&�z��� $		 270Q��� "
  .���  � ��
 �������  � ��
 �������  � ��$ 0q���  � ��
 �������  � �� �� "  .R�� $��Stretch=�$��Stretch=�#��z��#��z��#��z��.+��� #��z��#��z��._��� $��Stretch=�$��Stretch=�#��z�� P�  � {� .  . ���  � ��
 �������  � ��
 �������  � ��
 ���� P�  �@ IsHandPointerOver . . ���  � �� �#5A5B5B��  � ��
 ������� "
  8   .���  � ��8  �� "
  8   .���  � ��8  �� "
  8   .���  � ��8  �� "
  8   .���  � ��8  .���  � RowDefinitions �� $
��Auto ��� $��* �.+�� $��0��$��
10 0 10 20q�.+��� $
��Left=�$��Bottom=�$��Images\Logo.png��$
��None=�$��0 0 0 4q�8  2Microsoft.Kinect.Toolkit.Controls.KinectUserViewer  $	��100��$��Center=�$	��Top=�4  .Microsoft.Kinect.Toolkit.Controls.KinectRegion   KinectRegion ��  �� ElementName$ kinectRegion��4  .Microsoft.Kinect.Toolkit.KinectSensorChooserUI  -   $��sensorChooserUi��$��Center=�$	��Top=��� $��Right=�$��0 0 -1 0q�$��Bottom=� 
 MediumGreyBrush#��[
 $��18(�Controls Basics  -     Name$ kinectRegion��$��1��.��� -    �Name$ kinectRegionGrid��$��10,20,10,20q� �� $��* ��� $	��170 �.+�:  4Microsoft.Kinect.Toolkit.Controls.KinectScrollViewer  -   $��scrollViewer��$��0��$��Visible=�$��Disabled=�.��� -    �Name$ 	wrapPanel��$��Center=� � Orientation$ Vertical=�.+�8  2Microsoft.Kinect.Toolkit.Controls.KinectTileButton     Label$ 1��  $ 2��  $ 3��  $ 4��  $ 5��  $ 6��  $ 7��  $ 8��  $ 9��  $ 10��� $��1��$��Stretch=�$��Stretch=�$��0, 10, 0, 10q� � ColumnDefinitions �� $��* ��� $��10 ��� $��* �.+�  ?   9Microsoft.Samples.Kinect.ControlsBasics.KinectHoverButton   Click$ PageLeftButtonClick��$��0��#��[	 {��� $ ControlsBasicsWindow��$ PageLeftEnabled�  $ PageRightButtonClick��$��2��#��[ {��� $ ControlsBasicsWindow��$ PageRightEnabled�