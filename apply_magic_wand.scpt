FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �    L a s t   I m p o r t 	 o      ���� 0 	albumname 	AlbumName��  ��        l     ��  ��    Q K display dialog "Create a new album with name" default answer "Last Import"     �   �   d i s p l a y   d i a l o g   " C r e a t e   a   n e w   a l b u m   w i t h   n a m e "   d e f a u l t   a n s w e r   " L a s t   I m p o r t "      l     ��  ��    3 - set albumName to text returned of the result     �   Z   s e t   a l b u m N a m e   t o   t e x t   r e t u r n e d   o f   t h e   r e s u l t      l     ��������  ��  ��        l    ����  O       I   ������
�� .miscactvnull��� ��� null��  ��    m      �                                                                                  Phts  alis    N  Macintosh HD               �H��H+  !	
Photos.app                                                     !} ���        ����  	                Applications    �H��      ���    !	  %Macintosh HD:Applications: Photos.app    
 P h o t o s . a p p    M a c i n t o s h   H D  Applications/Photos.app   / ��  ��  ��        l  �  ����   O  � ! " ! O   � # $ # k   � % %  & ' & l    �� ( )��   (��	repeat until enabled of menu item "New Album�" of menu 1 of menu bar item "File" of menu bar 1	end repeat	if exists menu item "Show Sidebar" of menu 1 of menu bar item "View" of menu bar 1 then		keystroke "s" using {option down, command down} -- Show Sidebar	end if		-- EDIT/ENHANCE		if (exists group 2 of splitter group 1 of window 1) then		log "locate last import menu"		-- find "last import" in the menu		repeat with aRow in row of outline 1 of scroll area 1 of group 2 of splitter group 1 of window 1			if name of first UI element of aRow starts with AlbumName then				select aRow				exit repeat			end if		end repeat		log "select all"				-- select all items in the last import		-- might result in endless loop. figure out how t ocheck for "edit" button		if (not enabled of menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1) then			repeat until enabled of menu item "Select All" of menu 1 of menu bar item "Edit" of menu bar 1			end repeat			keystroke "a" using {command down} -- ?A to select all the photos			delay 1			keystroke return -- open first photo			delay 1					end if				keystroke "e" -- edit opened photo		delay 1	end if	    ) � * *	B 	 r e p e a t   u n t i l   e n a b l e d   o f   m e n u   i t e m   " N e w   A l b u m & "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " F i l e "   o f   m e n u   b a r   1  	 e n d   r e p e a t  	 i f   e x i s t s   m e n u   i t e m   " S h o w   S i d e b a r "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " V i e w "   o f   m e n u   b a r   1   t h e n  	 	 k e y s t r o k e   " s "   u s i n g   { o p t i o n   d o w n ,   c o m m a n d   d o w n }   - -   S h o w   S i d e b a r  	 e n d   i f  	  	 - -   E D I T / E N H A N C E  	  	 i f   ( e x i s t s   g r o u p   2   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1 )   t h e n  	 	 l o g   " l o c a t e   l a s t   i m p o r t   m e n u "  	 	 - -   f i n d   " l a s t   i m p o r t "   i n   t h e   m e n u  	 	 r e p e a t   w i t h   a R o w   i n   r o w   o f   o u t l i n e   1   o f   s c r o l l   a r e a   1   o f   g r o u p   2   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1  	 	 	 i f   n a m e   o f   f i r s t   U I   e l e m e n t   o f   a R o w   s t a r t s   w i t h   A l b u m N a m e   t h e n  	 	 	 	 s e l e c t   a R o w  	 	 	 	 e x i t   r e p e a t  	 	 	 e n d   i f  	 	 e n d   r e p e a t  	 	 l o g   " s e l e c t   a l l "  	 	  	 	 - -   s e l e c t   a l l   i t e m s   i n   t h e   l a s t   i m p o r t  	 	 - -   m i g h t   r e s u l t   i n   e n d l e s s   l o o p .   f i g u r e   o u t   h o w   t   o c h e c k   f o r   " e d i t "   b u t t o n  	 	 i f   ( n o t   e n a b l e d   o f   m e n u   i t e m   " C o p y "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " E d i t "   o f   m e n u   b a r   1 )   t h e n  	 	 	 r e p e a t   u n t i l   e n a b l e d   o f   m e n u   i t e m   " S e l e c t   A l l "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " E d i t "   o f   m e n u   b a r   1  	 	 	 e n d   r e p e a t  	 	 	 k e y s t r o k e   " a "   u s i n g   { c o m m a n d   d o w n }   - -  # A   t o   s e l e c t   a l l   t h e   p h o t o s  	 	 	 d e l a y   1  	 	 	 k e y s t r o k e   r e t u r n   - -   o p e n   f i r s t   p h o t o  	 	 	 d e l a y   1  	 	 	  	 	 e n d   i f  	 	  	 	 k e y s t r o k e   " e "   - -   e d i t   o p e n e d   p h o t o  	 	 d e l a y   1  	 e n d   i f  	 '  + , + r    ! - . - J     / /  0 1 0 m     2 2 � 3 3  0 1  4 5 4 m     6 6 � 7 7  o f 5  8�� 8 m     9 9 � : :  1��   . o      ���� 0 	positions   ,  ; < ; W   "� = > = k   0� ? ?  @ A @ l  0 0�� B C��   B 4 . refocus the app in case we don't have buttons    C � D D \   r e f o c u s   t h e   a p p   i n   c a s e   w e   d o n ' t   h a v e   b u t t o n s A  E F E Z   0 l G H���� G l  0 < I���� I H   0 < J J l  0 ; K���� K I  0 ;�� L��
