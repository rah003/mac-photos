FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �    L a s t   I m p o r t 	 o      ���� 0 	albumname 	AlbumName��  ��        l     ��  ��    Q K display dialog "Create a new album with name" default answer "Last Import"     �   �   d i s p l a y   d i a l o g   " C r e a t e   a   n e w   a l b u m   w i t h   n a m e "   d e f a u l t   a n s w e r   " L a s t   I m p o r t "      l     ��  ��    3 - set albumName to text returned of the result     �   Z   s e t   a l b u m N a m e   t o   t e x t   r e t u r n e d   o f   t h e   r e s u l t      l     ��������  ��  ��        l    ����  O       I   ������
�� .miscactvnull��� ��� null��  ��    m      �                                                                                  Phts  alis    N  Macintosh HD               �H��H+  !	
Photos.app                                                     !} ���        ����  	                Applications    �H��      ���    !	  %Macintosh HD:Applications: Photos.app    
 P h o t o s . a p p    M a c i n t o s h   H D  Applications/Photos.app   / ��  ��  ��        l    ����   O   ! " ! O    # $ # k    % %  & ' & l    �� ( )��   (��	repeat until enabled of menu item "New Album�" of menu 1 of menu bar item "File" of menu bar 1	end repeat	if exists menu item "Show Sidebar" of menu 1 of menu bar item "View" of menu bar 1 then		keystroke "s" using {option down, command down} -- Show Sidebar	end if		-- EDIT/ENHANCE		if (exists group 2 of splitter group 1 of window 1) then		log "locate last import menu"		-- find "last import" in the menu		repeat with aRow in row of outline 1 of scroll area 1 of group 2 of splitter group 1 of window 1			if name of first UI element of aRow starts with AlbumName then				select aRow				exit repeat			end if		end repeat		log "select all"				-- select all items in the last import		-- might result in endless loop. figure out how t ocheck for "edit" button		if (not enabled of menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1) then			repeat until enabled of menu item "Select All" of menu 1 of menu bar item "Edit" of menu bar 1			end repeat			keystroke "a" using {command down} -- ?A to select all the photos			delay 1			keystroke return -- open first photo			delay 1					end if				keystroke "e" -- edit opened photo		delay 1	end if	    ) � * *	B 	 r e p e a t   u n t i l   e n a b l e d   o f   m e n u   i t e m   " N e w   A l b u m & "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " F i l e "   o f   m e n u   b a r   1  	 e n d   r e p e a t  	 i f   e x i s t s   m e n u   i t e m   " S h o w   S i d e b a r "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " V i e w "   o f   m e n u   b a r   1   t h e n  	 	 k e y s t r o k e   " s "   u s i n g   { o p t i o n   d o w n ,   c o m m a n d   d o w n }   - -   S h o w   S i d e b a r  	 e n d   i f  	  	 - -   E D I T / E N H A N C E  	  	 i f   ( e x i s t s   g r o u p   2   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1 )   t h e n  	 	 l o g   " l o c a t e   l a s t   i m p o r t   m e n u "  	 	 - -   f i n d   " l a s t   i m p o r t "   i n   t h e   m e n u  	 	 r e p e a t   w i t h   a R o w   i n   r o w   o f   o u t l i n e   1   o f   s c r o l l   a r e a   1   o f   g r o u p   2   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1  	 	 	 i f   n a m e   o f   f i r s t   U I   e l e m e n t   o f   a R o w   s t a r t s   w i t h   A l b u m N a m e   t h e n  	 	 	 	 s e l e c t   a R o w  	 	 	 	 e x i t   r e p e a t  	 	 	 e n d   i f  	 	 e n d   r e p e a t  	 	 l o g   " s e l e c t   a l l "  	 	  	 	 - -   s e l e c t   a l l   i t e m s   i n   t h e   l a s t   i m p o r t  	 	 - -   m i g h t   r e s u l t   i n   e n d l e s s   l o o p .   f i g u r e   o u t   h o w   t   o c h e c k   f o r   " e d i t "   b u t t o n  	 	 i f   ( n o t   e n a b l e d   o f   m e n u   i t e m   " C o p y "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " E d i t "   o f   m e n u   b a r   1 )   t h e n  	 	 	 r e p e a t   u n t i l   e n a b l e d   o f   m e n u   i t e m   " S e l e c t   A l l "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " E d i t "   o f   m e n u   b a r   1  	 	 	 e n d   r e p e a t  	 	 	 k e y s t r o k e   " a "   u s i n g   { c o m m a n d   d o w n }   - -  # A   t o   s e l e c t   a l l   t h e   p h o t o s  	 	 	 d e l a y   1  	 	 	 k e y s t r o k e   r e t u r n   - -   o p e n   f i r s t   p h o t o  	 	 	 d e l a y   1  	 	 	  	 	 e n d   i f  	 	  	 	 k e y s t r o k e   " e "   - -   e d i t   o p e n e d   p h o t o  	 	 d e l a y   1  	 e n d   i f  	 '  + , + l   ��������  ��  ��   ,  - . - Z    = / 0���� / I   +�� 1��
