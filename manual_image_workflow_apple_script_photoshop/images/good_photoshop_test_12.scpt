FasdUAS 1.101.10   ��   ��    k             l      ��  ��    R L
Made for ZNBC (https://znbc.com) to process images in batch with photoshop
     � 	 	 � 
 M a d e   f o r   Z N B C   ( h t t p s : / / z n b c . c o m )   t o   p r o c e s s   i m a g e s   i n   b a t c h   w i t h   p h o t o s h o p 
   
  
 l      ��  ��   1+
 Description: Description: You have to create a script in Photoshop then all the files presented in the source folder will be proceeded with actions you have made in the script and be saved in the destination folder. For the moment the photoshop script executed is "resize_60_percent_solar_apply" from a directory named "bruno". 

 ! CAUTION !
 - Name for script and directory in Photoshop are case-sensitive.
 - Do not register a save action and close action in your Photoshop script.

 Version: 1.1
 Author: Bruno Flaven
 Author URI: http://flaven.fr
      �  V 
   D e s c r i p t i o n :   D e s c r i p t i o n :   Y o u   h a v e   t o   c r e a t e   a   s c r i p t   i n   P h o t o s h o p   t h e n   a l l   t h e   f i l e s   p r e s e n t e d   i n   t h e   s o u r c e   f o l d e r   w i l l   b e   p r o c e e d e d   w i t h   a c t i o n s   y o u   h a v e   m a d e   i n   t h e   s c r i p t   a n d   b e   s a v e d   i n   t h e   d e s t i n a t i o n   f o l d e r .   F o r   t h e   m o m e n t   t h e   p h o t o s h o p   s c r i p t   e x e c u t e d   i s   " r e s i z e _ 6 0 _ p e r c e n t _ s o l a r _ a p p l y "   f r o m   a   d i r e c t o r y   n a m e d   " b r u n o " .   
 
   !   C A U T I O N   ! 
   -   N a m e   f o r   s c r i p t   a n d   d i r e c t o r y   i n   P h o t o s h o p   a r e   c a s e - s e n s i t i v e . 
   -   D o   n o t   r e g i s t e r   a   s a v e   a c t i o n   a n d   c l o s e   a c t i o n   i n   y o u r   P h o t o s h o p   s c r i p t . 
 
   V e r s i o n :   1 . 1 
   A u t h o r :   B r u n o   F l a v e n 
   A u t h o r   U R I :   h t t p : / / f l a v e n . f r 
        l     ��  ��      Alex, Victoria     �      A l e x ,   V i c t o r i a      l     ��  ��    W Q This chooses the master folder where all your sub folders with images are stored     �   �   T h i s   c h o o s e s   t h e   m a s t e r   f o l d e r   w h e r e   a l l   y o u r   s u b   f o l d e r s   w i t h   i m a g e s   a r e   s t o r e d      l     ����  I    ��  
�� .sysottosnull���     TEXT  m        �   X C h o o s e   y o u r   M a s t e r   F o l d e r   f o r   t h i s   b a t c h   j o b  ��  ��
�� 
VOIC   m     ! ! � " "  A l e x��  ��  ��     # $ # l    %���� % r     & ' & I   ������
�� .sysostflalis    ��� null��  ��   ' o      ���� 0 
raw_folder  ��  ��   $  ( ) ( l     ��������  ��  ��   )  * + * l     �� , -��   , R L This chooses the destination folder where all your result images are stored    - � . . �   T h i s   c h o o s e s   t h e   d e s t i n a t i o n   f o l d e r   w h e r e   a l l   y o u r   r e s u l t   i m a g e s   a r e   s t o r e d +  / 0 / l    1���� 1 I   �� 2 3
�� .sysottosnull���     TEXT 2 m     4 4 � 5 5 l C h o o s e   y o u r   d e s t i n a t i o n   F o l d e r   f o r   t h e   p r o c e s s e d   f i l e s 3 �� 6��
�� 
VOIC 6 m     7 7 � 8 8  A l e x��  ��  ��   0  9 : 9 l    ;���� ; r     < = < I   ������
�� .sysostflalis    ��� null��  ��   = o      ���� 0 live_folder  ��  ��   :  > ? > l     ��������  ��  ��   ?  @ A @ l     ��������  ��  ��   A  B C B l     ��������  ��  ��   C  D E D l     ��������  ��  ��   E  F G F l     �� H I��   H C = This checks when the batch started and stores the date value    I � J J z   T h i s   c h e c k s   w h e n   t h e   b a t c h   s t a r t e d   a n d   s t o r e s   t h e   d a t e   v a l u e G  K L K l    ) M���� M r     ) N O N n     ' P Q P 1   % '��
�� 
time Q l    % R���� R I    %������
�� .misccurdldt    ��� null��  ��  ��  ��   O o      ���� 0 	starttime 	startTime��  ��   L  S T S l     ��������  ��  ��   T  U V U l     ��������  ��  ��   V  W X W l      �� Y Z��   Y   for actions     Z � [ [    f o r   a c t i o n s   X  \ ] \ l     �� ^ _��   ^   This the file counter    _ � ` ` ,   T h i s   t h e   f i l e   c o u n t e r ]  a b a l  * - c���� c r   * - d e d m   * +����   e o      ���� 0 filecounter fileCounter��  ��   b  f g f l     ��������  ��  ��   g  h i h l  . 8 j���� j O   . 8 k l k r   2 7 m n m n  2 5 o p o 2  3 5��
�� 
file p o   2 3���� 0 
raw_folder   n o      ���� 0 itemlist itemList l m   . / q q�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   i  r s r l     ��������  ��  ��   s  t u t l  9 R v���� v Y   9 R w�� x y�� w r   H M z { z [   H K | } | o   H I���� 0 filecounter fileCounter } m   I J����  { o      ���� 0 filecounter fileCounter�� 0 j   x m   < =����  y l  = C ~���� ~ n   = C  �  m   > B��
�� 
nmbr � o   = >���� 0 itemlist itemList��  ��  ��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �   for fileCounter     � � � � "   f o r   f i l e C o u n t e r   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �   for fileCounter     � � � � "   f o r   f i l e C o u n t e r   �  � � � l     �� � ���   � 3 -source and destination folders for the images    � � � � Z s o u r c e   a n d   d e s t i n a t i o n   f o l d e r s   f o r   t h e   i m a g e s �  � � � l  S e ����� � O   S e � � � r   W d � � � e   W ` � � n   W ` � � � 2   ] _��
�� 
file � 4   W ]�� �
�� 
cfol � o   [ \���� 0 
raw_folder   � o      ���� 0 imageset imageSet � m   S T � ��                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  f ����� � O   f � � � k   j � �  � � � Y   j � ��� � ��� � k   z � � �  � � � l  z z�� � ���   � ) # coerce Finder style path to string    � � � � F   c o e r c e   F i n d e r   s t y l e   p a t h   t o   s t r i n g �  � � � r   z � � � � c   z � � � � l  z � ����� � n   z � � � � 4   } ��� �
�� 
cobj � o   � ����� 0 i   � o   z }���� 0 imageset imageSet��  ��   � m   � ���
�� 
TEXT � o      ���� 0 
currentimg 
currentImg �  ��� � O   � � � � � k   � � � �  � � � l  � ��� � ���   �   no dialog box    � � � �    n o   d i a l o g   b o x �  � � � r   � � � � � m   � ���
�� e050Nevr � 1   � ���
�� 
AUiL �  � � � I  � ������
�� .miscactvnull��� ��� null��  �   �  � � � I  � ��~ ��}
�~ .PsCSodocnull���    **** � 4   � ��| �
�| 
alis � o   � ��{�{ 0 
currentimg 
currentImg�}   �  � � � r   � � � � � 1   � ��z
�z 
pADc � o      �y�y 0 
currentimg 
currentImg �  � � � l  � ��x � ��x   �   tell current document    � � � � ,   t e l l   c u r r e n t   d o c u m e n t �  � � � l  � ��w�v�u�w  �v  �u   �  � � � l  � ��t�s�r�t  �s  �r   �  � � � l  � ��q � ��q   � 8 2 choose your action in the folder case sensisitive    � � � � d   c h o o s e   y o u r   a c t i o n   i n   t h e   f o l d e r   c a s e   s e n s i s i t i v e �  � � � l  � ��p � ��p   � = 7 do action "resize_10_percent_solar_apply" from "bruno"    � � � � n   d o   a c t i o n   " r e s i z e _ 1 0 _ p e r c e n t _ s o l a r _ a p p l y "   f r o m   " b r u n o " �  � � � l  � ��o � ��o   � = 7 do action "resize_60_percent_solar_apply" from "bruno"    � � � � n   d o   a c t i o n   " r e s i z e _ 6 0 _ p e r c e n t _ s o l a r _ a p p l y "   f r o m   " b r u n o " �  � � � l  � ��n � ��n   � = 7 do action "resize_60_percent_solar_apply" from "bruno"    � � � � n   d o   a c t i o n   " r e s i z e _ 6 0 _ p e r c e n t _ s o l a r _ a p p l y "   f r o m   " b r u n o " �  � � � l  � ��m � ��m   � ? 9 do action "02_resize_5_percent_solar_apply" from "bruno"    � � � � r   d o   a c t i o n   " 0 2 _ r e s i z e _ 5 _ p e r c e n t _ s o l a r _ a p p l y "   f r o m   " b r u n o " �  � � � I  � ��l � �
�l .miscDoAcnull���    utxt � m   � � � � � � � P 0 3 _ r e s i z e _ 1 0 _ p e r c e n t _ r o b e r t _ j o s h u a _ a p p l y � �k ��j
�k 
from � m   � � � � � � � 
 b r u n o�j   �    l  � ��i�h�g�i  �h  �g    l  � ��f�e�d�f  �e  �d    l  � ��c�c   8 2 close the file in photoshop after the job is done    � d   c l o s e   t h e   f i l e   i n   p h o t o s h o p   a f t e r   t h e   j o b   i s   d o n e 	
	 I  � ��b
�b .PsCSclosnull���    docu 2   � ��a
�a 
docu �`�_
�` 
savo m   � ��^
�^ boovfals�_  
 �] l  � ��\�[�Z�\  �[  �Z  �]   � m   � ��                                                                                  8BIM  alis    �  Macintosh HD                   BD ����Adobe Photoshop CS6.app                                        ����            ����  
 cu             Adobe Photoshop CS6   ;/:Applications:Adobe Photoshop CS6:Adobe Photoshop CS6.app/   0  A d o b e   P h o t o s h o p   C S 6 . a p p    M a c i n t o s h   H D  8Applications/Adobe Photoshop CS6/Adobe Photoshop CS6.app  / ��  ��  �� 0 i   � m   m n�Y�Y  � l  n u�X�W I  n u�V�U
�V .corecnte****       **** o   n q�T�T 0 imageset imageSet�U  �X  �W  ��   �  l  � ��S�R�Q�S  �R  �Q    l   � ��P�P     for actions     �    f o r   a c t i o n s    r   � � n   � � 1   � ��O
�O 
time l  � ��N�M I  � ��L�K�J
�L .misccurdldt    ��� null�K  �J  �N  �M   o      �I�I 0 endtime endTime  !  l  � ��H�G�F�H  �G  �F  ! "#" l   � ��E$%�E  $   end    % �&& 
   e n d  # '(' I  ��D)*
�D .sysottosnull���     TEXT) b   � �+,+ b   � �-.- b   � �/0/ b   � �121 m   � �33 �44 � T h e   j o b   i s   d o n e ,   p l e a s e   h a v e   a   l o o k   t o   t h e   d e s t i n a t i o n   f o l d e r .   T h e   o p e r a t i o n   t o o k    2 \   � �565 o   � ��C�C 0 endtime endTime6 o   � ��B�B 0 	starttime 	startTime0 m   � �77 �88 B   s e c o n d s .   T h e   d i r e c t o r y   c o n t a i n s  . o   � ��A�A 0 filecounter fileCounter, m   � �99 �::    f i l e s .* �@;�?
�@ 
VOIC; m   � �<< �==  A l e x�?  ( >?> l �>�=�<�>  �=  �<  ? @A@ l  �;BC�;  B   Dialog box if needed    C �DD ,   D i a l o g   b o x   i f   n e e d e d  A EFE l �:GH�:  G � � display dialog "nThe operation took  " & endTime - startTime & " seconds" & ".nThe directory contains " & fileCounter & " files.n"   H �II   d i s p l a y   d i a l o g   " n T h e   o p e r a t i o n   t o o k     "   &   e n d T i m e   -   s t a r t T i m e   &   "   s e c o n d s "   &   " . n T h e   d i r e c t o r y   c o n t a i n s   "   &   f i l e C o u n t e r   &   "   f i l e s . n "F J�9J l �8�7�6�8  �7  �6  �9   � m   f gKK�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��       �5LM�5  L �4
�4 .aevtoappnull  �   � ****M �3N�2�1OP�0
�3 .aevtoappnull  �   � ****N k    QQ  RR  #SS  /TT  9UU  KVV  aWW  hXX  tYY  �ZZ  ��/�/  �2  �1  O �.�-�. 0 j  �- 0 i  P * �, !�+�*�) 4 7�(�'�&�%�$ q�#�"�!� ����������� �� ������379<
�, 
VOIC
�+ .sysottosnull���     TEXT
�* .sysostflalis    ��� null�) 0 
raw_folder  �( 0 live_folder  
�' .misccurdldt    ��� null
�& 
time�% 0 	starttime 	startTime�$ 0 filecounter fileCounter
�# 
file�" 0 itemlist itemList
�! 
nmbr
�  
cfol� 0 imageset imageSet
� .corecnte****       ****
� 
cobj
� 
TEXT� 0 
currentimg 
currentImg
� e050Nevr
� 
AUiL
� .miscactvnull��� ��� null
� 
alis
� .PsCSodocnull���    ****
� 
pADc
� 
from
� .miscDoAcnull���    utxt
� 
docu
� 
savo
� .PsCSclosnull���    docu� 0 endtime endTime�0���l O*j E�O���l O*j E�O*j 	�,E�OjE�O� ��-E�UO k�a ,Ekh  �kE�[OY��O� *a �/�-EE` UO� � pk_ j kh _ a �/a &E` Oa  Fa *a ,FO*j O*a _ /j O*a ,E` Oa a a  l !O*a "-a #fl $OPU[OY��O*j 	�,E` %Oa &_ %�%a '%�%a (%�a )l OPU ascr  ��ޭ