�� .coredoexnull���     **** L n   0 7 M N M 4   4 7�� O
�� 
splg O m   5 6����   N 4   0 4�� P
�� 
cwin P m   2 3���� ��  ��  ��  ��  ��   H k   ? h Q Q  R S R l  ? ?�� T U��   T  delay 1    U � V V  d e l a y   1 S  W X W l  ? ?�� Y Z��   Y * $keystroke return -- open first photo    Z � [ [ H k e y s t r o k e   r e t u r n   - -   o p e n   f i r s t   p h o t o X  \ ] \ I  ? D�� ^��
�� .sysodelanull��� ��� nmbr ^ m   ? @���� ��   ]  _ ` _ O  E Q a b a I  K P������
�� .miscactvnull��� ��� null��  ��   b m   E H c c�                                                                                  ToyS  alis    �  Macintosh HD               �H��H+  !��Script Editor.app                                              !�[Ӣ�        ����  	                	Utilities     �H��      Ӣ�    !��!	  7Macintosh HD:Applications: Utilities: Script Editor.app   $  S c r i p t   E d i t o r . a p p    M a c i n t o s h   H D  (Applications/Utilities/Script Editor.app  / ��   `  d e d I  R W�� f��
�� .sysodelanull��� ��� nmbr f m   R S���� ��   e  g h g O  X b i j i I  \ a������
�� .miscactvnull��� ��� null��  ��   j m   X Y k k�                                                                                  Phts  alis    N  Macintosh HD               �H��H+  !	
Photos.app                                                     !} ���        ����  	                Applications    �H��      ���    !	  %Macintosh HD:Applications: Photos.app    
 P h o t o s . a p p    M a c i n t o s h   H D  Applications/Photos.app   / ��   h  l�� l I  c h�� m��
�� .sysodelanull��� ��� nmbr m m   c d���� ��  ��  ��  ��   F  n o n l  m m�� p q��   p H B find the correct button ... funnily enough it is always different    q � r r �   f i n d   t h e   c o r r e c t   b u t t o n   . . .   f u n n i l y   e n o u g h   i t   i s   a l w a y s   d i f f e r e n t o  s t s r   m t u v u m   m p����' v o      ���� 0 ypos yPos t  w x w r   u | y z y m   u x��
�� 
null z o      ���� 0 highestbutton highestButton x  { | { l  } }�� } ~��   } o iset aButtons to get every button of every group of every group of group 0 of splitter group 0 of window 1    ~ �   � s e t   a B u t t o n s   t o   g e t   e v e r y   b u t t o n   o f   e v e r y   g r o u p   o f   e v e r y   g r o u p   o f   g r o u p   0   o f   s p l i t t e r   g r o u p   0   o f   w i n d o w   1 |  � � � l  } }�� � ���   � � � log "looking up first edit button from total of:" & (count button of group 1 of group 1 of group 1 of splitter group 1 of window 1)    � � � �   l o g   " l o o k i n g   u p   f i r s t   e d i t   b u t t o n   f r o m   t o t a l   o f : "   &   ( c o u n t   b u t t o n   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1 ) �  � � � l  } }�� � ���   � h b UI elements of group 1 of group 1 of splitter group 1 of window 1 -- list all items in this group    � � � � �   U I   e l e m e n t s   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   l i s t   a l l   i t e m s   i n   t h i s   g r o u p �  � � � l  } }�� � ���   �   log "done here"    � � � �     l o g   " d o n e   h e r e " �  � � � l  } }�� � ���   � g a click button 1 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- show overview    � � � � �   c l i c k   b u t t o n   1   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   s h o w   o v e r v i e w �  � � � l  } }�� � ���   � g a click button 2 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- hide overview    � � � � �   c l i c k   b u t t o n   2   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   h i d e   o v e r v i e w �  � � � l  } }�� � ���   � ` Z click button 3 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- rotate    � � � � �   c l i c k   b u t t o n   3   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   r o t a t e �  � � � l  } }�� � ���   � d ^ click button 4 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- extensions    � � � � �   c l i c k   b u t t o n   4   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   e x t e n s i o n s �  � � � l  } }�� � ���   � a [ click button 5 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- enhance    � � � � �   c l i c k   b u t t o n   5   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   e n h a n c e �  � � � l  } }�� � ���   � l f except order of those buttons is different every time you start it up so forget locating it by number    � � � � �   e x c e p t   o r d e r   o f   t h o s e   b u t t o n s   i s   d i f f e r e n t   e v e r y   t i m e   y o u   s t a r t   i t   u p   s o   f o r g e t   l o c a t i n g   i t   b y   n u m b e r �  � � � l  } }�� � ���   � c ] click checkbox 1 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- filters    � � � � �   c l i c k   c h e c k b o x   1   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   f i l t e r s �  � � � l  } }�� � ���   � c ] click checkbox 2 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- filters    � � � � �   c l i c k   c h e c k b o x   2   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   f i l t e r s �  � � � l  } }�� � ���   � ` Z click checkbox 3 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- crop    � � � � �   c l i c k   c h e c k b o x   3   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   c r o p �  � � � l  } }�� � ���   � c ] click checkbox 4 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- filters    � � � � �   c l i c k   c h e c k b o x   4   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   f i l t e r s �  � � � l  } }�� � ���   � l f set gluton to button 5 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- extensions    � � � � �   s e t   g l u t o n   t o   b u t t o n   5   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   e x t e n s i o n s �  � � � l  } }�� � ���   �   click gluton    � � � �    c l i c k   g l u t o n �  � � � l  } }�� � ���   � - ' set {xPos, yPos} to position of gluton    � � � � N   s e t   { x P o s ,   y P o s }   t o   p o s i t i o n   o f   g l u t o n �  � � � l  } }�� � ���   �   log "gluton: " & yPos    � � � � ,   l o g   " g l u t o n :   "   &   y P o s �  � � � X   } � ��� � � l  � � � � � � k   � � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
posn � o   � ����� 0 abutton aButton � J       � �  � � � o      ���� 0 axpos aXPos �  ��� � o      ���� 0 aypos aYPos��   �  ��� � Z   � � � ����� � l  � � ����� � F   � � � � � ?   � � � � � o   � ����� 0 ypos yPos � o   � ����� 0 aypos aYPos � ?   � � � � � o   � ����� 0 aypos aYPos � m   � ����� ���  ��   � k   � � � �  � � � r   � � � � � o   � ����� 0 aypos aYPos � o      ���� 0 ypos yPos �  ��� � r   � � � � � o   � ����� 0 abutton aButton � o      ���� 0 highestbutton highestButton��  ��  ��  ��   �   press enhance button    � � � � *   p r e s s   e n h a n c e   b u t t o n�� 0 abutton aButton � n   � � � � � m   � ���
�� 
butT � n   � � � � � 4   � ��� 
�� 
sgrp  m   � �����  � n   � � 4   � ���
�� 
sgrp m   � �����  n   � � 4   � ���
�� 
sgrp m   � �����  n   � � 4   � ���	
�� 
splg	 m   � �����  4   � ���

�� 
cwin
 m   � �����  �  l  � ���������  ��  ��    I  � �����
�� .ascrcmnt****      � **** m   � � �  c l i c k   e n h a n c e��    I  �����
�� .ascrcmnt****      � **** n   � � 1   � ���
�� 
valL o   � ����� 0 highestbutton highestButton��    l  I ����
�� .prcsclicnull��� ��� uiel o  ���� 0 highestbutton highestButton��   #  should be the enhance button    � :   s h o u l d   b e   t h e   e n h a n c e   b u t t o n  I �� ��
�� .sysodelanull��� ��� nmbr  m  ���� ��   !"! I ��#��
�� .ascrcmnt****      � ****# m  $$ �%%  c h e c k   i f   l a s t��  " &'& l ��������  ��  ��  ' ()( l ��*+��  * a [ UI elements of group 1 of group 1 of toolbar 1 of window 1 -- list all items in this group   + �,, �   U I   e l e m e n t s   o f   g r o u p   1   o f   g r o u p   1   o f   t o o l b a r   1   o f   w i n d o w   1   - -   l i s t   a l l   i t e m s   i n   t h i s   g r o u p) -.- l �/0�  /   log "check  last"   0 �11 $   l o g   " c h e c k     l a s t ". 232 l �~45�~  4 | v reset check for if already on last image (label xx of xx on top of the screen ... might be 5th or 6th or 7th element)   5 �66 �   r e s e t   c h e c k   f o r   i f   a l r e a d y   o n   l a s t   i m a g e   ( l a b e l   x x   o f   x x   o n   t o p   o f   t h e   s c r e e n   . . .   m i g h t   b e   5 t h   o r   6 t h   o r   7 t h   e l e m e n t )3 787 X  s9�}:9 Z  Bn;<�|�{; E BK=>= n  BG?@? 1  CG�z
�z 
valL@ o  BC�y�y 0 atext aText> m  GJAA �BB    o f  < k  NjCC DED r  N]FGF n N[HIH I  O[�xJ�w�x 	0 split  J KLK n  OTMNM 1  PT�v
�v 
valLN o  OP�u�u 0 atext aTextL O�tO m  TWPP �QQ   �t  �w  I  f  NOG o      �s�s 0 	positions  E R�rR I ^j�qS�p
�q .ascrcmnt****      � ****S b  ^fTUT m  ^aVV �WW  p o s i t i o n :U n  aeXYX 4  be�oZ
�o 
cobjZ m  cd�n�n Y o  ab�m�m 0 	positions  �p  �r  �|  �{  �} 0 atext aText: n  4[\[ m  04�l
�l 
sttx\ n  0]^] 4  +0�k_
�k 
sgrp_ m  ./�j�j ^ n  +`a` 4  &+�ib
�i 
sgrpb m  )*�h�h a n  &cdc 4  !&�ge
�g 
tbare m  $%�f�f d 4  !�ef
�e 
cwinf m   �d�d 8 ghg l tt�cij�c  i    try to move to next image   j �kk 4   t r y   t o   m o v e   t o   n e x t   i m a g eh lml l tnopn I t�bq�a
�b .prcskprsnull���     ctxtq l t{r�`�_r I t{�^s�]
�^ .sysontocTEXT       shors m  tw�\�\ �]  �`  �_  �a  o   right arrow   p �tt    r i g h t   a r r o wm u�[u I ���Zv�Y
�Z .sysodelanull��� ��� nmbrv m  ���X�X �Y  �[   > l  & /w�W�Vw =  & /xyx n   & *z{z 4   ' *�U|
�U 
cobj| m   ( )�T�T { o   & '�S�S 0 	positions  y n   * .}~} 4   + .�R
�R 
cobj m   , -�Q�Q ~ o   * +�P�P 0 	positions  �W  �V   < ��� l ���O���O  �   click done   � ���    c l i c k   d o n e� ��� I ���N��M
�N .prcsclicnull��� ��� uiel� n  ����� 4  ���L�
�L 
chbx� m  ���K�K � n  ����� 4  ���J�
�J 
sgrp� m  ���I�I � n  ����� 4  ���H�
�H 
sgrp� m  ���G�G � n  ����� 4  ���F�
�F 
tbar� m  ���E�E � 4  ���D�
�D 
cwin� m  ���C�C �M  � ��B� I ���A��@
�A .sysodelanull��� ��� nmbr� m  ���?�? �@  �B   $ 4    �>�
�> 
prcs� m    �� ���  P h o t o s " m    ���                                                                                  sevs  alis    �  Macintosh HD               �H��H+  !�System Events.app                                              $���A        ����  	                CoreServices    �H��      ��1    !�!�!�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��    ��� l     �=�<�;�=  �<  �;  � ��� l     �:�9�8�:  �9  �8  � ��� i     ��� I      �7��6�7 	0 split  � ��� o      �5�5 0 	thestring 	theString� ��4� o      �3�3 0 thedelimiter theDelimiter�4  �6  � k     �� ��� l     �2���2  � . ( save delimiters to restore old settings   � ��� P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s� ��� r     ��� n    ��� 1    �1
�1 
txdl� 1     �0
�0 
ascr� o      �/�/ 0 olddelimiters oldDelimiters� ��� l   �.���.  � - ' set delimiters to delimiter to be used   � ��� N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d� ��� r    ��� o    �-�- 0 thedelimiter theDelimiter� n     ��� 1    
�,
�, 
txdl� 1    �+
�+ 
ascr� ��� l   �*���*  �   create the array   � ��� "   c r e a t e   t h e   a r r a y� ��� r    ��� n    ��� 2    �)
�) 
citm� o    �(�( 0 	thestring 	theString� o      �'�' 0 thearray theArray� ��� l   �&���&  �   restore the old setting   � ��� 0   r e s t o r e   t h e   o l d   s e t t i n g� ��� r    ��� o    �%�% 0 olddelimiters oldDelimiters� n     ��� 1    �$
�$ 
txdl� 1    �#
�# 
ascr� ��� l   �"���"  �   return the result   � ��� $   r e t u r n   t h e   r e s u l t� ��!� L    �� o    � �  0 thearray theArray�!  � ��� l     ����  �  �  �       �����  � ��� 	0 split  
� .aevtoappnull  �   � ****� �������� 	0 split  � ��� �  ��� 0 	thestring 	theString� 0 thedelimiter theDelimiter�  � ����� 0 	thestring 	theString� 0 thedelimiter theDelimiter� 0 olddelimiters oldDelimiters� 0 thearray theArray� ���
� 
ascr
� 
txdl
� 
citm� ��,E�O���,FO��-E�O���,FO�� �
��	����
�
 .aevtoappnull  �   � ****� k    ���  ��  ��  ��  �	  �  � ��� 0 abutton aButton� 0 atext aText� - 
� ���� 2 6 9� ���������� c��������������������������������$����AP��V��������� 0 	albumname 	AlbumName
� .miscactvnull��� ��� null
� 
prcs�  0 	positions  
�� 
cobj
�� 
cwin
�� 
splg
�� .coredoexnull���     ****
�� .sysodelanull��� ��� nmbr��'�� 0 ypos yPos
�� 
null�� 0 highestbutton highestButton
�� 
sgrp
�� 
butT
�� 
kocl
�� .corecnte****       ****
�� 
posn�� 0 axpos aXPos�� 0 aypos aYPos�� �
�� 
bool
�� .ascrcmnt****      � ****
�� 
valL
�� .prcsclicnull��� ��� uiel
�� 
tbar
�� 
sttx�� 	0 split  �� 
�� .sysontocTEXT       shor
�� .prcskprsnull���     ctxt
�� 
chbx���E�O� *j UO��*��/����mvE�Ogh��k/��m/ *�k/�j/j  .kj Oa  *j UOkj O� *j UOkj Y hOa E` Oa E` O q*�k/�k/a k/a k/a k/a ,[a �l kh  �a ,E[�k/E` Z[�l/E` ZO_ _ 	 _ a a & _ E` O�E` Y h[OY��Oa j O_ a  ,j O_ j !Okj Oa "j O X*�k/a #k/a k/a k/a $,[a �l kh �a  ,a % !)�a  ,a &l+ 'E�Oa (��k/%j Y h[OY��Oa )j *j +Okj [OY��O*�k/a #k/a k/a k/a ,k/j !Okj UUascr  ��ޭ