�� .coredoexnull���     **** 1 n    ' 2 3 2 4   $ '�� 4
�� 
menI 4 m   % & 5 5 � 6 6  S h o w   E d i t   T o o l s 3 n    $ 7 8 7 4   ! $�� 9
�� 
menE 9 m   " #����  8 n    ! : ; : 4    !�� <
�� 
mbri < m      = = � > > 
 I m a g e ; 4    �� ?
�� 
mbar ? m    ���� ��   0 k   . 9 @ @  A B A l  . 3 C D E C I  . 3�� F��
�� .prcskprsnull���     ctxt F m   . / G G � H H  e��   D   edit opened photo    E � I I $   e d i t   o p e n e d   p h o t o B  J�� J I  4 9�� K��
�� .sysodelanull��� ��� nmbr K m   4 5���� ��  ��  ��  ��   .  L M L l  > >��������  ��  ��   M  N O N r   > M P Q P J   > I R R  S T S m   > A U U � V V  0 T  W X W m   A D Y Y � Z Z  o f X  [�� [ m   D G \ \ � ] ]  1��   Q o      ���� 0 	positions   O  ^ _ ^ W   N� ` a ` k   d� b b  c d c l  d d�� e f��   e 4 . refocus the app in case we don't have buttons    f � g g \   r e f o c u s   t h e   a p p   i n   c a s e   w e   d o n ' t   h a v e   b u t t o n s d  h i h Z   d � j k���� j l  d t l���� l H   d t m m l  d s n���� n I  d s�� o��
�� .coredoexnull���     **** o n   d o p q p 4   j o�� r
�� 
splg r m   m n����   q 4   d j�� s
�� 
cwin s m   h i���� ��  ��  ��  ��  ��   k k   w � t t  u v u l  w w�� w x��   w  delay 1    x � y y  d e l a y   1 v  z { z l  w w�� | }��   | * $keystroke return -- open first photo    } � ~ ~ H k e y s t r o k e   r e t u r n   - -   o p e n   f i r s t   p h o t o {   �  I  w |�� ���
�� .sysodelanull��� ��� nmbr � m   w x���� ��   �  � � � O  } � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � m   } � � ��                                                                                  ToyS  alis    �  Macintosh HD               �H��H+  !��Script Editor.app                                              !�[Ӣ�        ����  	                	Utilities     �H��      Ӣ�    !��!	  7Macintosh HD:Applications: Utilities: Script Editor.app   $  S c r i p t   E d i t o r . a p p    M a c i n t o s h   H D  (Applications/Utilities/Script Editor.app  / ��   �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   �  � � � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � m   � � � ��                                                                                  Phts  alis    N  Macintosh HD               �H��H+  !	
Photos.app                                                     !} ���        ����  	                Applications    �H��      ���    !	  %Macintosh HD:Applications: Photos.app    
 P h o t o s . a p p    M a c i n t o s h   H D  Applications/Photos.app   / ��   �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��  ��  ��  ��   i  � � � l  � ��� � ���   � H B find the correct button ... funnily enough it is always different    � � � � �   f i n d   t h e   c o r r e c t   b u t t o n   . . .   f u n n i l y   e n o u g h   i t   i s   a l w a y s   d i f f e r e n t �  � � � r   � � � � � m   � �����' � o      ���� 0 ypos yPos �  � � � r   � � � � � m   � ���
�� 
null � o      ���� 0 highestbutton highestButton �  � � � l  � ��� � ���   � o iset aButtons to get every button of every group of every group of group 0 of splitter group 0 of window 1    � � � � � s e t   a B u t t o n s   t o   g e t   e v e r y   b u t t o n   o f   e v e r y   g r o u p   o f   e v e r y   g r o u p   o f   g r o u p   0   o f   s p l i t t e r   g r o u p   0   o f   w i n d o w   1 �  � � � l  � ��� � ���   � � � log "looking up first edit button from total of:" & (count button of group 1 of group 1 of group 1 of splitter group 1 of window 1)    � � � �   l o g   " l o o k i n g   u p   f i r s t   e d i t   b u t t o n   f r o m   t o t a l   o f : "   &   ( c o u n t   b u t t o n   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1 ) �  � � � l  � ��� � ���   � h b UI elements of group 1 of group 1 of splitter group 1 of window 1 -- list all items in this group    � � � � �   U I   e l e m e n t s   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   l i s t   a l l   i t e m s   i n   t h i s   g r o u p �  � � � l  � ��� � ���   �   log "done here"    � � � �     l o g   " d o n e   h e r e " �  � � � l  � ��� � ���   � g a click button 1 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- show overview    � � � � �   c l i c k   b u t t o n   1   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   s h o w   o v e r v i e w �  � � � l  � ��� � ���   � g a click button 2 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- hide overview    � � � � �   c l i c k   b u t t o n   2   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   h i d e   o v e r v i e w �  � � � l  � ��� � ���   � ` Z click button 3 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- rotate    � � � � �   c l i c k   b u t t o n   3   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   r o t a t e �  � � � l  � ��� � ���   � d ^ click button 4 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- extensions    � � � � �   c l i c k   b u t t o n   4   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   e x t e n s i o n s �  � � � l  � ��� � ���   � a [ click button 5 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- enhance    � � � � �   c l i c k   b u t t o n   5   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   e n h a n c e �  � � � l  � ��� � ���   � l f except order of those buttons is different every time you start it up so forget locating it by number    � � � � �   e x c e p t   o r d e r   o f   t h o s e   b u t t o n s   i s   d i f f e r e n t   e v e r y   t i m e   y o u   s t a r t   i t   u p   s o   f o r g e t   l o c a t i n g   i t   b y   n u m b e r �  � � � l  � ��� � ���   � c ] click checkbox 1 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- filters    � � � � �   c l i c k   c h e c k b o x   1   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   f i l t e r s �  � � � l  � ��� � ���   � c ] click checkbox 2 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- filters    � � � � �   c l i c k   c h e c k b o x   2   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   f i l t e r s �  � � � l  � ��� � ���   � ` Z click checkbox 3 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- crop    � � � � �   c l i c k   c h e c k b o x   3   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   c r o p �  � � � l  � ��� � ���   � c ] click checkbox 4 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- filters    � � � � �   c l i c k   c h e c k b o x   4   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   f i l t e r s �  � � � l  � ��� � ���   � l f set gluton to button 5 of group 1 of group 1 of group 1 of splitter group 1 of window 1 -- extensions    � � � � �   s e t   g l u t o n   t o   b u t t o n   5   o f   g r o u p   1   o f   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   1   - -   e x t e n s i o n s �  � � � l  � ��� � ���   �   click gluton    � � � �    c l i c k   g l u t o n �  � � � l  � ��� � ���   � - ' set {xPos, yPos} to position of gluton    � � � � N   s e t   { x P o s ,   y P o s }   t o   p o s i t i o n   o f   g l u t o n �  � � � l  � ��� � ���   �   log "gluton: " & yPos    � � � � ,   l o g   " g l u t o n :   "   &   y P o s �  � � � X   �1 ��� � � l  �, � � � � k   �, � �    l  � ���������  ��  ��    r   � n   � � 1   � ���
�� 
posn o   � ����� 0 abutton aButton J       	
	 o      ���� 0 axpos aXPos
 �� o      ���� 0 aypos aYPos��   �� Z  ,���� l ���� F   ?  
 o  ���� 0 ypos yPos o  	���� 0 aypos aYPos ?   o  ���� 0 aypos aYPos m  ���� ���  ��   k  (  r  " o  ���� 0 aypos aYPos o      ���� 0 ypos yPos �� r  #( o  #$���� 0 abutton aButton o      ���� 0 highestbutton highestButton��  ��  ��  ��   �   press enhance button    � � *   p r e s s   e n h a n c e   b u t t o n�� 0 abutton aButton � n   � �  m   � ���
�� 
butT  n   � �!"! 4   � ���#
�� 
sgrp# m   � ����� " n   � �$%$ 4   � ���&
�� 
sgrp& m   � ����� % n   � �'(' 4   � ���)
�� 
sgrp) m   � ����� ( n   � �*+* 4   � ���,
�� 
splg, m   � ����� + 4   � ���-
�� 
cwin- m   � ���  � ./. l 22�~�}�|�~  �}  �|  / 010 I 29�{2�z
�{ .ascrcmnt****      � ****2 m  2533 �44  c l i c k   e n h a n c e�z  1 565 I :E�y7�x
�y .ascrcmnt****      � ****7 n  :A898 1  =A�w
�w 
valL9 o  :=�v�v 0 highestbutton highestButton�x  6 :;: l FM<=>< I FM�u?�t
�u .prcsclicnull��� ��� uiel? o  FI�s�s 0 highestbutton highestButton�t  = #  should be the enhance button   > �@@ :   s h o u l d   b e   t h e   e n h a n c e   b u t t o n; ABA I NS�rC�q
�r .sysodelanull��� ��� nmbrC m  NO�p�p �q  B DED I T[�oF�n
�o .ascrcmnt****      � ****F m  TWGG �HH  c h e c k   i f   l a s t�n  E IJI l \\�m�l�k�m  �l  �k  J KLK l \\�jMN�j  M a [ UI elements of group 1 of group 1 of toolbar 1 of window 1 -- list all items in this group   N �OO �   U I   e l e m e n t s   o f   g r o u p   1   o f   g r o u p   1   o f   t o o l b a r   1   o f   w i n d o w   1   - -   l i s t   a l l   i t e m s   i n   t h i s   g r o u pL PQP l \\�iRS�i  R   log "check  last"   S �TT $   l o g   " c h e c k     l a s t "Q UVU l \\�hWX�h  W | v reset check for if already on last image (label xx of xx on top of the screen ... might be 5th or 6th or 7th element)   X �YY �   r e s e t   c h e c k   f o r   i f   a l r e a d y   o n   l a s t   i m a g e   ( l a b e l   x x   o f   x x   o n   t o p   o f   t h e   s c r e e n   . . .   m i g h t   b e   5 t h   o r   6 t h   o r   7 t h   e l e m e n t )V Z[Z X  \�\�g]\ Z  ��^_�f�e^ E ��`a` n  ��bcb 1  ���d
�d 
valLc o  ���c�c 0 atext aTexta m  ��dd �ee    o f  _ k  ��ff ghg r  ��iji n ��klk I  ���bm�a�b 	0 split  m non n  ��pqp 1  ���`
�` 
valLq o  ���_�_ 0 atext aTexto r�^r m  ��ss �tt   �^  �a  l  f  ��j o      �]�] 0 	positions  h u�\u I ���[v�Z
�[ .ascrcmnt****      � ****v b  ��wxw m  ��yy �zz  p o s i t i o n :x n  ��{|{ 4  ���Y}
�Y 
cobj} m  ���X�X | o  ���W�W 0 	positions  �Z  �\  �f  �e  �g 0 atext aText] n  _x~~ m  tx�V
�V 
sttx n  _t��� 4  ot�U�
�U 
sgrp� m  rs�T�T � n  _o��� 4  jo�S�
�S 
sgrp� m  mn�R�R � n  _j��� 4  ej�Q�
�Q 
tbar� m  hi�P�P � 4  _e�O�
�O 
cwin� m  cd�N�N [ ��� l ���M���M  �    try to move to next image   � ��� 4   t r y   t o   m o v e   t o   n e x t   i m a g e� ��� l ������ I ���L��K
�L .prcskprsnull���     ctxt� l ����J�I� I ���H��G
�H .sysontocTEXT       shor� m  ���F�F �G  �J  �I  �K  �   right arrow   � ���    r i g h t   a r r o w� ��E� I ���D��C
�D .sysodelanull��� ��� nmbr� m  ���B�B �C  �E   a l  R c��A�@� =  R c��� n   R Z��� 4   U Z�?�
�? 
cobj� m   X Y�>�> � o   R U�=�= 0 	positions  � n   Z b��� 4   ] b�<�
�< 
cobj� m   ` a�;�; � o   Z ]�:�: 0 	positions  �A  �@   _ ��� l ���9���9  �   click done   � ���    c l i c k   d o n e� ��� I ���8��7
�8 .prcsclicnull��� ��� uiel� n  ����� 4  ���6�
�6 
menI� m  ���� ���  H i d e   E d i t   T o o l s� n  ����� 4  ���5�
�5 
menE� m  ���4�4 � n  ����� 4  ���3�
�3 
mbri� m  ���� ��� 
 I m a g e� 4  ���2�
�2 
mbar� m  ���1�1 �7  � ��� I ��0��/
�0 .prcsclicnull��� ��� uiel� n  ���� 4  �.�
�. 
chbx� m  �-�- � n  ���� 4  ��,�
�, 
sgrp� m   �+�+ � n  ����� 4  ���*�
�* 
sgrp� m  ���)�) � n  ����� 4  ���(�
�( 
tbar� m  ���'�' � 4  ���&�
�& 
cwin� m  ���%�% �/  � ��$� I �#��"
�# .sysodelanull��� ��� nmbr� m  �!�! �"  �$   $ 4    � �
�  
prcs� m    �� ���  P h o t o s " m    ���                                                                                  sevs  alis    �  Macintosh HD               �H��H+  !�System Events.app                                              $���A        ����  	                CoreServices    �H��      ��1    !�!�!�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��    ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i     ��� I      ���� 	0 split  � ��� o      �� 0 	thestring 	theString� ��� o      �� 0 thedelimiter theDelimiter�  �  � k     �� ��� l     ����  � . ( save delimiters to restore old settings   � ��� P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s� ��� r     ��� n    ��� 1    �
� 
txdl� 1     �
� 
ascr� o      �� 0 olddelimiters oldDelimiters� ��� l   ����  � - ' set delimiters to delimiter to be used   � ��� N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d� ��� r    ��� o    �� 0 thedelimiter theDelimiter� n     ��� 1    
�
� 
txdl� 1    �
� 
ascr� ��� l   ����  �   create the array   � ��� "   c r e a t e   t h e   a r r a y� ��� r    ��� n    ��� 2    �
� 
citm� o    �
�
 0 	thestring 	theString� o      �	�	 0 thearray theArray� ��� l   �� �  �   restore the old setting     � 0   r e s t o r e   t h e   o l d   s e t t i n g�  r     o    �� 0 olddelimiters oldDelimiters n      1    �
� 
txdl 1    �
� 
ascr 	 l   �
�  
   return the result    � $   r e t u r n   t h e   r e s u l t	 � L     o    �� 0 thearray theArray�  � � l     � �����   ��  ��  �       
�� 
��������   ������������������ 	0 split  
�� .aevtoappnull  �   � ****�� 0 	albumname 	AlbumName�� 0 	positions  �� 0 ypos yPos�� 0 highestbutton highestButton�� 0 axpos aXPos�� 0 aypos aYPos ����������� 	0 split  �� ����   ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��   ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArray ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO� ��������
�� .aevtoappnull  �   � **** k          ����  ��  ��   ������ 0 abutton aButton�� 0 atext aText 6 
�� ���������� =���� 5�� G���� U Y \�������� ���������������������������3������G����ds��y���������� 0 	albumname 	AlbumName
�� .miscactvnull��� ��� null
�� 
prcs
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .coredoexnull���     ****
�� .prcskprsnull���     ctxt
�� .sysodelanull��� ��� nmbr�� 0 	positions  
�� 
cobj
�� 
cwin
�� 
splg��'�� 0 ypos yPos
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
�� 
chbx���E�O� *j UO�*��/�*�k/��/�k/��/j  �j Okj Y hOa a a mvE` O�h_ a k/_ a m/ *a k/a j/j  .kj Oa  *j UOkj O� *j UOkj Y hOa E` Oa E` O {*a k/a k/a k/a k/a k/a ,[a a l  kh  �a !,E[a k/E` "Z[a l/E` #ZO_ _ #	 _ #a $a %& _ #E` O�E` Y h[OY��Oa &j 'O_ a (,j 'O_ j )Okj Oa *j 'O b*a k/a +k/a k/a k/a ,,[a a l  kh �a (,a - ')�a (,a .l+ /E` Oa 0_ a k/%j 'Y h[OY��Oa 1j 2j Okj [OY�~O*�k/�a 3/�k/�a 4/j )O*a k/a +k/a k/a k/a 5k/j )Okj UU ����    !�������������������������� �""  1 4 2  �##  o f! �$$  1 4 2��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��a %% &����& '��' (����( )����) *����* +����+ ,����, ����
�� 
prcs
�� 
cwin�� 
�� 
splg�� 
�� 
sgrp�� 
�� 
sgrp�� 
�� 
sgrp�� 
�� 
butT
�� 
cobj�� ��]�� nascr  ��ޭ