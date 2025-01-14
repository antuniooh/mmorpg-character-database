PGDMP                          y            MMORPG     13.3 (Ubuntu 13.3-1.pgdg20.04+1)     13.3 (Ubuntu 13.3-1.pgdg20.04+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16657    MMORPG    DATABASE     ]   CREATE DATABASE "MMORPG" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "MMORPG";
                postgres    false            �            1259    16674    aptidoes    TABLE     D  CREATE TABLE public.aptidoes (
    id_aptidao integer NOT NULL,
    determinacao integer NOT NULL,
    carisma integer NOT NULL,
    forca integer NOT NULL,
    constituicao integer NOT NULL,
    destreza integer NOT NULL,
    agilidade integer NOT NULL,
    inteligencia integer NOT NULL,
    percepcao integer NOT NULL
);
    DROP TABLE public.aptidoes;
       public         heap    postgres    false            �            1259    16748    armadura    TABLE     �   CREATE TABLE public.armadura (
    id_item integer NOT NULL,
    bonus_defesa integer NOT NULL,
    material character varying(150) NOT NULL,
    durabilidade integer NOT NULL
);
    DROP TABLE public.armadura;
       public         heap    postgres    false            �            1259    16744 	   armamento    TABLE     �   CREATE TABLE public.armamento (
    id_item integer NOT NULL,
    tipo character varying(150) NOT NULL,
    bonus_armamento integer NOT NULL,
    material character varying(150) NOT NULL,
    durabilidade integer NOT NULL
);
    DROP TABLE public.armamento;
       public         heap    postgres    false            �            1259    16764    armazena    TABLE     �   CREATE TABLE public.armazena (
    id_item integer NOT NULL,
    id_inventario integer NOT NULL,
    quantidade integer NOT NULL
);
    DROP TABLE public.armazena;
       public         heap    postgres    false            �            1259    16706    atributo    TABLE     �   CREATE TABLE public.atributo (
    id_atributo integer NOT NULL,
    pontos integer NOT NULL,
    defesa integer NOT NULL,
    ataque integer NOT NULL,
    vida integer NOT NULL,
    mana integer NOT NULL,
    vigor integer NOT NULL
);
    DROP TABLE public.atributo;
       public         heap    postgres    false            �            1259    16687    classe    TABLE     �   CREATE TABLE public.classe (
    id_classe integer NOT NULL,
    tipo character varying(150) NOT NULL,
    descricao character varying(300) NOT NULL,
    bonus_de_classe integer NOT NULL
);
    DROP TABLE public.classe;
       public         heap    postgres    false            �            1259    16790    combate    TABLE     C   CREATE TABLE public.combate (
    id_interacao integer NOT NULL
);
    DROP TABLE public.combate;
       public         heap    postgres    false            �            1259    16798    comunicacao    TABLE     u   CREATE TABLE public.comunicacao (
    id_interacao integer NOT NULL,
    mensagem character varying(500) NOT NULL
);
    DROP TABLE public.comunicacao;
       public         heap    postgres    false            �            1259    24587    consumivel_ofensivo    TABLE     �   CREATE TABLE public.consumivel_ofensivo (
    id_item integer NOT NULL,
    dano integer NOT NULL,
    tipo_dano character varying(50) NOT NULL,
    duracao integer NOT NULL
);
 '   DROP TABLE public.consumivel_ofensivo;
       public         heap    postgres    false            �            1259    24591    consumivel_suporte    TABLE     �   CREATE TABLE public.consumivel_suporte (
    id_item integer NOT NULL,
    buff integer,
    debuff integer,
    descricao_buf character varying(200),
    descricao_debuff character varying(200),
    duracao integer NOT NULL
);
 &   DROP TABLE public.consumivel_suporte;
       public         heap    postgres    false            �            1259    16757    equipamento_requer_aptidao    TABLE     �   CREATE TABLE public.equipamento_requer_aptidao (
    id_aptidao integer NOT NULL,
    id_equipamento integer NOT NULL,
    id_raca integer NOT NULL,
    id_classe integer NOT NULL,
    nivel integer NOT NULL
);
 .   DROP TABLE public.equipamento_requer_aptidao;
       public         heap    postgres    false            �            1259    16802 
   ganha_item    TABLE     d   CREATE TABLE public.ganha_item (
    id_interacao integer NOT NULL,
    id_item integer NOT NULL
);
    DROP TABLE public.ganha_item;
       public         heap    postgres    false            �            1259    16692 
   habilidade    TABLE     #  CREATE TABLE public.habilidade (
    id_habilidade integer NOT NULL,
    tipo character varying(150) NOT NULL,
    tempo_recarga integer NOT NULL,
    descricao character varying(300) NOT NULL,
    duracao integer NOT NULL,
    tempo_ativacao integer NOT NULL,
    ponto integer NOT NULL
);
    DROP TABLE public.habilidade;
       public         heap    postgres    false            �            1259    16752    habilidade_jogador    TABLE     �   CREATE TABLE public.habilidade_jogador (
    id_habilidade integer NOT NULL,
    id_jogador integer NOT NULL,
    nivel integer NOT NULL
);
 &   DROP TABLE public.habilidade_jogador;
       public         heap    postgres    false            �            1259    16785 	   interacao    TABLE     �   CREATE TABLE public.interacao (
    id_interacao integer NOT NULL,
    local character varying(200) NOT NULL,
    data timestamp with time zone NOT NULL
);
    DROP TABLE public.interacao;
       public         heap    postgres    false            �            1259    16769 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    id_inventario integer NOT NULL,
    capacidade_atual integer NOT NULL,
    capacidade_max integer NOT NULL
);
    DROP TABLE public.inventario;
       public         heap    postgres    false            �            1259    16722    item    TABLE     �   CREATE TABLE public.item (
    id_item integer NOT NULL,
    valor integer NOT NULL,
    raridade integer NOT NULL,
    descricao character varying(300) NOT NULL
);
    DROP TABLE public.item;
       public         heap    postgres    false            �            1259    16715    jogavel    TABLE     �   CREATE TABLE public.jogavel (
    id_jogavel integer NOT NULL,
    id_inventario integer NOT NULL,
    nickname character varying(20) NOT NULL
);
    DROP TABLE public.jogavel;
       public         heap    postgres    false            �            1259    16731    moeda    TABLE     [   CREATE TABLE public.moeda (
    id_item integer NOT NULL,
    id_moeda integer NOT NULL
);
    DROP TABLE public.moeda;
       public         heap    postgres    false            �            1259    16711    nao_jogavel    TABLE     �   CREATE TABLE public.nao_jogavel (
    id_nao_jogavel integer NOT NULL,
    afinidade integer NOT NULL,
    tipo character varying(150) NOT NULL,
    acrescimo_experiencia integer NOT NULL
);
    DROP TABLE public.nao_jogavel;
       public         heap    postgres    false            �            1259    16697 
   personagem    TABLE     :  CREATE TABLE public.personagem (
    id_personagem integer NOT NULL,
    id_raca integer NOT NULL,
    id_classe integer NOT NULL,
    id_atributo integer NOT NULL,
    id_aptidao integer NOT NULL,
    nome character varying(150) NOT NULL,
    genero character varying(150) NOT NULL,
    nivel integer NOT NULL
);
    DROP TABLE public.personagem;
       public         heap    postgres    false            �            1259    16679    raca    TABLE     �   CREATE TABLE public.raca (
    id_raca integer NOT NULL,
    tipo character varying(150) NOT NULL,
    descricao character varying(300) NOT NULL,
    bonus_de_raca integer NOT NULL,
    alinhamento character varying NOT NULL
);
    DROP TABLE public.raca;
       public         heap    postgres    false            �            1259    16779    realiza_interacao    TABLE     �   CREATE TABLE public.realiza_interacao (
    id_persongem_efetua integer NOT NULL,
    id_persongem_efetuado integer NOT NULL,
    id_interacao integer NOT NULL
);
 %   DROP TABLE public.realiza_interacao;
       public         heap    postgres    false            �            1259    16807    recebe_item    TABLE     e   CREATE TABLE public.recebe_item (
    id_interacao integer NOT NULL,
    id_item integer NOT NULL
);
    DROP TABLE public.recebe_item;
       public         heap    postgres    false            �            1259    16774 
   tipo_moeda    TABLE     o   CREATE TABLE public.tipo_moeda (
    id_moeda integer NOT NULL,
    minerio character varying(200) NOT NULL
);
    DROP TABLE public.tipo_moeda;
       public         heap    postgres    false            �            1259    16794    troca    TABLE     A   CREATE TABLE public.troca (
    id_interacao integer NOT NULL
);
    DROP TABLE public.troca;
       public         heap    postgres    false            �            1259    16727 
   variedades    TABLE     k   CREATE TABLE public.variedades (
    id_item integer NOT NULL,
    nome character varying(150) NOT NULL
);
    DROP TABLE public.variedades;
       public         heap    postgres    false            g          0    16674    aptidoes 
   TABLE DATA           �   COPY public.aptidoes (id_aptidao, determinacao, carisma, forca, constituicao, destreza, agilidade, inteligencia, percepcao) FROM stdin;
    public          postgres    false    200   q�       s          0    16748    armadura 
   TABLE DATA           Q   COPY public.armadura (id_item, bonus_defesa, material, durabilidade) FROM stdin;
    public          postgres    false    212   ߣ       r          0    16744 	   armamento 
   TABLE DATA           [   COPY public.armamento (id_item, tipo, bonus_armamento, material, durabilidade) FROM stdin;
    public          postgres    false    211   I�       v          0    16764    armazena 
   TABLE DATA           F   COPY public.armazena (id_item, id_inventario, quantidade) FROM stdin;
    public          postgres    false    215   դ       l          0    16706    atributo 
   TABLE DATA           Z   COPY public.atributo (id_atributo, pontos, defesa, ataque, vida, mana, vigor) FROM stdin;
    public          postgres    false    205   �       i          0    16687    classe 
   TABLE DATA           M   COPY public.classe (id_classe, tipo, descricao, bonus_de_classe) FROM stdin;
    public          postgres    false    202   y�       {          0    16790    combate 
   TABLE DATA           /   COPY public.combate (id_interacao) FROM stdin;
    public          postgres    false    220   ��       }          0    16798    comunicacao 
   TABLE DATA           =   COPY public.comunicacao (id_interacao, mensagem) FROM stdin;
    public          postgres    false    222   ֦       �          0    24587    consumivel_ofensivo 
   TABLE DATA           P   COPY public.consumivel_ofensivo (id_item, dano, tipo_dano, duracao) FROM stdin;
    public          postgres    false    225   8�       �          0    24591    consumivel_suporte 
   TABLE DATA           m   COPY public.consumivel_suporte (id_item, buff, debuff, descricao_buf, descricao_debuff, duracao) FROM stdin;
    public          postgres    false    226   ��       u          0    16757    equipamento_requer_aptidao 
   TABLE DATA           k   COPY public.equipamento_requer_aptidao (id_aptidao, id_equipamento, id_raca, id_classe, nivel) FROM stdin;
    public          postgres    false    214   a�       ~          0    16802 
   ganha_item 
   TABLE DATA           ;   COPY public.ganha_item (id_interacao, id_item) FROM stdin;
    public          postgres    false    223   ��       j          0    16692 
   habilidade 
   TABLE DATA           s   COPY public.habilidade (id_habilidade, tipo, tempo_recarga, descricao, duracao, tempo_ativacao, ponto) FROM stdin;
    public          postgres    false    203   ٨       t          0    16752    habilidade_jogador 
   TABLE DATA           N   COPY public.habilidade_jogador (id_habilidade, id_jogador, nivel) FROM stdin;
    public          postgres    false    213   Щ       z          0    16785 	   interacao 
   TABLE DATA           >   COPY public.interacao (id_interacao, local, data) FROM stdin;
    public          postgres    false    219   �       w          0    16769 
   inventario 
   TABLE DATA           U   COPY public.inventario (id_inventario, capacidade_atual, capacidade_max) FROM stdin;
    public          postgres    false    216   ��       o          0    16722    item 
   TABLE DATA           C   COPY public.item (id_item, valor, raridade, descricao) FROM stdin;
    public          postgres    false    208   Ъ       n          0    16715    jogavel 
   TABLE DATA           F   COPY public.jogavel (id_jogavel, id_inventario, nickname) FROM stdin;
    public          postgres    false    207   ��       q          0    16731    moeda 
   TABLE DATA           2   COPY public.moeda (id_item, id_moeda) FROM stdin;
    public          postgres    false    210   	�       m          0    16711    nao_jogavel 
   TABLE DATA           ]   COPY public.nao_jogavel (id_nao_jogavel, afinidade, tipo, acrescimo_experiencia) FROM stdin;
    public          postgres    false    206   =�       k          0    16697 
   personagem 
   TABLE DATA           u   COPY public.personagem (id_personagem, id_raca, id_classe, id_atributo, id_aptidao, nome, genero, nivel) FROM stdin;
    public          postgres    false    204   ��       h          0    16679    raca 
   TABLE DATA           T   COPY public.raca (id_raca, tipo, descricao, bonus_de_raca, alinhamento) FROM stdin;
    public          postgres    false    201   D�       y          0    16779    realiza_interacao 
   TABLE DATA           e   COPY public.realiza_interacao (id_persongem_efetua, id_persongem_efetuado, id_interacao) FROM stdin;
    public          postgres    false    218   ��                 0    16807    recebe_item 
   TABLE DATA           <   COPY public.recebe_item (id_interacao, id_item) FROM stdin;
    public          postgres    false    224   2�       x          0    16774 
   tipo_moeda 
   TABLE DATA           7   COPY public.tipo_moeda (id_moeda, minerio) FROM stdin;
    public          postgres    false    217   f�       |          0    16794    troca 
   TABLE DATA           -   COPY public.troca (id_interacao) FROM stdin;
    public          postgres    false    221   ��       p          0    16727 
   variedades 
   TABLE DATA           3   COPY public.variedades (id_item, nome) FROM stdin;
    public          postgres    false    209   ְ       �           2606    16678    aptidoes aptidoes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.aptidoes
    ADD CONSTRAINT aptidoes_pkey PRIMARY KEY (id_aptidao);
 @   ALTER TABLE ONLY public.aptidoes DROP CONSTRAINT aptidoes_pkey;
       public            postgres    false    200            �           2606    16710    atributo atributo_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.atributo
    ADD CONSTRAINT atributo_pkey PRIMARY KEY (id_atributo);
 @   ALTER TABLE ONLY public.atributo DROP CONSTRAINT atributo_pkey;
       public            postgres    false    205            �           2606    16691    classe classe_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.classe
    ADD CONSTRAINT classe_pkey PRIMARY KEY (id_classe);
 <   ALTER TABLE ONLY public.classe DROP CONSTRAINT classe_pkey;
       public            postgres    false    202            �           2606    16696    habilidade habilidade_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.habilidade
    ADD CONSTRAINT habilidade_pkey PRIMARY KEY (id_habilidade);
 D   ALTER TABLE ONLY public.habilidade DROP CONSTRAINT habilidade_pkey;
       public            postgres    false    203            �           2606    16789    interacao interacao_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.interacao
    ADD CONSTRAINT interacao_pkey PRIMARY KEY (id_interacao);
 B   ALTER TABLE ONLY public.interacao DROP CONSTRAINT interacao_pkey;
       public            postgres    false    219            �           2606    16773    inventario inventario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_inventario);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public            postgres    false    216            �           2606    16726    item item_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id_item);
 8   ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
       public            postgres    false    208            �           2606    16719    jogavel jogavel_nickname_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.jogavel
    ADD CONSTRAINT jogavel_nickname_key UNIQUE (nickname);
 F   ALTER TABLE ONLY public.jogavel DROP CONSTRAINT jogavel_nickname_key;
       public            postgres    false    207            �           2606    16701    personagem personagem_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.personagem
    ADD CONSTRAINT personagem_pkey PRIMARY KEY (id_personagem);
 D   ALTER TABLE ONLY public.personagem DROP CONSTRAINT personagem_pkey;
       public            postgres    false    204            �           2606    16686    raca raca_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.raca
    ADD CONSTRAINT raca_pkey PRIMARY KEY (id_raca);
 8   ALTER TABLE ONLY public.raca DROP CONSTRAINT raca_pkey;
       public            postgres    false    201            �           2606    16778    tipo_moeda tipo_moeda_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipo_moeda
    ADD CONSTRAINT tipo_moeda_pkey PRIMARY KEY (id_moeda);
 D   ALTER TABLE ONLY public.tipo_moeda DROP CONSTRAINT tipo_moeda_pkey;
       public            postgres    false    217            �           1259    16751    armadura_id_item_idx    INDEX     L   CREATE INDEX armadura_id_item_idx ON public.armadura USING btree (id_item);
 (   DROP INDEX public.armadura_id_item_idx;
       public            postgres    false    212            �           1259    16747    armamento_id_item_idx    INDEX     N   CREATE INDEX armamento_id_item_idx ON public.armamento USING btree (id_item);
 )   DROP INDEX public.armamento_id_item_idx;
       public            postgres    false    211            �           1259    16768    armazena_id_inventario_idx    INDEX     X   CREATE INDEX armazena_id_inventario_idx ON public.armazena USING btree (id_inventario);
 .   DROP INDEX public.armazena_id_inventario_idx;
       public            postgres    false    215            �           1259    16767    armazena_id_item_idx    INDEX     L   CREATE INDEX armazena_id_item_idx ON public.armazena USING btree (id_item);
 (   DROP INDEX public.armazena_id_item_idx;
       public            postgres    false    215            �           1259    16793    combate_id_interacao_idx    INDEX     T   CREATE INDEX combate_id_interacao_idx ON public.combate USING btree (id_interacao);
 ,   DROP INDEX public.combate_id_interacao_idx;
       public            postgres    false    220            �           1259    16801    comunicacao_id_interacao_idx    INDEX     \   CREATE INDEX comunicacao_id_interacao_idx ON public.comunicacao USING btree (id_interacao);
 0   DROP INDEX public.comunicacao_id_interacao_idx;
       public            postgres    false    222            �           1259    24590    consumivel_ofensivo_id_item_idx    INDEX     b   CREATE INDEX consumivel_ofensivo_id_item_idx ON public.consumivel_ofensivo USING btree (id_item);
 3   DROP INDEX public.consumivel_ofensivo_id_item_idx;
       public            postgres    false    225            �           1259    24594    consumivel_suporte_id_item_idx    INDEX     `   CREATE INDEX consumivel_suporte_id_item_idx ON public.consumivel_suporte USING btree (id_item);
 2   DROP INDEX public.consumivel_suporte_id_item_idx;
       public            postgres    false    226            �           1259    16760 )   equipamento_requer_aptidao_id_aptidao_idx    INDEX     v   CREATE INDEX equipamento_requer_aptidao_id_aptidao_idx ON public.equipamento_requer_aptidao USING btree (id_aptidao);
 =   DROP INDEX public.equipamento_requer_aptidao_id_aptidao_idx;
       public            postgres    false    214            �           1259    16763 (   equipamento_requer_aptidao_id_classe_idx    INDEX     t   CREATE INDEX equipamento_requer_aptidao_id_classe_idx ON public.equipamento_requer_aptidao USING btree (id_classe);
 <   DROP INDEX public.equipamento_requer_aptidao_id_classe_idx;
       public            postgres    false    214            �           1259    16761 -   equipamento_requer_aptidao_id_equipamento_idx    INDEX     ~   CREATE INDEX equipamento_requer_aptidao_id_equipamento_idx ON public.equipamento_requer_aptidao USING btree (id_equipamento);
 A   DROP INDEX public.equipamento_requer_aptidao_id_equipamento_idx;
       public            postgres    false    214            �           1259    16762 &   equipamento_requer_aptidao_id_raca_idx    INDEX     p   CREATE INDEX equipamento_requer_aptidao_id_raca_idx ON public.equipamento_requer_aptidao USING btree (id_raca);
 :   DROP INDEX public.equipamento_requer_aptidao_id_raca_idx;
       public            postgres    false    214            �           1259    16805    ganha_item_id_interacao_idx    INDEX     Z   CREATE INDEX ganha_item_id_interacao_idx ON public.ganha_item USING btree (id_interacao);
 /   DROP INDEX public.ganha_item_id_interacao_idx;
       public            postgres    false    223            �           1259    16806    ganha_item_id_item_idx    INDEX     P   CREATE INDEX ganha_item_id_item_idx ON public.ganha_item USING btree (id_item);
 *   DROP INDEX public.ganha_item_id_item_idx;
       public            postgres    false    223            �           1259    16755 $   habilidade_jogador_id_habilidade_idx    INDEX     l   CREATE INDEX habilidade_jogador_id_habilidade_idx ON public.habilidade_jogador USING btree (id_habilidade);
 8   DROP INDEX public.habilidade_jogador_id_habilidade_idx;
       public            postgres    false    213            �           1259    16756 !   habilidade_jogador_id_jogador_idx    INDEX     f   CREATE INDEX habilidade_jogador_id_jogador_idx ON public.habilidade_jogador USING btree (id_jogador);
 5   DROP INDEX public.habilidade_jogador_id_jogador_idx;
       public            postgres    false    213            �           1259    16721    jogavel_id_inventario_idx    INDEX     V   CREATE INDEX jogavel_id_inventario_idx ON public.jogavel USING btree (id_inventario);
 -   DROP INDEX public.jogavel_id_inventario_idx;
       public            postgres    false    207            �           1259    16720    jogavel_id_jogavel_idx    INDEX     P   CREATE INDEX jogavel_id_jogavel_idx ON public.jogavel USING btree (id_jogavel);
 *   DROP INDEX public.jogavel_id_jogavel_idx;
       public            postgres    false    207            �           1259    16734    moeda_id_item_idx    INDEX     F   CREATE INDEX moeda_id_item_idx ON public.moeda USING btree (id_item);
 %   DROP INDEX public.moeda_id_item_idx;
       public            postgres    false    210            �           1259    16735    moeda_id_moeda_idx    INDEX     H   CREATE INDEX moeda_id_moeda_idx ON public.moeda USING btree (id_moeda);
 &   DROP INDEX public.moeda_id_moeda_idx;
       public            postgres    false    210            �           1259    16714    nao_jogavel_id_nao_jogavel_idx    INDEX     `   CREATE INDEX nao_jogavel_id_nao_jogavel_idx ON public.nao_jogavel USING btree (id_nao_jogavel);
 2   DROP INDEX public.nao_jogavel_id_nao_jogavel_idx;
       public            postgres    false    206            �           1259    16705    personagem_id_aptidao_idx    INDEX     V   CREATE INDEX personagem_id_aptidao_idx ON public.personagem USING btree (id_aptidao);
 -   DROP INDEX public.personagem_id_aptidao_idx;
       public            postgres    false    204            �           1259    16704    personagem_id_atributo_idx    INDEX     X   CREATE INDEX personagem_id_atributo_idx ON public.personagem USING btree (id_atributo);
 .   DROP INDEX public.personagem_id_atributo_idx;
       public            postgres    false    204            �           1259    16703    personagem_id_classe_idx    INDEX     T   CREATE INDEX personagem_id_classe_idx ON public.personagem USING btree (id_classe);
 ,   DROP INDEX public.personagem_id_classe_idx;
       public            postgres    false    204            �           1259    16702    personagem_id_raca_idx    INDEX     P   CREATE INDEX personagem_id_raca_idx ON public.personagem USING btree (id_raca);
 *   DROP INDEX public.personagem_id_raca_idx;
       public            postgres    false    204            �           1259    16784 "   realiza_interacao_id_interacao_idx    INDEX     h   CREATE INDEX realiza_interacao_id_interacao_idx ON public.realiza_interacao USING btree (id_interacao);
 6   DROP INDEX public.realiza_interacao_id_interacao_idx;
       public            postgres    false    218            �           1259    16782 )   realiza_interacao_id_persongem_efetua_idx    INDEX     v   CREATE INDEX realiza_interacao_id_persongem_efetua_idx ON public.realiza_interacao USING btree (id_persongem_efetua);
 =   DROP INDEX public.realiza_interacao_id_persongem_efetua_idx;
       public            postgres    false    218            �           1259    16783 +   realiza_interacao_id_persongem_efetuado_idx    INDEX     z   CREATE INDEX realiza_interacao_id_persongem_efetuado_idx ON public.realiza_interacao USING btree (id_persongem_efetuado);
 ?   DROP INDEX public.realiza_interacao_id_persongem_efetuado_idx;
       public            postgres    false    218            �           1259    16810    recebe_item_id_interacao_idx    INDEX     \   CREATE INDEX recebe_item_id_interacao_idx ON public.recebe_item USING btree (id_interacao);
 0   DROP INDEX public.recebe_item_id_interacao_idx;
       public            postgres    false    224            �           1259    16811    recebe_item_id_item_idx    INDEX     R   CREATE INDEX recebe_item_id_item_idx ON public.recebe_item USING btree (id_item);
 +   DROP INDEX public.recebe_item_id_item_idx;
       public            postgres    false    224            �           1259    16797    troca_id_interacao_idx    INDEX     P   CREATE INDEX troca_id_interacao_idx ON public.troca USING btree (id_interacao);
 *   DROP INDEX public.troca_id_interacao_idx;
       public            postgres    false    221            �           1259    16730    variedades_id_item_idx    INDEX     P   CREATE INDEX variedades_id_item_idx ON public.variedades USING btree (id_item);
 *   DROP INDEX public.variedades_id_item_idx;
       public            postgres    false    209            �           2606    16872    armadura fk_armadura__id_item    FK CONSTRAINT     �   ALTER TABLE ONLY public.armadura
    ADD CONSTRAINT fk_armadura__id_item FOREIGN KEY (id_item) REFERENCES public.item(id_item);
 G   ALTER TABLE ONLY public.armadura DROP CONSTRAINT fk_armadura__id_item;
       public          postgres    false    212    208    2983            �           2606    16867    armamento fk_armamento__id_item    FK CONSTRAINT     �   ALTER TABLE ONLY public.armamento
    ADD CONSTRAINT fk_armamento__id_item FOREIGN KEY (id_item) REFERENCES public.item(id_item);
 I   ALTER TABLE ONLY public.armamento DROP CONSTRAINT fk_armamento__id_item;
       public          postgres    false    208    2983    211            �           2606    16907 #   armazena fk_armazena__id_inventario    FK CONSTRAINT     �   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT fk_armazena__id_inventario FOREIGN KEY (id_inventario) REFERENCES public.inventario(id_inventario);
 M   ALTER TABLE ONLY public.armazena DROP CONSTRAINT fk_armazena__id_inventario;
       public          postgres    false    216    215    2998            �           2606    16902    armazena fk_armazena__id_item    FK CONSTRAINT     �   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT fk_armazena__id_item FOREIGN KEY (id_item) REFERENCES public.item(id_item);
 G   ALTER TABLE ONLY public.armazena DROP CONSTRAINT fk_armazena__id_item;
       public          postgres    false    208    215    2983            �           2606    16927     combate fk_combate__id_interacao    FK CONSTRAINT     �   ALTER TABLE ONLY public.combate
    ADD CONSTRAINT fk_combate__id_interacao FOREIGN KEY (id_interacao) REFERENCES public.interacao(id_interacao);
 J   ALTER TABLE ONLY public.combate DROP CONSTRAINT fk_combate__id_interacao;
       public          postgres    false    219    220    3005            �           2606    16937 (   comunicacao fk_comunicacao__id_interacao    FK CONSTRAINT     �   ALTER TABLE ONLY public.comunicacao
    ADD CONSTRAINT fk_comunicacao__id_interacao FOREIGN KEY (id_interacao) REFERENCES public.interacao(id_interacao);
 R   ALTER TABLE ONLY public.comunicacao DROP CONSTRAINT fk_comunicacao__id_interacao;
       public          postgres    false    222    3005    219            �           2606    24595 3   consumivel_ofensivo fk_consumivel_ofensivo__id_item    FK CONSTRAINT     �   ALTER TABLE ONLY public.consumivel_ofensivo
    ADD CONSTRAINT fk_consumivel_ofensivo__id_item FOREIGN KEY (id_item) REFERENCES public.item(id_item);
 ]   ALTER TABLE ONLY public.consumivel_ofensivo DROP CONSTRAINT fk_consumivel_ofensivo__id_item;
       public          postgres    false    225    2983    208            �           2606    24600 1   consumivel_suporte fk_consumivel_suporte__id_item    FK CONSTRAINT     �   ALTER TABLE ONLY public.consumivel_suporte
    ADD CONSTRAINT fk_consumivel_suporte__id_item FOREIGN KEY (id_item) REFERENCES public.item(id_item);
 [   ALTER TABLE ONLY public.consumivel_suporte DROP CONSTRAINT fk_consumivel_suporte__id_item;
       public          postgres    false    208    226    2983            �           2606    16887 D   equipamento_requer_aptidao fk_equipamento_requer_aptidao__id_aptidao    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipamento_requer_aptidao
    ADD CONSTRAINT fk_equipamento_requer_aptidao__id_aptidao FOREIGN KEY (id_aptidao) REFERENCES public.aptidoes(id_aptidao);
 n   ALTER TABLE ONLY public.equipamento_requer_aptidao DROP CONSTRAINT fk_equipamento_requer_aptidao__id_aptidao;
       public          postgres    false    200    214    2962            �           2606    16897 C   equipamento_requer_aptidao fk_equipamento_requer_aptidao__id_classe    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipamento_requer_aptidao
    ADD CONSTRAINT fk_equipamento_requer_aptidao__id_classe FOREIGN KEY (id_classe) REFERENCES public.classe(id_classe);
 m   ALTER TABLE ONLY public.equipamento_requer_aptidao DROP CONSTRAINT fk_equipamento_requer_aptidao__id_classe;
       public          postgres    false    2966    214    202            �           2606    16892 A   equipamento_requer_aptidao fk_equipamento_requer_aptidao__id_raca    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipamento_requer_aptidao
    ADD CONSTRAINT fk_equipamento_requer_aptidao__id_raca FOREIGN KEY (id_raca) REFERENCES public.raca(id_raca);
 k   ALTER TABLE ONLY public.equipamento_requer_aptidao DROP CONSTRAINT fk_equipamento_requer_aptidao__id_raca;
       public          postgres    false    201    214    2964            �           2606    16942 &   ganha_item fk_ganha_item__id_interacao    FK CONSTRAINT     �   ALTER TABLE ONLY public.ganha_item
    ADD CONSTRAINT fk_ganha_item__id_interacao FOREIGN KEY (id_interacao) REFERENCES public.interacao(id_interacao);
 P   ALTER TABLE ONLY public.ganha_item DROP CONSTRAINT fk_ganha_item__id_interacao;
       public          postgres    false    223    219    3005            �           2606    16947 !   ganha_item fk_ganha_item__id_item    FK CONSTRAINT     �   ALTER TABLE ONLY public.ganha_item
    ADD CONSTRAINT fk_ganha_item__id_item FOREIGN KEY (id_item) REFERENCES public.item(id_item);
 K   ALTER TABLE ONLY public.ganha_item DROP CONSTRAINT fk_ganha_item__id_item;
       public          postgres    false    208    223    2983            �           2606    16877 7   habilidade_jogador fk_habilidade_jogador__id_habilidade    FK CONSTRAINT     �   ALTER TABLE ONLY public.habilidade_jogador
    ADD CONSTRAINT fk_habilidade_jogador__id_habilidade FOREIGN KEY (id_habilidade) REFERENCES public.habilidade(id_habilidade);
 a   ALTER TABLE ONLY public.habilidade_jogador DROP CONSTRAINT fk_habilidade_jogador__id_habilidade;
       public          postgres    false    2968    213    203            �           2606    16882 4   habilidade_jogador fk_habilidade_jogador__id_jogador    FK CONSTRAINT     �   ALTER TABLE ONLY public.habilidade_jogador
    ADD CONSTRAINT fk_habilidade_jogador__id_jogador FOREIGN KEY (id_jogador) REFERENCES public.personagem(id_personagem);
 ^   ALTER TABLE ONLY public.habilidade_jogador DROP CONSTRAINT fk_habilidade_jogador__id_jogador;
       public          postgres    false    204    213    2974            �           2606    16837    jogavel fk_jogavel__id_jogavel    FK CONSTRAINT     �   ALTER TABLE ONLY public.jogavel
    ADD CONSTRAINT fk_jogavel__id_jogavel FOREIGN KEY (id_jogavel) REFERENCES public.personagem(id_personagem);
 H   ALTER TABLE ONLY public.jogavel DROP CONSTRAINT fk_jogavel__id_jogavel;
       public          postgres    false    207    204    2974            �           2606    16847    moeda fk_moeda__id_item    FK CONSTRAINT     z   ALTER TABLE ONLY public.moeda
    ADD CONSTRAINT fk_moeda__id_item FOREIGN KEY (id_item) REFERENCES public.item(id_item);
 A   ALTER TABLE ONLY public.moeda DROP CONSTRAINT fk_moeda__id_item;
       public          postgres    false    210    208    2983            �           2606    16852    moeda fk_moeda__id_moeda    FK CONSTRAINT     �   ALTER TABLE ONLY public.moeda
    ADD CONSTRAINT fk_moeda__id_moeda FOREIGN KEY (id_moeda) REFERENCES public.tipo_moeda(id_moeda);
 B   ALTER TABLE ONLY public.moeda DROP CONSTRAINT fk_moeda__id_moeda;
       public          postgres    false    217    210    3000            �           2606    16832 *   nao_jogavel fk_nao_jogavel__id_nao_jogavel    FK CONSTRAINT     �   ALTER TABLE ONLY public.nao_jogavel
    ADD CONSTRAINT fk_nao_jogavel__id_nao_jogavel FOREIGN KEY (id_nao_jogavel) REFERENCES public.personagem(id_personagem);
 T   ALTER TABLE ONLY public.nao_jogavel DROP CONSTRAINT fk_nao_jogavel__id_nao_jogavel;
       public          postgres    false    206    2974    204            �           2606    16827 $   personagem fk_personagem__id_aptidao    FK CONSTRAINT     �   ALTER TABLE ONLY public.personagem
    ADD CONSTRAINT fk_personagem__id_aptidao FOREIGN KEY (id_aptidao) REFERENCES public.aptidoes(id_aptidao);
 N   ALTER TABLE ONLY public.personagem DROP CONSTRAINT fk_personagem__id_aptidao;
       public          postgres    false    2962    200    204            �           2606    16822 %   personagem fk_personagem__id_atributo    FK CONSTRAINT     �   ALTER TABLE ONLY public.personagem
    ADD CONSTRAINT fk_personagem__id_atributo FOREIGN KEY (id_atributo) REFERENCES public.atributo(id_atributo);
 O   ALTER TABLE ONLY public.personagem DROP CONSTRAINT fk_personagem__id_atributo;
       public          postgres    false    205    2976    204            �           2606    16817 #   personagem fk_personagem__id_classe    FK CONSTRAINT     �   ALTER TABLE ONLY public.personagem
    ADD CONSTRAINT fk_personagem__id_classe FOREIGN KEY (id_classe) REFERENCES public.classe(id_classe);
 M   ALTER TABLE ONLY public.personagem DROP CONSTRAINT fk_personagem__id_classe;
       public          postgres    false    202    204    2966            �           2606    16812 !   personagem fk_personagem__id_raca    FK CONSTRAINT     �   ALTER TABLE ONLY public.personagem
    ADD CONSTRAINT fk_personagem__id_raca FOREIGN KEY (id_raca) REFERENCES public.raca(id_raca);
 K   ALTER TABLE ONLY public.personagem DROP CONSTRAINT fk_personagem__id_raca;
       public          postgres    false    201    2964    204            �           2606    16922 4   realiza_interacao fk_realiza_interacao__id_interacao    FK CONSTRAINT     �   ALTER TABLE ONLY public.realiza_interacao
    ADD CONSTRAINT fk_realiza_interacao__id_interacao FOREIGN KEY (id_interacao) REFERENCES public.interacao(id_interacao);
 ^   ALTER TABLE ONLY public.realiza_interacao DROP CONSTRAINT fk_realiza_interacao__id_interacao;
       public          postgres    false    3005    219    218            �           2606    16912 ;   realiza_interacao fk_realiza_interacao__id_persongem_efetua    FK CONSTRAINT     �   ALTER TABLE ONLY public.realiza_interacao
    ADD CONSTRAINT fk_realiza_interacao__id_persongem_efetua FOREIGN KEY (id_persongem_efetua) REFERENCES public.personagem(id_personagem);
 e   ALTER TABLE ONLY public.realiza_interacao DROP CONSTRAINT fk_realiza_interacao__id_persongem_efetua;
       public          postgres    false    218    2974    204            �           2606    16917 =   realiza_interacao fk_realiza_interacao__id_persongem_efetuado    FK CONSTRAINT     �   ALTER TABLE ONLY public.realiza_interacao
    ADD CONSTRAINT fk_realiza_interacao__id_persongem_efetuado FOREIGN KEY (id_persongem_efetuado) REFERENCES public.personagem(id_personagem);
 g   ALTER TABLE ONLY public.realiza_interacao DROP CONSTRAINT fk_realiza_interacao__id_persongem_efetuado;
       public          postgres    false    2974    204    218            �           2606    16952 (   recebe_item fk_recebe_item__id_interacao    FK CONSTRAINT     �   ALTER TABLE ONLY public.recebe_item
    ADD CONSTRAINT fk_recebe_item__id_interacao FOREIGN KEY (id_interacao) REFERENCES public.interacao(id_interacao);
 R   ALTER TABLE ONLY public.recebe_item DROP CONSTRAINT fk_recebe_item__id_interacao;
       public          postgres    false    3005    219    224            �           2606    16957 #   recebe_item fk_recebe_item__id_item    FK CONSTRAINT     �   ALTER TABLE ONLY public.recebe_item
    ADD CONSTRAINT fk_recebe_item__id_item FOREIGN KEY (id_item) REFERENCES public.item(id_item);
 M   ALTER TABLE ONLY public.recebe_item DROP CONSTRAINT fk_recebe_item__id_item;
       public          postgres    false    224    208    2983            �           2606    16932    troca fk_troca__id_interacao    FK CONSTRAINT     �   ALTER TABLE ONLY public.troca
    ADD CONSTRAINT fk_troca__id_interacao FOREIGN KEY (id_interacao) REFERENCES public.interacao(id_interacao);
 F   ALTER TABLE ONLY public.troca DROP CONSTRAINT fk_troca__id_interacao;
       public          postgres    false    221    3005    219            �           2606    16842 !   variedades fk_variedades__id_item    FK CONSTRAINT     �   ALTER TABLE ONLY public.variedades
    ADD CONSTRAINT fk_variedades__id_item FOREIGN KEY (id_item) REFERENCES public.item(id_item);
 K   ALTER TABLE ONLY public.variedades DROP CONSTRAINT fk_variedades__id_item;
       public          postgres    false    2983    209    208            g   ^   x�5M��0z�az��iw��sI��Ā�0� ��_�[HY[���lJ�4L�T�Y_�μ>74mn?/En+�L�OjDi���^X�[���9��~d      s   Z   x�3�440��L*J����420�2�45�tK-*�2��9-8��K�<CS.N��BjNZfr>�9P�)H���� \��f�H3c���� �A�E      r   |   x��=�0���S��	D-#T��2���+�A.�W��%��~�����,�8�YE�q��6�LO�ĸH�bދL[��\��kL^�3�������u0E�~�Q珯���k������~��*���      v   -   x�3�4�4�2�4�4�2�4�4�2�4�4�2�4���l� ��h      l   W   x�%���P�O1��C�K��#��n�(4`$���Y�b����l�C�0(5���m�ZE�r�9u�0��bE/J�n��d�G����|�X      i   #  x�%P;N1��S��"�!*�h��y��dGZ�,c;@n��s�b�Iei����d5�)r���z�2S���qA������T"h��HtyC1$w}�W����	�
���ҖM��&;�4�Dɲ}�Y�O�`��� �Mp�[�vOV$�)'�lAk� ���|>�-��z�jMgY�� r1>�ŭ44�V�0I�$�����A&u4��K߰�o�i�e%4k�@�<���o�+v�%�ӱ�[͈�T3+A*�ǌ��<�\�Z�-WW/��c�6�����ϥ��.Z��      {      x�3�2�2�2�2�2������ W	       }   R   x�3�t��UH�L�2�K��/VH,ILN,�2��MUH*MKKT(:�� 3%���"-�(7����(Q��О�pԐAlH� ���      �   U   x�3�4��;�8_!9��8Q!%1/��Ѐ����1�����������P����i�e�E�	�)������|N3.�aoa� Ej`�      �   �   x��1�0k�פEF(JD�hV�K�'98��C�1���7���v�����*��)y^ P��0�6!:Y����q�YO;U��!��g���g�7��T��0߮���^��G� �dEk��/�y���e�1"R� ��&:�0K�1��E����y�\��ڬ5�5�j�n���P�o      u   4   x���1  ��CZ�����Fn>�!�#J�%N��.���4��73M      ~   $   x�3�4�2�4�2�4�2�4�2�4�2 �=... ��4      j   �   x��бN�0��y
? ���02����ɥ$qIb��A<H_���@7x�O�=�9ƽ�r�	�ଵ(=�gO���$F+�p.�Z<^�2
Ҭ��j�T	�V�`�`׀ތp'��_��	��QB�p��y�#Z�y�Z?.蓏�I�86qE}������T������a��ԛkx�ȇ��a<1�X�R3y٪q���%s�7�/�����ס��g-�f�Ѿ��Sg���ގ�      t   1   x���A  ��E����u��;Bl�X�M�j�z<��o�Y�.B%*      z   l   x�3�t,��L�4204�5��5�T00�#]c.#�tUbT�D�� Eژ�/�� '5#5�����E�	�_~bIi.H�d����)�kQf>X��.�Xa����� �V#j      w   3   x�ʱ  ��9!��s��@h��b�)t�F��3t�y���M      o   �  x�]R���0���p���疃�B���Q��|�=�����(N<G^��fwu�Y���o�W}�z��Em��85eoC"�Iov��B�z�w�fP�N�W�2�#�N����.$$!m(p��H�3��y���ujTߞyN4kO��S�~<qA�I���EG��v�y�\т�8�� ��#w�x2�fhZ�_�'���zs��F*�Ʈ;���7�C�]L6L@+�[�{����N��W�.��V�EٗY\:j0�+��o�c@�L���G˙�SF���!�Ǿ�����H�m�cwey�y-�0�A9��N��݊�L��淚���:<܆A��g� ����&�$%�uw�[RD�����!2�/���	���斌eƶ���z�X����d�ˊ�ʲ�kZ�`��񄓒�)�[�<T֒�f%^�y�\uT���c�4����      n   Y   x���	�0��)�@hm'p	/	D)4���:���sp�t-��}ljJoʩ�lŨC��p� Ex�\w����#��̏�@SKDnOK      q   $   x�3�4�2�4�2�4�2�4�2�4�2 �=... ��4      m   `   x�3�47�t,*I->�8�����ˈ�Ҁӥ(1(��^�ZT��Y�4�2�4��+H�42�2�4�*�M��1�4��L+�L�|�QSG��1z\\\ �D�^      k   �   x�M��
!E�Ϗ	g�~�V���s�AP����g� g{8�
t��nl�����;��z	�l���yGAg
p��ş1�H�h���>�!�p6C�d�)>ڒ���`��Y���r��T�ee�J�7���zb�}��8�      h   �  x�]�1n1�k�)� O��
J@(4!-�<�<�%۳ۋ�*=���QP���&���&��H��h�������X#&6��ʐ�̰Pά{D�'\J;�����o�`<x�9�JE�7	���Y�5es�7��a x�q87��Q�FXxe���e��ƀ����
��~�41$=Z�ة��#
Q,(�Nh4g{�۟ҩ��Zl�*�ZM�Tw����:��B8
�T�üSFa5�*���nu%�$p�ʐ�Q�x2�`�0(�/Hd5�v�о�.s4o�jiڈWX�W�2q$�VS%q��[����46��X5���a�:�տV;��He��F+D���lk`�A��h.^��6�<��|��� �B6��J��Jr�v���b�\_��%�C�O�1�xv:��8����E      y   -   x�3�4�4�2�4�4�2�4�4�2�4�4�2��pA�=... ��S         $   x�3�4�2�4�2�4�2�4�2�4�2 �=... ��4      x   6   x�3�t�O*J�2�t*�ϫJ�2��/-��2�(J,I�2�,,M,*������ 17�      |      x�3�2�2�2�2�2������ W	       p   ~   x�����0��s<�'@*? '$؀˧:AFn,9�@�Q��H������;K���pڧ�Z���h���v�tL� s�-WY>�`q��k�:��r�
�S�c�
�ZrT�����N�Fn�_��� �.�     