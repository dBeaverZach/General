PGDMP     ;                    }            postgres    14.13 (Homebrew)    14.13 (Homebrew)     E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    14088    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                zachantunes    false            I           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   zachantunes    false    3656            �            1259    26166    pokemon    TABLE        CREATE TABLE public.pokemon (
    id integer NOT NULL,
    name character varying(50),
    type1 character varying(20),
    type2 character varying(20),
    hp integer,
    attack integer,
    defense integer,
    special_attack integer,
    special_defense integer,
    speed integer
);
    DROP TABLE public.pokemon;
       public         heap    root    false            B          0    26166    pokemon 
   TABLE DATA           v   COPY public.pokemon (id, name, type1, type2, hp, attack, defense, special_attack, special_defense, speed) FROM stdin;
    public          root    false    214   #       �           2606    26170 %   pokemon PK__pokemon__3213E83FFE0C499A 
   CONSTRAINT     e   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT "PK__pokemon__3213E83FFE0C499A" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT "PK__pokemon__3213E83FFE0C499A";
       public            root    false    214            B   @
  x�mX�n�H}n~�~��M�yyZ�fg�qb��KKjK�(RC�q�������=U�M�r �く���r�Tk�vlV�d�^���tR�]}�Z��U��}2%�����<Vy��T�1}�8Jգk��H$�L��c�W�Q���l���������J+e��d������\�`'�L��~ұ����_l��Ms�ۭ*��觎+U:<*��?c��S���a1�TV�-:��Q�?�C����ߗO�Q��6�4��3XQ���D:V�����!�[>Ԩ4V�QILDZku�{�6c�O��q��m���މ)לL�*�Gh��;�i��G��?� ���v?�v���x9�����i�@�f|8`����֝՗n������v�B��0tW�\��]��Б.�
Z�r0�L[�ov�`���r�7�_$�X�Fbf8Zj_��WQ����پ{~}%�(��>�y���_!%L�S�>T�I�>�m;�	�h8�6(q4_����n?Q�J�K����nT��z���İ0ǅ�k\�5c���D��7O��=������rD�K.ٔ�%� ���0��Z���$J*���t�m�=�yXp�K��W�"/�B�����A�	���\��\������W�g�2E8��!M���<��mBP.�f��Sn�g���D�L�GHĻ�=ٺ?��)�v(�H���\`+t����S���-�����,7��\�+�^.i�i��H��K:Pq��To���8>=M5ˇkm�bO	X;V�=�Fg��R�M:�O�+;� -x@H�|0Q�]�Y��
�~���u���֖C�p<�@��ۦ��g�SR���7������X9�\K f��0�	8es��2Op�B@�N���$�$K�]k���˼���p�n�́i]�����6nf����H��
#U������`���	���l���q���I�Щ��w����&A�}5R%E����y3���ys�ɋJ����%J��x�3���l�Ǆ�����JE|+�p�ȁ{��g�n��e,��"Q<L���v�"4�/�BZ+��ڶ�	U	ϕAې9ؽ���ng"#�y�bZaԮ�Nb��m���[$Cp�u*.,a���>F�Uo)��0<w��rm&�(����W�I� d��.F�i�޾����6S>�J&�Ĭw�qbBn�t�q��y�!Ѧ��KF���$�<���;E�o]Ӝ�(�a��2��Uel�H�cݮ�+�0��d��:*48��9�_I[�$i����O�v�u!��%6�8Y���������5�mƍS�:4���l*�4m�����s��I�p;�r����s�.��2�(�i�]{���:$����E]�O��c�!=P><R���鞏T�ھ��@.p�B�U�]C�Ʃ�|�W1���u��n�9�C|�P���
fa�_����E[F��7�r�z����ws���e��hAI�.�|�G���mj|qIC@3�$N����-�LE���zpnI����U���=o�6���k'�૊�"*�����LꔡY��0��JݍsJ�k�T������C3�>7y��!�Wi���|&�f$�e�:8w�ժ9��]w��A:1T̿A�V��hǖl-���PZX�D�O��W�<S*w���|m!��M!�E���n��=���9y��a)�GIT���H��"�zyG>�ET��soW��"��*�b�J}Fy4�X���]e�cC��{�j��3��H&#k1�&�6�z=0�楕��O�ݮ�a�M�^y��(��Щ�G8r���E*+�2�t�ލ��u��Cj$�$���Ѧe�3\V�&٪�\}��C�6n9o�p$L*,R@��Ӿ�Ǽsy8�
��z������&9*�����uOO��A2�sr��"2������T"oK�� ������i��Z�&�L�d2!�[�����a@��)=�������QFt"��֙�Ӷ[�X�R��H�q�{7�z��-D"5O7����HUן�]������-b;uv��E�K+#;P%kI�/���wvy�I��/rs�	��)D�\F�����q��"�ș�R ԡ�jy؜ó�&4�O�ۿ�@�P�)�ٞ;�l
N����������4&W�d�ӹ���:�`���p�"j:nu�_^�]o�a
ڷ'[%y�=�~>�i��Z�ЫN{�����Kw���P%�g�Ӭ"���t�������?^B�r�k��mI�]��=c�������ʓK�O~j����i��!V���?Tji��j�<E5T^}�����iRȹ�Z��G{�zz˜n��i�hy�!�Q�@�n.J.���D+i���~�@�K_{��c�I�?C,5Y���X���z�Py^b����qv8�DTiE��}���	׾5"z��C�6}�O�3p�㎧92�=����ӳe��8L+�΍�Ë�ʥ�8N��m�7�眃|0Þ�
Rg��6���
#Rؗ�1����L]����7M�-����Y������TV����[?04�P�!�﷥�;�c��v	���wQz�*�w��<Њ
�2�Wz�zu瞇�l���E4�z�ŀ����%0�տ��ߢ(�?�v٣     