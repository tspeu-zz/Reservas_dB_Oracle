 
--------------------------------------------------------------------
prompt  APPLICATION 105 - GESTION RESERVAS
--
-- Application Export:
--   Application:     105
--   Name:            GESTION RESERVAS
--   Date and Time:   18:10 Lunes Mayo 30, 2015
--   Exported By:     GESTION_RESERVAS_DESA
--   Flashback:       0
--   Version: 2.1.0.00.39
 
-- Import:
--   Using application application builder
--   or
--   Using sqlplus as the Oracle user: FLOWS_020100
 
-- Application Statistics:
--   Pages:                13
--     Items:              40
--     Computations:        1
--     Validations:        19
--     Processes:          29
--     Regions:            20
--     Buttons:            34
--   Shared Components
--     Breadcrumbs:         1
--        Entries           1
--     Items:               1
--     Computations:        0
--     Processes:           0
--     Parent Tabs:         0
--     Tab Sets:            1
--        Tabs:             7
--     NavBars:             1
--     Lists:               0
--     Shortcuts:           2
--     Themes:              1
--     Templates:
--        Page:             9
--        List:            14
--        Report:           7
--        Label:            5
--        Region:          22
--     Messages:            0
--     Build Options:       0
 
 
set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to sqlplus as the owner (parsing schema) of the application or as the product schema.
  wwv_flow_api.set_security_group_id(p_security_group_id=>8545522868426543);
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'es'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2005.05.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := 105;
   wwv_flow_api.g_id_offset := 0;
null;
 
end;
/

 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(105);
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(105);
null;
 
end;
/

 
begin
 
wwv_flow_api.create_flow(
  p_id    => 105,
  p_display_id=> 105,
  p_owner => 'GESTION_RESERVAS_DESA',
  p_name  => 'GESTION RESERVAS',
  p_alias => 'F105',
  p_page_view_logging => 'YES',
  p_default_page_template=> 8901806046269980 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 8901910442269980 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 8903509255269988 + wwv_flow_api.g_id_offset,
  p_error_template    => 8901806046269980 + wwv_flow_api.g_id_offset,
  p_checksum_salt_last_reset => '20110530180956',
  p_home_link         => 'f?p=&APP_ID.:1:&SESSION.',
  p_box_width         => '98%',
  p_flow_language     => 'es',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_flow_image_prefix => '/i/',
  p_documentation_banner=> '',
  p_authentication    => 'CUSTOM2',
  p_login_url         => '',
  p_logout_url        => 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_logo_image => '#WORKSPACE_IMAGES#logo.jpg',
  p_logo_image_attributes => 'width="307" height="107" alt="Logotipo de la Compañía"',
  p_public_url_prefix => '',
  p_public_user       => '',
  p_dbauth_url_prefix => '',
  p_proxy_server      => '',
  p_cust_authentication_process=> '.'||to_char(9274304547088742 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version      => 'versión 1.0',
  p_flow_status       => 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'Esta aplicación no está disponible en este momento.',
  p_build_status      => 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd               => '',
  p_theme_id => 6,
  p_default_label_template => 8907201370269992 + wwv_flow_api.g_id_offset,
  p_default_report_template => 8906204756269992 + wwv_flow_api.g_id_offset,
  p_default_list_template => 8905616786269991 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 8907401052269994 + wwv_flow_api.g_id_offset,
  p_default_button_template => 8902417786269984 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 8904508307269989 + wwv_flow_api.g_id_offset,
  p_default_form_template => 8904204702269989 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 8904614182269989 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 8903509255269988 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>8903509255269988 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 8903731797269988 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 8903929852269988 + wwv_flow_api.g_id_offset,
  p_substitution_string_01 => '#LOGO#',
  p_substitution_value_01  => '/i/logo.jpg',
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110530180956',
  p_required_roles             => wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

---------------------------------------
prompt  ...AUTHORIZATION SCHEMES
--
 
begin
 
wwv_flow_api.create_security_scheme(
  p_id => 9287807438373402 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_name=>'usuario_administrador',
  p_scheme_type=>'EXISTS',
  p_scheme=>'select usuario'||chr(10)||
'  from usuarios,'||chr(10)||
'       roles_usuario'||chr(10)||
'  where usuarios.id_rol = roles_usuario.id_rol'||chr(10)||
'    and usuario = :APP_USER'||chr(10)||
'    and rol = ''ADMINISTRADOR''',
  p_caching=>'BY_USER_BY_PAGE_VIEW',
  p_error_message=>'No está autorizado a ver esta página');
 
 
end;
/

--
prompt  ...Navigation Bar Entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id             => 8908628490269997 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_icon_sequence  => 200,
  p_icon_image     => '',
  p_icon_subtext   => 'Salir',
  p_icon_target    => '&LOGOUT_URL.',
  p_icon_image_alt => 'Desconectar',
  p_icon_height    => 32,
  p_icon_width     => 32,
  p_icon_height2   => 24,
  p_icon_width2    => 24,
  p_icon_bar_disp_cond      => '',
  p_icon_bar_disp_cond_type => 'CURRENT_LOOK_IS_1',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

---------------------------------------
prompt  ...Application Level Processes
--
---------------------------------------
prompt  ...Application Level Items
--
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 8912209345289836 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FSP_AFTER_LOGIN_URL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_item_comment=> 'Used by Custom2 authentication for deep linking support');
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Level Computations
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Tabs
--
 
begin
 
wwv_flow_api.create_tab (
  p_id=> 8910006301270000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'PRESENTACION',
  p_tab_text => 'Presentación',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 8928801593385633 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 30,
  p_tab_name=> 'Departamentos',
  p_tab_text => 'Departamentos',
  p_tab_step => 4,
  p_tab_also_current_for_pages => '5',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 8968614336656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 50,
  p_tab_name=> 'EMPLEADOS',
  p_tab_text => 'Empleados',
  p_tab_step => 8,
  p_tab_also_current_for_pages => '9',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 9020417878283169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 60,
  p_tab_name=> 'Usuarios',
  p_tab_text => 'Usuarios',
  p_tab_step => 11,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_tab_plsql_condition=>'RETURN (rol_usuario(:APP_USER) = ''ADMINISTRADOR'');',
  p_display_condition_type=> 'FUNCTION_BODY',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 9139825990695557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 70,
  p_tab_name=> 'Recursos',
  p_tab_text => 'Recursos',
  p_tab_step => 13,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 9150007260013217 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 80,
  p_tab_name=> 'Calendario',
  p_tab_text => 'Calendario',
  p_tab_step => 20,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 9197530984521068 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 90,
  p_tab_name=> 'Reservas',
  p_tab_text => 'Reservas',
  p_tab_step => 21,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
 
end;
/

---------------------------------------
prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Level Lists of Values
--
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 8943016935415059 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'DEPARTAMENTOS',
  p_lov_query=> 'select departamento d, id_departamento id'||chr(10)||
'from   departamentos'||chr(10)||
'order by 1');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 9024321048353831 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'EMPLEADOS',
  p_lov_query=> 'SELECT nombre_completo(nombre, apellido1, apellido2) e'||chr(10)||
'      ,id_empleado i'||chr(10)||
'  FROM empleados'||chr(10)||
'ORDER BY e');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 8945206808431094 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'EMPLEADOS_DEPARTAMENTO',
  p_lov_query=> 'SELECT apellido1 || '' '' || apellido2 || '', '' || nombre e'||chr(10)||
'      ,id_empleado i'||chr(10)||
'  FROM empleados'||chr(10)||
' WHERE id_departamento = :P5_ID_DEPARTAMENTO'||chr(10)||
'ORDER BY e');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 9366429185041208 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'RECURSOS',
  p_lov_query=> 'SELECT RECURSO D, ID_RECURSO R FROM RECURSOS');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 9004707692160775 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'ROLES',
  p_lov_query=> 'select rol d, id_rol r'||chr(10)||
'from   roles_usuario'||chr(10)||
'order by 1');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 9367713695093526 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'USUARIOS',
  p_lov_query=> 'SELECT USUARIO || '' - '' || APELLIDO1 || '' '' || APELLIDO2 || '', '' || NOMBRE D, USUARIO R '||chr(10)||
'  FROM USUARIOS, '||chr(10)||
'       EMPLEADOS'||chr(10)||
' WHERE EMPLEADOS.ID_EMPLEADO = USUARIOS.ID_EMPLEADO'||chr(10)||
'   AND EMPLEADOS.FECHA_BAJA IS NULL'||chr(10)||
' ORDER BY 1');
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Trees
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Level Lists of Values Entries
--
---------------------------------------
prompt  ...Page Groups
--
 
begin
 
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 1: Presentación
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 1,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Presentación',
  p_alias  => 'PRESENTACION',
  p_step_title=> 'PRESENTACIÓN',
  p_step_sub_title => 'Página 1',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => 8901806046269980+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110530072144',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>1,p_text=>h);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 9396414248335976 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Datos de conexión',
  p_plug_template=> 8904204702269989+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 5,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_03',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'valign=top',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'declare'||chr(10)||
'texto varchar2(255);'||chr(10)||
'	'||chr(10)||
'begin'||chr(10)||
'     texto := ''<br><br>Gestión de Reservas. Aplicación realizada como Proyecto  Final del Módulo Desarrollo de Aplicaciones en Entornos de Cuarta Generación y con Herramientas Case (4GL)'';'||chr(10)||
'    htp.p(texto);'||chr(10)||
'	  '||chr(10)||
'    texto := ''<br><br>Mediante la aplicación se pueden gestionar las reservas de recursos de una empresa.'';'||chr(10)||
'    htp.p(texto);'||chr(10)||
'	 '||chr(10)||
'    texto := ';

s:=s||'''<br><br>No todos los empleados de la empresa pueden realizar reservas, para ello es necesario que previamente sean dados de alta como usuarios de la misma.'';'||chr(10)||
'    htp.p(texto);'||chr(10)||
'	 '||chr(10)||
'    texto := ''<br><br>Utilice las pestañas situadas en la parte superior derecha de la página para moverse por las diferentes opciones de la aplicación.'';'||chr(10)||
'    htp.p(texto);'||chr(10)||
''||chr(10)||
'    texto := ''<br><br><b>Bienvenido '' ||';

s:=s||' :P1_EMPLEADO;'||chr(10)||
'    texto := texto || '' usted se ha identificado con el usuario '' || :APP_USER || '' cuyo rol es de '' || :P1_ROL;'||chr(10)||
'    '||chr(10)||
'    if (:P1_ROL = ''ADMINISTRADOR'') then'||chr(10)||
'       texto := texto || '' por lo que el acceso a la aplicación es total.'';'||chr(10)||
'       htp.p(texto);'||chr(10)||
'    else '||chr(10)||
'      texto := texto || '' por lo que el acceso a algunas partes, reservadas solo a los administradores de la apli';

s:=s||'cación, le será denegado.'';'||chr(10)||
'    htp.p(texto);'||chr(10)||
'   end if;'||chr(10)||
'end;';

wwv_flow_api.create_page_plug (
  p_id=> 9431721361801670 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'PRESENTACION',
  p_plug_template=> 0,
  p_plug_display_sequence=> 25,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'BEFORE_BOX_BODY',
  p_plug_source  => s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9383620454110578 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_USUARIO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 9396414248335976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Usuario:  ',
  p_source=>'APP_USER',
  p_source_type=> 'ITEM',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template => 8907109297269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9384817169147544 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_ROL',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 9396414248335976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Rol:    ',
  p_source=>'SELECT ROL'||chr(10)||
'  FROM ROLES_USUARIO R,'||chr(10)||
'       USUARIOS U'||chr(10)||
' WHERE U.USUARIO = :APP_USER'||chr(10)||
'   AND U.ID_ROL = R.ID_ROL',
  p_source_type=> 'QUERY',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template => 8907109297269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9385618254176193 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_ID_DEPARTAMENTO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 9396414248335976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Id Departamento',
  p_source=>'SELECT ID_DEPARTAMENTO'||chr(10)||
'  FROM EMPLEADOS E,'||chr(10)||
'       USUARIOS U'||chr(10)||
' WHERE E.ID_EMPLEADO = U.ID_EMPLEADO'||chr(10)||
'   AND U.USUARIO = :APP_USER',
  p_source_type=> 'QUERY',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9386520940195938 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_DEPARTAMENTO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 9396414248335976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Departamento:',
  p_source=>'SELECT DEPARTAMENTO'||chr(10)||
'  FROM DEPARTAMENTOS'||chr(10)||
' WHERE ID_DEPARTAMENTO = :P1_ID_DEPARTAMENTO',
  p_source_type=> 'QUERY',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template => 8907109297269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9387827090216637 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_ID_EMPLEADO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 9396414248335976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Id Empleado',
  p_source=>'SELECT ID_EMPLEADO'||chr(10)||
'  FROM USUARIOS'||chr(10)||
' WHERE USUARIO = :APP_USER',
  p_source_type=> 'QUERY',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907109297269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9388812807231402 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_EMPLEADO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 9396414248335976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Empleado:',
  p_source=>'SELECT (NOMBRE || '' '' || APELLIDO1 || '' '' || APELLIDO2)'||chr(10)||
'  FROM EMPLEADOS'||chr(10)||
' WHERE ID_EMPLEADO = :P1_ID_EMPLEADO',
  p_source_type=> 'QUERY',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 80,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 2,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template => 8907109297269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>10127326084912055 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_PASSWORD',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 9396414248335976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'BEGIN'||chr(10)||
'SELECT ID_EMPLEADO'||chr(10)||
'  INTO :P1_ID_EMPLEADO'||chr(10)||
'  FROM USUARIOS'||chr(10)||
' WHERE USUARIO = :APP_USER;'||chr(10)||
''||chr(10)||
'SELECT (NOMBRE || '' '' || APELLIDO1 || '' '' || APELLIDO2)'||chr(10)||
'  INTO :P1_EMPLEADO'||chr(10)||
'  FROM EMPLEADOS'||chr(10)||
' WHERE ID_EMPLEADO = :P1_ID_EMPLEADO;'||chr(10)||
''||chr(10)||
''||chr(10)||
'SELECT ROL'||chr(10)||
'  INTO :P1_ROL'||chr(10)||
'  FROM ROLES_USUARIO R,'||chr(10)||
'       USUARIOS U'||chr(10)||
' WHERE U.USUARIO = :APP_USER'||chr(10)||
'   AND U.ID_ROL = R.ID_ROL;'||chr(10)||
''||chr(10)||
'SELECT ID_DEPARTAMENTO'||chr(10)||
'  INT';

p:=p||'O :P1_ID_DEPARTAMENTO'||chr(10)||
'  FROM EMPLEADOS E,'||chr(10)||
'       USUARIOS U'||chr(10)||
' WHERE E.ID_EMPLEADO = U.ID_EMPLEADO'||chr(10)||
'   AND U.USUARIO = :APP_USER;'||chr(10)||
'   '||chr(10)||
'SELECT DEPARTAMENTO'||chr(10)||
'  INTO :P1_DEPARTAMENTO'||chr(10)||
'  FROM DEPARTAMENTOS'||chr(10)||
' WHERE ID_DEPARTAMENTO = :P1_ID_DEPARTAMENTO;'||chr(10)||
' '||chr(10)||
'SELECT PASSWORD'||chr(10)||
'  INTO :P1_PASSWORD'||chr(10)||
'  FROM USUARIOS'||chr(10)||
' WHERE USUARIO = :APP_USER;'||chr(10)||
''||chr(10)||
''||chr(10)||
'END;';

wwv_flow_api.create_page_process(
  p_id     => 9662028845401487 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_BOX_BODY',
  p_process_type=> 'PLSQL',
  p_process_name=> 'CARGA DATOS USUARIO',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 4: Departamentos
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 4,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Departamentos',
  p_step_title=> 'Departamentos',
  p_step_sub_title => 'Departamentos',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110525203909',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>4,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT '||chr(10)||
'   "D"."ID_DEPARTAMENTO" "ID_DEPARTAMENTO", '||chr(10)||
'   ("E"."NOMBRE" || '' '' || "E"."APELLIDO1" || '' '' || "E"."APELLIDO2") "JEFE", '||chr(10)||
'   "D"."DEPARTAMENTO" "DEPARTAMENTO"'||chr(10)||
'FROM '||chr(10)||
'   "#OWNER#"."DEPARTAMENTOS" "D",'||chr(10)||
'   "#OWNER#"."EMPLEADOS" "E"'||chr(10)||
'WHERE'||chr(10)||
'   "D"."ID_JEFE" = "E"."ID_EMPLEADO" (+)'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 8928332077385615 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_name=> 'Departamentos',
  p_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 8906204756269992+ wwv_flow_api.g_id_offset,
  p_plug_query_max_columns       => 60,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_break_cols             => '0',
  p_query_no_data_found          => 'No se ha encontrado ningún dato.',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'N',
  p_query_asc_image              => 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_plug_query_strip_html        => 'Y',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8929429460385644 + wwv_flow_api.g_id_offset,
  p_region_id=> 8928332077385615 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'ID_DEPARTAMENTO',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Editar',
  p_column_link=> 'f?p=#APP_ID#:5:#APP_SESSION#:::RP:P5_ID_DEPARTAMENTO:#ID_DEPARTAMENTO#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">',
  p_column_alignment=> 'RIGHT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'DEPARTAMENTOS',
  p_ref_column_name=> 'ID_DEPARTAMENTO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8952303485515265 + wwv_flow_api.g_id_offset,
  p_region_id=> 8928332077385615 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'JEFE',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Jefe',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8929820217385644 + wwv_flow_api.g_id_offset,
  p_region_id=> 8928332077385615 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'DEPARTAMENTO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Departamento',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'DEPARTAMENTOS',
  p_ref_column_name=> 'DEPARTAMENTO',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 8930005566385650 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 10,
  p_button_plug_id => 8928332077385615+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::',
  p_button_condition=> 'RETURN (rol_usuario(:APP_USER) = ''ADMINISTRADOR'');',
  p_button_condition_type=> 'FUNCTION_BODY',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 8930217503385650 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_computation_sequence => 1,
  p_computation_item=> 'P5_ID_DEPARTAMENTO',
  p_computation_point=> 'AFTER_SUBMIT',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_compute_when => 'CREATE',
  p_compute_when_type=>'REQUEST_EQUALS_CONDITION');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 4
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 5: Master Detail
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>'||chr(10)||
'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 5,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Master Detail',
  p_step_title=> 'Master Detail',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_role => 9287807438373402+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110524190640',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>5,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>5,p_text=>ph);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 8930827347385651 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'Departamentos',
  p_plug_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"ID_EMPLEADO",'||chr(10)||
'"ID_DEPARTAMENTO",'||chr(10)||
'"APELLIDO1",'||chr(10)||
'"APELLIDO2",'||chr(10)||
'"NOMBRE",'||chr(10)||
'"FECHA_ALTA",'||chr(10)||
'"FECHA_BAJA",'||chr(10)||
'"TELEFONO"'||chr(10)||
'from "#OWNER#"."EMPLEADOS"'||chr(10)||
'where "ID_DEPARTAMENTO" = :P5_ID_DEPARTAMENTO'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_name=> 'Empleados de este departamento',
  p_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_display_when_condition       => 'P5_ID_DEPARTAMENTO',
  p_display_condition_type       => 'ITEM_IS_NOT_NULL',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 8906204756269992+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '10',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as          => '(nulo)',
  p_query_no_data_found          => 'No se ha encontrado ningún dato.',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_query_asc_image              => 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8938328520385684 + wwv_flow_api.g_id_offset,
  p_region_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> '&nbsp;',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'CHECKBOX',
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8936314978385678 + wwv_flow_api.g_id_offset,
  p_region_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'ID_EMPLEADO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Id Empleado',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=> 'HIDDEN',
  p_column_width=> '16',
  p_pk_col_source_type=> 'T',
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'ID_EMPLEADO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8936414475385678 + wwv_flow_api.g_id_offset,
  p_region_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'ID_DEPARTAMENTO',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Id Departamento',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=> 'HIDDEN',
  p_column_width=> '16',
  p_column_default=> 'P5_ID_DEPARTAMENTO',
  p_column_default_type=> 'ITEM',
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'ID_DEPARTAMENTO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8936525683385678 + wwv_flow_api.g_id_offset,
  p_region_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'APELLIDO1',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Apellido1',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'TEXT',
  p_column_width=> '16',
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'APELLIDO1',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8936604621385678 + wwv_flow_api.g_id_offset,
  p_region_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'APELLIDO2',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Apellido2',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'TEXT',
  p_column_width=> '16',
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'APELLIDO2',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8936719610385678 + wwv_flow_api.g_id_offset,
  p_region_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'NOMBRE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Nombre',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'TEXT',
  p_column_width=> '16',
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'NOMBRE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8936820759385678 + wwv_flow_api.g_id_offset,
  p_region_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'FECHA_ALTA',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Fecha Alta',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY',
  p_column_width=> '7',
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'FECHA_ALTA',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8936906470385678 + wwv_flow_api.g_id_offset,
  p_region_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'FECHA_BAJA',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Fecha Baja',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY',
  p_column_width=> '7',
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'FECHA_BAJA',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8937013900385678 + wwv_flow_api.g_id_offset,
  p_region_id=> 8936025996385676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'TELEFONO',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Telefono',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'TEXT',
  p_column_width=> '9',
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'TELEFONO',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 8937414675385683 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 40,
  p_button_plug_id => 8936025996385676+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Agregar fila',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8933900105385667 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 50,
  p_button_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_button_name    => 'GET_PREVIOUS_ID_DEPARTAMENTO',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> '&lt; Anterior',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID_DEPARTAMENTO'')',
  p_button_condition=> 'P5_ID_DEPARTAMENTO_PREV',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_comment=>'Este botón es necesario para el proceso Obtener Valor de Clave Primaria Anterior o Siguiente.',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8933820516385667 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 60,
  p_button_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_button_name    => 'GET_NEXT_ID_DEPARTAMENTO',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Siguiente &gt;',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:htmldb_goSubmit(''GET_NEXT_ID_DEPARTAMENTO'')',
  p_button_condition=> 'P5_ID_DEPARTAMENTO_NEXT',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_comment=>'Este botón es necesario para el proceso Obtener Valor de Clave Primaria Anterior o Siguiente.',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8931102807385659 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 30,
  p_button_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Aplicar Cambios',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P5_ID_DEPARTAMENTO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8937208815385683 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 30,
  p_button_plug_id => 8936025996385676+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Aplicar Cambios',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'select 1 '||chr(10)||
'from "#OWNER#"."EMPLEADOS"'||chr(10)||
'where "ID_DEPARTAMENTO" = :P5_ID_DEPARTAMENTO',
  p_button_condition_type=> 'EXISTS',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8931304478385659 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 10,
  p_button_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancelar',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8931015781385659 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 40,
  p_button_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P5_ID_DEPARTAMENTO',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8937300702385683 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 20,
  p_button_plug_id => 8936025996385676+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Suprimir',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8931219581385659 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 20,
  p_button_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Suprimir',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P5_ID_DEPARTAMENTO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>8933619557385665 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>8931102807385659+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>8938813270385686 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>8935813565385675 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&FLOW_ID.:5:&SESSION.::&DEBUG.::P5_ID_DEPARTAMENTO:&P5_ID_DEPARTAMENTO_PREV.',
  p_branch_point=> 'BEFORE_COMPUTATION',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>8933900105385667+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 1,
  p_branch_comment=> 'Este botón es necesario para el proceso Obtener Valor de Clave Primaria Anterior o Siguiente.');
 
wwv_flow_api.create_page_branch(
  p_id=>8935631397385675 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&FLOW_ID.:5:&SESSION.::&DEBUG.::P5_ID_DEPARTAMENTO:&P5_ID_DEPARTAMENTO_NEXT.',
  p_branch_point=> 'BEFORE_COMPUTATION',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>8933820516385667+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 1,
  p_branch_comment=> 'Este botón es necesario para el proceso Obtener Valor de Clave Primaria Anterior o Siguiente.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8931908891385661 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_ID_DEPARTAMENTO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Id Departamento',
  p_source=>'ID_DEPARTAMENTO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Empleado del departamento que ejerce las funciones de Jefe de Departamento.<br>'||chr(10)||
'Un departamento recién creado carece de departamento.<br>'||chr(10)||
'Puede dar de alta empleados para este departamento en la sección Empleados de este departamento de esta misma página';

wwv_flow_api.create_page_item(
  p_id=>8932119764385662 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_ID_JEFE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Jefe',
  p_source=>'ID_JEFE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'EMPLEADOS_DEPARTAMENTO',
  p_lov => 'SELECT apellido1 || '' '' || apellido2 || '', '' || nombre e'||chr(10)||
'      ,id_empleado i'||chr(10)||
'  FROM empleados'||chr(10)||
' WHERE id_departamento = :P5_ID_DEPARTAMENTO'||chr(10)||
'ORDER BY e',
  p_lov_columns=> null,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'Sin Jefe',
  p_lov_null_value=> '',
  p_cSize=> 22,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Nombre descriptivo del departamento';

wwv_flow_api.create_page_item(
  p_id=>8932301799385662 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_DEPARTAMENTO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Departamento',
  p_source=>'DEPARTAMENTO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 21,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8934601917385670 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_ID_DEPARTAMENTO_NEXT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 13,
  p_item_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_prompt=>'P5_ID_DEPARTAMENTO_NEXT',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => 'Este elemento es necesario para el proceso Obtener Valor de Clave Primaria Anterior o Siguiente.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8934832696385670 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_ID_DEPARTAMENTO_PREV',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 23,
  p_item_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_prompt=>'P5_ID_DEPARTAMENTO_PREV',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => 'Este elemento es necesario para el proceso Obtener Valor de Clave Primaria Anterior o Siguiente.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8935006894385673 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_ID_DEPARTAMENTO_COUNT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 33,
  p_item_plug_id => 8930827347385651+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_display_as=> 'DISPLAY_AND_SAVE',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'class="fielddata"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => 'Este elemento es necesario para el proceso Obtener Valor de Clave Primaria Anterior o Siguiente.');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 8932832305385662 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_validation_name => 'P5_DEPARTAMENTO not null',
  p_validation_sequence=> 3,
  p_validation => 'P5_DEPARTAMENTO',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Departamento debe tener algún valor.',
  p_associated_item=> 8932301799385662 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:DEPARTAMENTOS:P5_ID_DEPARTAMENTO:ID_DEPARTAMENTO';

wwv_flow_api.create_page_process(
  p_id     => 8933024869385664 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from DEPARTAMENTOS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido recuperar la fila.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:DEPARTAMENTOS:ID_DEPARTAMENTO::ID_JEFE:DEPARTAMENTO:P5_ID_DEPARTAMENTO:P5_ID_DEPARTAMENTO_NEXT:P5_ID_DEPARTAMENTO_PREV::::P5_ID_DEPARTAMENTO_COUNT:';

wwv_flow_api.create_page_process(
  p_id     => 8935425733385675 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'GET_NEXT_OR_PREV_PK',
  p_process_name=> 'Obtener Valor de Clave Primaria Anterior o Siguiente.',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido ejecutar el proceso Obtener Valor de Clave Primaria Anterior o Siguiente.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:EMPLEADOS:ID_EMPLEADO';

wwv_flow_api.create_page_process(
  p_id     => 8937921064385683 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido procesar la actualización.',
  p_process_when_button_id=>8937208815385683 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# fila(s) actualizada(s), #MRI_COUNT# fila(s) insertada(s).',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:EMPLEADOS:ID_EMPLEADO';

wwv_flow_api.create_page_process(
  p_id     => 8938124875385684 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido procesar la supresión.',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# fila(s) suprimida(s).',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:DEPARTAMENTOS:P5_ID_DEPARTAMENTO:ID_DEPARTAMENTO|IUD';

wwv_flow_api.create_page_process(
  p_id     => 8933223663385665 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of DEPARTAMENTOS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido procesar la fila de la tabla DEPARTAMENTOS.',
  p_process_success_message=> 'Acción procesada.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:EMPLEADOS:ID_EMPLEADO';

wwv_flow_api.create_page_process(
  p_id     => 8938432185385686 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido procesar la actualización.',
  p_process_when_button_id=>8937414675385683 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# fila(s) actualizada(s), #MRI_COUNT# fila(s) insertada(s).',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'5';

wwv_flow_api.create_page_process(
  p_id     => 8933400735385665 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>8931219581385659 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'1';

wwv_flow_api.create_page_process(
  p_id     => 8938611316385686 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'ADD_ROWS_TO_TABULAR_FORM',
  p_process_name=> 'AddRows',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se han podido agregar filas.',
  p_process_when_button_id=>8937414675385683 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 8: LISTADO EMPLEADOS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 8,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'LISTADO EMPLEADOS',
  p_step_title=> 'LISTADO EMPLEADOS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110527215659',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>8,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "ID_EMPLEADO", '||chr(10)||
'"D"."DEPARTAMENTO",'||chr(10)||
'"APELLIDO1",'||chr(10)||
'"APELLIDO2",'||chr(10)||
'"NOMBRE",'||chr(10)||
'"FECHA_ALTA",'||chr(10)||
'"FECHA_BAJA",'||chr(10)||
'"TELEFONO"'||chr(10)||
'from "#OWNER#"."EMPLEADOS" "E",'||chr(10)||
'"#OWNER#"."DEPARTAMENTOS" "D"'||chr(10)||
'WHERE "E"."ID_DEPARTAMENTO" = "D"."ID_DEPARTAMENTO"';

wwv_flow_api.create_report_region (
  p_id=> 8968813937656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_name=> 'Empleados',
  p_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 8906204756269992+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_break_cols             => '0',
  p_query_no_data_found          => 'No se ha encontrado ningún dato',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'N',
  p_query_asc_image              => 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_plug_query_strip_html        => 'Y',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8969101947656659 + wwv_flow_api.g_id_offset,
  p_region_id=> 8968813937656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'ID_EMPLEADO',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Editar',
  p_column_link=> 'f?p=#APP_ID#:9:#APP_SESSION#::::P9_ID_EMPLEADO:#ID_EMPLEADO#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">',
  p_column_alignment=> 'RIGHT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'ID_EMPLEADO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8972907229686691 + wwv_flow_api.g_id_offset,
  p_region_id=> 8968813937656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'DEPARTAMENTO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Departamento',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8969319291656659 + wwv_flow_api.g_id_offset,
  p_region_id=> 8968813937656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'APELLIDO1',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Apellido1',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'APELLIDO1',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8969424691656659 + wwv_flow_api.g_id_offset,
  p_region_id=> 8968813937656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'APELLIDO2',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Apellido2',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'APELLIDO2',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8969532091656659 + wwv_flow_api.g_id_offset,
  p_region_id=> 8968813937656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'NOMBRE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Nombre',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'NOMBRE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8969601124656659 + wwv_flow_api.g_id_offset,
  p_region_id=> 8968813937656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'FECHA_ALTA',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Fecha Alta',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'FECHA_ALTA',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8969701473656661 + wwv_flow_api.g_id_offset,
  p_region_id=> 8968813937656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'FECHA_BAJA',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Fecha Baja',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'FECHA_BAJA',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 8969816276656661 + wwv_flow_api.g_id_offset,
  p_region_id=> 8968813937656658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'TELEFONO',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Telefono',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'EMPLEADOS',
  p_ref_column_name=> 'TELEFONO',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 8969931437656661 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 8,
  p_button_sequence=> 30,
  p_button_plug_id => 8968813937656658+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9::',
  p_button_condition=> 'RETURN (rol_usuario(:APP_USER) = ''ADMINISTRADOR'');',
  p_button_condition_type=> 'FUNCTION_BODY',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 8
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 9: GESTIÓN DE EMPLEADOS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 9,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'GESTIÓN DE EMPLEADOS',
  p_step_title=> 'GESTIÓN DE EMPLEADOS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_role => 9287807438373402+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110524213652',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>9,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>9,p_text=>ph);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 8963403577656641 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_plug_name=> 'Empleados',
  p_plug_template=> 8904204702269989+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 8963713087656641 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 30,
  p_button_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Aplicar Cambios',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P9_ID_EMPLEADO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8963924093656642 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 10,
  p_button_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancelar',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8963621090656641 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 40,
  p_button_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P9_ID_EMPLEADO',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8963830194656641 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 20,
  p_button_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Suprimir',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P9_ID_EMPLEADO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>8964507471656644 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_branch_action=> 'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8964707580656644 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_ID_EMPLEADO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Id Empleado',
  p_source=>'ID_EMPLEADO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Departamento al que pertenece el empleado. <br>'||chr(10)||
'Todo empleado debe pertenecer a un departamento existente. <br>'||chr(10)||
'Si el departamento todavía no existe puede crearlo desde la pestaña "Empleados" y desde esa misma página, en el apartado "Empleados de este departamento" dar de alta al empleado.';

wwv_flow_api.create_page_item(
  p_id=>8964922723656648 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_ID_DEPARTAMENTO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Departamento',
  p_source=>'ID_DEPARTAMENTO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'DEPARTAMENTOS',
  p_lov => 'select departamento d, id_departamento id'||chr(10)||
'from   departamentos'||chr(10)||
'order by 1',
  p_lov_columns=> null,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'Seleccione departamento',
  p_lov_null_value=> '',
  p_cSize=> 22,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Campo obligatorio';

wwv_flow_api.create_page_item(
  p_id=>8965314945656650 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_APELLIDO1',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Apellido1',
  p_source=>'APELLIDO1',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 31,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Este campo es opcional. <br>'||chr(10)||
'Si el empleado solo tiene un apellido o usted no lo conoce, deje este campo en blanco';

wwv_flow_api.create_page_item(
  p_id=>8965720826656650 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_APELLIDO2',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Apellido2',
  p_source=>'APELLIDO2',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 31,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Campo obligatorio';

wwv_flow_api.create_page_item(
  p_id=>8965926911656650 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_NOMBRE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Nombre',
  p_source=>'NOMBRE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 31,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Fecha de alta del empleado en la empresa. <br>'||chr(10)||
'Este campo es obligatorio';

wwv_flow_api.create_page_item(
  p_id=>8966308292656652 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_FECHA_ALTA',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 6,
  p_item_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Fecha  de Alta',
  p_source=>'FECHA_ALTA',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Fecha de baja del empleado en la empresa.<br>'||chr(10)||
'Deje este campo vacío mientras el empleado permanezca en la empresa. <br>'||chr(10)||
'Cuando rellene este campo el usuario o usuarios asociados a este empleado quedarán inactivos y el empleado no podrá efectuar reservas.';

wwv_flow_api.create_page_item(
  p_id=>8967030491656655 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_FECHA_BAJA',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 7,
  p_item_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Fecha de baja',
  p_source=>'FECHA_BAJA',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Este campo es opcional';

wwv_flow_api.create_page_item(
  p_id=>8967506751656656 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_TELEFONO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 8,
  p_item_plug_id => 8963403577656641+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Telefono',
  p_source=>'TELEFONO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 8965123693656650 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_validation_name => 'P9_ID_DEPARTAMENTO not null',
  p_validation_sequence=> 2,
  p_validation => 'P9_ID_DEPARTAMENTO',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Id Departamento debe tener algún valor.',
  p_associated_item=> 8964922723656648 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 8965515579656650 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_validation_name => 'P9_APELLIDO1 not null',
  p_validation_sequence=> 3,
  p_validation => 'P9_APELLIDO1',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Apellido1 debe tener algún valor.',
  p_associated_item=> 8965314945656650 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 8966124475656652 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_validation_name => 'P9_NOMBRE not null',
  p_validation_sequence=> 5,
  p_validation => 'P9_NOMBRE',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Nombre debe tener algún valor.',
  p_associated_item=> 8965926911656650 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 8966820060656655 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_validation_name => 'P9_FECHA_ALTA not null',
  p_validation_sequence=> 6,
  p_validation => 'P9_FECHA_ALTA',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Fecha Alta debe tener algún valor.',
  p_associated_item=> 8966308292656652 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:EMPLEADOS:P9_ID_EMPLEADO:ID_EMPLEADO';

wwv_flow_api.create_page_process(
  p_id     => 8967711421656656 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from EMPLEADOS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido recuperar la fila.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:EMPLEADOS:P9_ID_EMPLEADO:ID_EMPLEADO|IUD';

wwv_flow_api.create_page_process(
  p_id     => 8967921641656656 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of EMPLEADOS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido procesar la fila de la tabla EMPLEADOS.',
  p_process_success_message=> 'Acción procesada.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'9';

wwv_flow_api.create_page_process(
  p_id     => 8968102031656656 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>8963830194656641 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 9
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 11: LISTADO DE USUARIOS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 11,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'LISTADO DE USUARIOS',
  p_step_title=> 'Informe sobre USUARIOS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_role => 9287807438373402+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110529144400',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>11,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT U.USUARIO,'||chr(10)||
'       E.APELLIDO1 || '' '' || E.APELLIDO2 || '', '' || E.NOMBRE EMPLEADO,'||chr(10)||
'       R.ROL,'||chr(10)||
'       U.PASSWORD    '||chr(10)||
'  FROM USUARIOS U,'||chr(10)||
'       EMPLEADOS E,'||chr(10)||
'       ROLES_USUARIO R'||chr(10)||
' WHERE U.ID_EMPLEADO = E.ID_EMPLEADO'||chr(10)||
'   AND U.ID_ROL = R.ID_ROL'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 9020614300283176 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_name=> 'LISTADO DE USUARIOS',
  p_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 8906204756269992+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_break_cols             => '0',
  p_query_no_data_found          => 'No se ha encontrado ningún dato',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'N',
  p_query_asc_image              => 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_plug_query_strip_html        => 'Y',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9020919582283190 + wwv_flow_api.g_id_offset,
  p_region_id=> 9020614300283176 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'USUARIO',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Usuario',
  p_column_link=> 'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::P12_USUARIO:#USUARIO#',
  p_column_linktext=> '#USUARIO#',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'USUARIOS',
  p_ref_column_name=> 'USUARIO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9442429307002657 + wwv_flow_api.g_id_offset,
  p_region_id=> 9020614300283176 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'EMPLEADO',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Empleado',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9442516063002660 + wwv_flow_api.g_id_offset,
  p_region_id=> 9020614300283176 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'ROL',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Rol',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9021229615283195 + wwv_flow_api.g_id_offset,
  p_region_id=> 9020614300283176 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'PASSWORD',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Contraseña',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'USUARIOS',
  p_ref_column_name=> 'PASSWORD',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 9021331493283195 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 11,
  p_button_sequence=> 30,
  p_button_plug_id => 9020614300283176+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=105:12:&SESSION.::NO:12',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 11
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 12: USUARIOS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 12,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'USUARIOS',
  p_step_title=> 'USUARIOS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_role => 9287807438373402+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110530175623',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>12,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>12,p_text=>ph);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 9016820398283081 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_plug_name=> 'GESTIÓN DE  USUARIOS',
  p_plug_template=> 8904204702269989+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'valign=top',
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 9017110200283103 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 30,
  p_button_plug_id => 9016820398283081+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Aplicar Cambios',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P12_USUARIO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9017313038283105 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 10,
  p_button_plug_id => 9016820398283081+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancelar',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9017011140283103 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 40,
  p_button_plug_id => 9016820398283081+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P12_USUARIO',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9017212542283103 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 20,
  p_button_plug_id => 9016820398283081+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Suprimir',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P12_USUARIO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>9017914471283116 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_branch_action=> 'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>9064413873238082 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_branch_action=> 'f?p=&FLOW_ID.:12:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>9064202889238080+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Cadena de texto de 6 caracteres que identificarán al usuario. <br>'||chr(10)||
'Se sugiere utilizar el formato AANXXX donde los tres primeros caracteres hacen referencia a las iniciales de los apellidos y nombre del empleado asociado a este usuario y los tres últimos a un número entre 000 y 999 para distinguir usuarios con iniciales semejantes.';

wwv_flow_api.create_page_item(
  p_id=>9018126220283125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_name=>'P12_USUARIO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 9016820398283081+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Usuario',
  p_source=>'USUARIO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Identificador del empleado al que se asocia este usuario. <br>'||chr(10)||
'Utilice la lista de valores para buscar y seleccionar un empleado. <br>'||chr(10)||
'Escriba parte del nombre y/o apellidos y pulse sobre el icono de la derecha del campo para seleccionar una lista de valores. <br>'||chr(10)||
'La lista de valores se mostrará en una ventana emergente';

wwv_flow_api.create_page_item(
  p_id=>9018314155283144 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_name=>'P12_ID_EMPLEADO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 9016820398283081+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Empleado',
  p_source=>'ID_EMPLEADO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'POPUP_KEY_LOV',
  p_named_lov=> 'EMPLEADOS',
  p_lov => 'SELECT nombre_completo(nombre, apellido1, apellido2) e'||chr(10)||
'      ,id_empleado i'||chr(10)||
'  FROM empleados'||chr(10)||
'ORDER BY e',
  p_lov_columns=> null,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'Seleccione empleado',
  p_lov_null_value=> '',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Rol que se designa al usuario.'||chr(10)||
'Tenga cuidado al asignar roles, ya que los usuarios con rol de ADMINISTRADOR tendrán acceso total a la aplicación, incluida esta pantalla, lo que le permitirá dar de alta y modificar empleados, departamentos y usuarios';

wwv_flow_api.create_page_item(
  p_id=>9018704321283153 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_name=>'P12_ID_ROL',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 9016820398283081+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Rol',
  p_source=>'ID_ROL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'ROLES',
  p_lov => 'select rol d, id_rol r'||chr(10)||
'from   roles_usuario'||chr(10)||
'order by 1',
  p_lov_columns=> null,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'Seleccione Rol',
  p_lov_null_value=> '',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Contraseña del usuario. Recuerde comunicar al empleado su nombre de usuario y contraseña de forma discreta';

wwv_flow_api.create_page_item(
  p_id=>9019128396283153 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_name=>'P12_PASSWORD',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 9016820398283081+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Contraseña',
  p_source=>'PASSWORD',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 21,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9018512482283148 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_validation_name => 'P12_ID_EMPLEADO not null',
  p_validation_sequence=> 20,
  p_validation => 'P12_ID_EMPLEADO',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Id Empleado debe tener algún valor.',
  p_associated_item=> 9018314155283144 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9018907794283153 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_validation_name => 'P12_ID_ROL not null',
  p_validation_sequence=> 30,
  p_validation => 'P12_ID_ROL',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Id Rol debe tener algún valor.',
  p_associated_item=> 9018704321283153 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9019321595283155 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_validation_name => 'P12_PASSWORD not null',
  p_validation_sequence=> 40,
  p_validation => 'P12_PASSWORD',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Password debe tener algún valor.',
  p_associated_item=> 9019128396283153 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9025508628378641 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_validation_name => 'P12_USUARIO not null',
  p_validation_sequence=> 50,
  p_validation => 'P12_USUARIO',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'El campo USUARIO no puede ser nulo',
  p_associated_item=> 9018126220283125 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'ON_ERROR_PAGE',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:USUARIOS:P12_USUARIO:USUARIO';

wwv_flow_api.create_page_process(
  p_id     => 9019514398283156 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from USUARIOS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido recuperar la fila.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:USUARIOS:P12_USUARIO:USUARIO|IUD';

wwv_flow_api.create_page_process(
  p_id     => 9019709436283162 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of USUARIOS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido procesar la fila de la tabla USUARIOS.',
  p_process_success_message=> 'Acción procesada.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'12';

wwv_flow_api.create_page_process(
  p_id     => 9019909871283164 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>9017212542283103 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 12
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 13: LISTADO DE RECURSOS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 13,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'LISTADO DE RECURSOS',
  p_step_title=> 'LISTADO DE RECURSOS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110529144449',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>13,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "ID_RECURSO", '||chr(10)||
'"RECURSO",'||chr(10)||
'"DESCRIPCION"'||chr(10)||
'from "#OWNER#"."RECURSOS" '||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 9140002409695557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 13,
  p_name=> 'RECURSOS',
  p_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 8906204756269992+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_break_cols             => '0',
  p_query_no_data_found          => 'No se ha encontrado ningún dato',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'N',
  p_query_asc_image              => 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_plug_query_strip_html        => 'Y',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9140320787695562 + wwv_flow_api.g_id_offset,
  p_region_id=> 9140002409695557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'ID_RECURSO',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Editar',
  p_column_link=> 'f?p=#APP_ID#:14:#APP_SESSION#::::P14_ID_RECURSO:#ID_RECURSO#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'RECURSOS',
  p_ref_column_name=> 'ID_RECURSO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9140406367695563 + wwv_flow_api.g_id_offset,
  p_region_id=> 9140002409695557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'RECURSO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Recurso',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'RECURSOS',
  p_ref_column_name=> 'RECURSO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9140518029695563 + wwv_flow_api.g_id_offset,
  p_region_id=> 9140002409695557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'DESCRIPCION',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Descripcion',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'RECURSOS',
  p_ref_column_name=> 'DESCRIPCION',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 9140619636695563 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 13,
  p_button_sequence=> 30,
  p_button_plug_id => 9140002409695557+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14::',
  p_button_condition=> 'RETURN (rol_usuario(:APP_USER) = ''ADMINISTRADOR'');',
  p_button_condition_type=> 'FUNCTION_BODY',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 13
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 14: RECURSOS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 14,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'RECURSOS',
  p_step_title=> 'RECURSOS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_role => 9287807438373402+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110524192059',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>14,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>14,p_text=>ph);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 9136827436695545 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 14,
  p_plug_name=> 'GESTION DE RECURSOS',
  p_plug_template=> 8904204702269989+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 9137130182695546 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 30,
  p_button_plug_id => 9136827436695545+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Aplicar Cambios',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P14_ID_RECURSO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9137310449695546 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 10,
  p_button_plug_id => 9136827436695545+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancelar',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9137031737695546 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 40,
  p_button_plug_id => 9136827436695545+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P14_ID_RECURSO',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9137223199695546 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 20,
  p_button_plug_id => 9136827436695545+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Suprimir',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P14_ID_RECURSO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>9137916035695552 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_branch_action=> 'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9138126307695554 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_ID_RECURSO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 9136827436695545+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Id Recurso',
  p_source=>'ID_RECURSO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Introduzca un nombre para el recurso. <br>'||chr(10)||
'Si existes varios recursos similares identifiquelos con un número distintivo a cada uno de ellos.';

wwv_flow_api.create_page_item(
  p_id=>9138326440695554 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_RECURSO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 9136827436695545+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Recurso',
  p_source=>'RECURSO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 31,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Trate de dar una descripción clara y concisa del recurso, ya que podrá servirle para distinguir recursos similares.<br>'||chr(10)||
'Por ejemplo, puede indicar su ubicación, estado ...';

wwv_flow_api.create_page_item(
  p_id=>9138707220695556 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_DESCRIPCION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 9136827436695545+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Descripcion',
  p_source=>'DESCRIPCION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA-AUTO-HEIGHT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 4,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 4,
  p_rowspan => 4,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9138506036695554 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_validation_name => 'P14_RECURSO not null',
  p_validation_sequence=> 20,
  p_validation => 'P14_RECURSO',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Recurso debe tener algún valor.',
  p_associated_item=> 9138326440695554 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:RECURSOS:P14_ID_RECURSO:ID_RECURSO';

wwv_flow_api.create_page_process(
  p_id     => 9138907677695556 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from RECURSOS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido recuperar la fila.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:RECURSOS:P14_ID_RECURSO:ID_RECURSO|IUD';

wwv_flow_api.create_page_process(
  p_id     => 9139126518695556 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of RECURSOS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido procesar la fila de la tabla RECURSOS.',
  p_process_success_message=> 'Acción procesada.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'14';

wwv_flow_api.create_page_process(
  p_id     => 9139321188695556 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>9137223199695546 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 14
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 20: Calendario de reservas
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 20,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Calendario de reservas',
  p_step_title=> 'Calendario de reservas',
  p_step_sub_title => 'Calendario de reservas',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110527220023',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>20,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select ''<a title="Pulse para ver los detalles de la reserva" href="f?p=&APP_ID.:22:'' || :APP_SESSION || ''::::P22_ID_RESERVA:'' || id_reserva || ''">'' || reserva(id_reserva)|| ''</a><br />'' recurso, '||chr(10)||
'        fecha_ini'||chr(10)||
'from reservas';

wwv_flow_api.create_calendar (
  p_id=> 9149622196013217 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 20,
  p_plug_name=> 'Calendario de reservas',
  p_plug_source=> s,
  p_plug_source_type  => 'CALENDAR',
  p_plug_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_display_error_message=> '',
  p_plug_display_condition_type => '',
  p_plug_display_when_condition => '',
  p_plug_display_when_cond2=>'',
  p_plug_header=> '',
  p_plug_footer=> '',
  p_plug_override_reg_pos=>'',
  p_plug_customized=>'0',
  p_plug_customized_name=>'',
  p_translate_title=>'Y',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '',
  p_cal_id=>9150332748013222 + wwv_flow_api.g_id_offset,
  p_start_date=>'',
  p_end_date=>'',
  p_begin_at_start_of_interval=>'Y',
  p_date_item=>'P20_CALENDAR_DATE',
  p_display_as=>'M',
  p_display_item=>'P20_CALENDAR_DISPLAY',
  p_display_type=>'COL',
  p_item_format=>'',
  p_easy_sql_owner=>'',
  p_easy_sql_table=>'',
  p_date_column=>'FECHA_INI',
  p_display_column=>'RECURSO',
  p_start_of_week=>'19721106',
  p_day_link=>'',
  p_item_link=>'',
  p_template_id=>8907925782269994 + wwv_flow_api.g_id_offset,
  p_calendar_comments=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 9150728859013224 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 20,
  p_button_sequence=> 30,
  p_button_plug_id => 9149622196013217+wwv_flow_api.g_id_offset,
  p_button_name    => 'Previous',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Anterior',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_comment=>'Generated 22/05/11',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9151501819013225 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 20,
  p_button_sequence=> 30,
  p_button_plug_id => 9149622196013217+wwv_flow_api.g_id_offset,
  p_button_name    => 'Next',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Siguiente',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_comment=>'Generated 22/05/11',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9151109339013225 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 20,
  p_button_sequence=> 30,
  p_button_plug_id => 9149622196013217+wwv_flow_api.g_id_offset,
  p_button_name    => 'Today',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Hoy',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_comment=>'Generated 22/05/11',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>9151909558013227 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 20,
  p_branch_action=> 'f?p=&FLOW_ID.:20:&SESSION.',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9150525102013224 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 20,
  p_name=>'P20_CALENDAR_DATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 9149622196013217+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => 'return to_char(sysdate,''YYYYMMDD'');',
  p_item_default_type => 'PLSQL_FUNCTION_BODY',
  p_prompt=>'P20_CALENDAR_DATE',
  p_source_type=> 'STATIC',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||' wwv_flow_utilities.decrement_calendar;';

wwv_flow_api.create_page_process(
  p_id     => 9150928140013224 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 20,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Adjust Calendar Date -Anterior',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error changing calendar date.',
  p_process_when_button_id=>9150728859013224 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'Generated 22/05/11');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||' wwv_flow_utilities.today_calendar;';

wwv_flow_api.create_page_process(
  p_id     => 9151313371013225 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 20,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Adjust Calendar Date -Hoy',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error changing calendar date.',
  p_process_when_button_id=>9151109339013225 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'Generated 22/05/11');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||' wwv_flow_utilities.increment_calendar;';

wwv_flow_api.create_page_process(
  p_id     => 9151718403013225 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 20,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Adjust Calendar Date -Siguiente',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error changing calendar date.',
  p_process_when_button_id=>9151501819013225 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'Generated 22/05/11');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 20
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 21: LISTADO DE RESERVAS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 21,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'LISTADO DE RESERVAS',
  p_step_title=> 'LISTADO DE RESERVAS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110529141934',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>21,p_text=>h);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'<div id="svgRegion"><embed src="f?p=&FLOW_ID.:&FLOW_PAGE_ID.:#SESSION#:FLOW_SVG_CHART_R#REGION_ID#" width="#WIDTH#" height="#HEIGHT#" type="image/svg+xml" /></div><script src="#IMAGE_PREFIX#javascript/plugins.js"></script>';

wwv_flow_api.create_page_plug (
  p_id=> 9545919440241463 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'Gráfico de reservas por usuario',
  p_plug_template=> 8904508307269989+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 30,
  p_plug_display_column  => 3,
  p_plug_display_point   => 'BEFORE_BOX_BODY',
  p_plug_source  => s,
  p_plug_source_type=> 'SVG_CHART',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'valign=top',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2',
  p_plug_display_when_condition => 'P21_TIPO',
  p_plug_display_when_cond2=>'RECURSOS',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
declare
 a varchar2(32767):=null;
begin
a:=a||'PIE';

wwv_flow_api.create_generic_attr(
 p_id=>9546106769241463+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>2,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'Y';

wwv_flow_api.create_generic_attr(
 p_id=>9547307797247528+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>9,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'ARG';

wwv_flow_api.create_generic_attr(
 p_id=>9547426382247528+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>10,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'Y';

wwv_flow_api.create_generic_attr(
 p_id=>9547502333247528+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>14,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'PARSE_CHART_QUERY';

wwv_flow_api.create_generic_attr(
 p_id=>9547616173247528+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>16,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'Arial';

wwv_flow_api.create_generic_attr(
 p_id=>9547721462247528+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>26,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'14';

wwv_flow_api.create_generic_attr(
 p_id=>9547822079247528+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>27,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'#000000';

wwv_flow_api.create_generic_attr(
 p_id=>9547916633247528+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>28,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'Arial';

wwv_flow_api.create_generic_attr(
 p_id=>9548024832247529+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>29,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'270';

wwv_flow_api.create_generic_attr(
 p_id=>9546329746241464+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>30,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'400';

wwv_flow_api.create_generic_attr(
 p_id=>9546432308241464+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>31,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'8';

wwv_flow_api.create_generic_attr(
 p_id=>9548124463247529+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>35,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'#000000';

wwv_flow_api.create_generic_attr(
 p_id=>9548230611247529+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>36,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'NO';

wwv_flow_api.create_generic_attr(
 p_id=>9548326046247529+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>64,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'NO';

wwv_flow_api.create_generic_attr(
 p_id=>9548400377247529+wwv_flow_api.g_id_offset,
 p_region_id=>9545919440241463+wwv_flow_api.g_id_offset,
 p_attribute_id=>67,
 p_attribute_value=>a);
end;
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL,'||chr(10)||
'       USUARIO  || '' - '' || COUNT(ID_RESERVA) || '' reservas '' ,'||chr(10)||
'       COUNT(ID_RESERVA)'||chr(10)||
'  FROM RESERVAS'||chr(10)||
'WHERE (TRUNC(FECHA_INI) >= TO_DATE(:P21_FECHA_INI, ''DD-MM-YYYY'') AND TRUNC(FECHA_FIN) <= TO_DATE(:P21_FECHA_FIN, ''DD-MM-YYYY'') )'||chr(10)||
'    OR (TRUNC(FECHA_INI) BETWEEN TO_DATE(:P21_FECHA_INI, ''DD-MM-YYYY'') AND TO_DATE(:P21_FECHA_FIN, ''DD-MM-YYYY''))'||chr(10)||
'	OR (TRUNC(FECHA_FIN) BETWEEN TO_';

a1:=a1||'DATE(:P21_FECHA_INI, ''DD-MM-YYYY'') AND TO_DATE(:P21_FECHA_FIN, ''DD-MM-YYYY''))'||chr(10)||
'GROUP BY USUARIO';

wwv_flow_api.create_chart_series_attr(
  p_id => 9546504049241464+wwv_flow_api.g_id_offset,
  p_region_id => 9545919440241463+wwv_flow_api.g_id_offset,
  p_series_id => 1,
  p_a001 => a1,
  p_a002 => '15',
  p_a003 => 'No se ha encontrado ningún dato.',
  p_a004 => '',
  p_a005 => '',
  p_a006 => '',
  p_a007 => '',
  p_a008 => '',
  p_a009 => '',
  p_a010 => '',
  p_a011 => '',
  p_a012 => '',
  p_a013 => '',
  p_a014 => '',
  p_a015 => '',
  p_a016 => '',
  p_a017 => '',
  p_a018 => '',
  p_a019 => '',
  p_a020 => '',
  p_a021 => '',
  p_a022 => '',
  p_a023 => '',
  p_a024 => '',
  p_a025 => '',
  p_a026 => '',
  p_a027 => '',
  p_a028 => '',
  p_a029 => '',
  p_a030 => '',
  p_a031 => '',
  p_a032 => '',
  p_a033 => '',
  p_a034 => '',
  p_a035 => '',
  p_a036 => '',
  p_a037 => '',
  p_a038 => '',
  p_a039 => '',
  p_a040 => '',
  p_a041 => '',
  p_a042 => '',
  p_a043 => '',
  p_a044 => '',
  p_a045 => '',
  p_a046 => '',
  p_a047 => '',
  p_a048 => '',
  p_a049 => '',
  p_a050 => '');
end;
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 9539713459182884 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'Datos del gráfico y resumen a mostrar',
  p_plug_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_display_column  => 2,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'valign=top',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'<div id="svgRegion"><embed src="f?p=&FLOW_ID.:&FLOW_PAGE_ID.:#SESSION#:FLOW_SVG_CHART_R#REGION_ID#" width="#WIDTH#" height="#HEIGHT#" type="image/svg+xml" /></div><script src="#IMAGE_PREFIX#javascript/plugins.js"></script>';

wwv_flow_api.create_page_plug (
  p_id=> 9566719655582116 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'Gráfico de reservas por recurso',
  p_plug_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 40,
  p_plug_display_column  => 3,
  p_plug_display_point   => 'BEFORE_BOX_BODY',
  p_plug_source  => s,
  p_plug_source_type=> 'SVG_CHART',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'valign=top',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'VAL_OF_ITEM_IN_COND_EQ_COND2',
  p_plug_display_when_condition => 'P21_TIPO',
  p_plug_display_when_cond2=>'RECURSOS',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
declare
 a varchar2(32767):=null;
begin
a:=a||'PIE';

wwv_flow_api.create_generic_attr(
 p_id=>9566925678582117+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>2,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'Y';

wwv_flow_api.create_generic_attr(
 p_id=>9567114034582117+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>9,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'ARG';

wwv_flow_api.create_generic_attr(
 p_id=>9567217974582117+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>10,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'Y';

wwv_flow_api.create_generic_attr(
 p_id=>9567306008582117+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>14,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'PARSE_CHART_QUERY';

wwv_flow_api.create_generic_attr(
 p_id=>9567414052582119+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>16,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'Arial';

wwv_flow_api.create_generic_attr(
 p_id=>9567504074582119+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>26,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'14';

wwv_flow_api.create_generic_attr(
 p_id=>9567600129582119+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>27,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'#000000';

wwv_flow_api.create_generic_attr(
 p_id=>9567731473582119+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>28,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'Arial';

wwv_flow_api.create_generic_attr(
 p_id=>9567829444582119+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>29,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'270';

wwv_flow_api.create_generic_attr(
 p_id=>9567905514582119+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>30,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'400';

wwv_flow_api.create_generic_attr(
 p_id=>9568025356582119+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>31,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'8';

wwv_flow_api.create_generic_attr(
 p_id=>9568119185582119+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>35,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'#000000';

wwv_flow_api.create_generic_attr(
 p_id=>9568220803582119+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>36,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'NO';

wwv_flow_api.create_generic_attr(
 p_id=>9568309975582120+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>64,
 p_attribute_value=>a);
end;
declare
 a varchar2(32767):=null;
begin
a:=a||'NO';

wwv_flow_api.create_generic_attr(
 p_id=>9568430133582120+wwv_flow_api.g_id_offset,
 p_region_id=>9566719655582116+wwv_flow_api.g_id_offset,
 p_attribute_id=>67,
 p_attribute_value=>a);
end;
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL,'||chr(10)||
'       RECURSO  || '' - '' || COUNT(ID_RESERVA) || '' reservas '' ,'||chr(10)||
'       COUNT(ID_RESERVA)'||chr(10)||
'  FROM RESERVAS,'||chr(10)||
'       RECURSOS'||chr(10)||
'WHERE ((TRUNC(FECHA_INI) >= TO_DATE(:P21_FECHA_INI, ''DD-MM-YYYY'') AND TRUNC(FECHA_FIN) <= TO_DATE(:P21_FECHA_FIN, ''DD-MM-YYYY'') )'||chr(10)||
'    OR (TRUNC(FECHA_INI) BETWEEN TO_DATE(:P21_FECHA_INI, ''DD-MM-YYYY'') AND TO_DATE(:P21_FECHA_FIN, ''DD-MM-YYYY''))'||chr(10)||
'	OR (TRUNC(FEC';

a1:=a1||'HA_FIN) BETWEEN TO_DATE(:P21_FECHA_INI, ''DD-MM-YYYY'') AND TO_DATE(:P21_FECHA_FIN, ''DD-MM-YYYY'')))'||chr(10)||
'	AND RESERVAS.ID_RECURSO = RECURSOS.ID_RECURSO '||chr(10)||
'GROUP BY RECURSO';

wwv_flow_api.create_chart_series_attr(
  p_id => 9568526432582120+wwv_flow_api.g_id_offset,
  p_region_id => 9566719655582116+wwv_flow_api.g_id_offset,
  p_series_id => 1,
  p_a001 => a1,
  p_a002 => '15',
  p_a003 => 'No se ha encontrado ningún dato.',
  p_a004 => '',
  p_a005 => '',
  p_a006 => '',
  p_a007 => '',
  p_a008 => '',
  p_a009 => '',
  p_a010 => '',
  p_a011 => '',
  p_a012 => '',
  p_a013 => '',
  p_a014 => '',
  p_a015 => '',
  p_a016 => '',
  p_a017 => '',
  p_a018 => '',
  p_a019 => '',
  p_a020 => '',
  p_a021 => '',
  p_a022 => '',
  p_a023 => '',
  p_a024 => '',
  p_a025 => '',
  p_a026 => '',
  p_a027 => '',
  p_a028 => '',
  p_a029 => '',
  p_a030 => '',
  p_a031 => '',
  p_a032 => '',
  p_a033 => '',
  p_a034 => '',
  p_a035 => '',
  p_a036 => '',
  p_a037 => '',
  p_a038 => '',
  p_a039 => '',
  p_a040 => '',
  p_a041 => '',
  p_a042 => '',
  p_a043 => '',
  p_a044 => '',
  p_a045 => '',
  p_a046 => '',
  p_a047 => '',
  p_a048 => '',
  p_a049 => '',
  p_a050 => '');
end;
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select ID_RESERVA, '||chr(10)||
'RECURSO,'||chr(10)||
'USUARIO,'||chr(10)||
'FECHA_INI,'||chr(10)||
'DAME_STRING_HORASMINUTOS(FECHA_INI)as hora_ini,'||chr(10)||
'FECHA_FIN,'||chr(10)||
'DAME_STRING_HORASMINUTOS(FECHA_FIN) as hora_fin'||chr(10)||
'from RESERVAS rs,'||chr(10)||
'     RECURSOS rc'||chr(10)||
'WHERE rc.ID_RECURSO = rs.ID_RECURSO';

wwv_flow_api.create_report_region (
  p_id=> 9197731777521070 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_name=> 'Listado de reservas',
  p_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'BEFORE_BOX_BODY',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 8906204756269992+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '8',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_break_cols             => '0',
  p_query_no_data_found          => 'No se ha encontrado ningún dato',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'N',
  p_query_asc_image              => 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_plug_query_strip_html        => 'Y',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9198030527521070 + wwv_flow_api.g_id_offset,
  p_region_id=> 9197731777521070 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'ID_RESERVA',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Editar',
  p_column_link=> 'f?p=#APP_ID#:22:#APP_SESSION#::::P22_ID_RESERVA:#ID_RESERVA#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9463506928355768 + wwv_flow_api.g_id_offset,
  p_region_id=> 9197731777521070 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'RECURSO',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Recurso',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9198218313521071 + wwv_flow_api.g_id_offset,
  p_region_id=> 9197731777521070 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'USUARIO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Usuario',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'RESERVAS',
  p_ref_column_name=> 'USUARIO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9198322772521071 + wwv_flow_api.g_id_offset,
  p_region_id=> 9197731777521070 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'FECHA_INI',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Fecha Inicio',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'RESERVAS',
  p_ref_column_name=> 'FECHA_INI',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9764305766346220 + wwv_flow_api.g_id_offset,
  p_region_id=> 9197731777521070 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'HORA_INI',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Hora Inicio',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9198410429521071 + wwv_flow_api.g_id_offset,
  p_region_id=> 9197731777521070 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'FECHA_FIN',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Fecha Fin',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'GESTION_RESERVAS_DESA',
  p_ref_table_name=> 'RESERVAS',
  p_ref_column_name=> 'FECHA_FIN',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 9764422240346223 + wwv_flow_api.g_id_offset,
  p_region_id=> 9197731777521070 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'HORA_FIN',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Hora Fin',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'declare'||chr(10)||
'f_ini date;'||chr(10)||
'f_fin date;'||chr(10)||
'tot number;'||chr(10)||
'texto varchar2(255);'||chr(10)||
'cursor c_recursos is'||chr(10)||
'  select recurso,'||chr(10)||
'         count(id_reserva) total'||chr(10)||
'    from reservas,'||chr(10)||
'         recursos'||chr(10)||
'    where recursos.id_recurso = reservas.id_recurso'||chr(10)||
'          and ((trunc(fecha_fin) between f_ini and f_fin) or '||chr(10)||
'               (trunc(fecha_fin) between f_ini and f_fin) or'||chr(10)||
'			   (trunc(fecha_ini) >= trunc(f_ini';

s:=s||') and fecha_fin <= f_fin))'||chr(10)||
'    group by recurso'||chr(10)||
'	order by total desc;			   '||chr(10)||
''||chr(10)||
'cursor c_usuarios is'||chr(10)||
'  select usuario,'||chr(10)||
'         count(id_reserva) total'||chr(10)||
'    from reservas'||chr(10)||
'    where (trunc(fecha_fin) between f_ini and f_fin) or '||chr(10)||
'          (trunc(fecha_fin) between f_ini and f_fin) or'||chr(10)||
'		  (trunc(fecha_ini) >= trunc(f_ini) and fecha_fin <= f_fin)'||chr(10)||
'    group by usuario'||chr(10)||
'	order by total desc;		'||chr(10)||
'';

s:=s||'	'||chr(10)||
'begin'||chr(10)||
'  f_ini := to_date(:P21_FECHA_INI, ''dd/mm/yyyy hh:mi am'');'||chr(10)||
'  f_fin := to_date(:P21_FECHA_FIN, ''dd/mm/yyyy hh:mi am'');'||chr(10)||
''||chr(10)||
'  if (:P21_TIPO = ''RECURSOS'') then'||chr(10)||
'     texto := ''<b><u>Reservas por recurso:</b></u><br>'';'||chr(10)||
'	 htp.p(texto);'||chr(10)||
'     tot := 0;'||chr(10)||
'     FOR cr_rec IN c_recursos'||chr(10)||
'     LOOP'||chr(10)||
'       tot := tot + 1;'||chr(10)||
'       texto := ''&nbsp&nbsp&nbsp* '' || cr_rec.recurso || '': '' || cr_rec.tot';

s:=s||'al || ''<br>'';'||chr(10)||
'	   htp.p(texto);'||chr(10)||
'     END LOOP;'||chr(10)||
'	 texto := ''<br><br>'' ||''<b><u>Total recursos reservados:</b></u><br>'';'||chr(10)||
'         htp.p(texto);'||chr(10)||
'         texto := ''&nbsp&nbsp&nbsp'' || tot;'||chr(10)||
'         htp.p(texto);'||chr(10)||
'  else'||chr(10)||
'     texto := ''<b><u>Reservas por usuario:</b></u><br>'';'||chr(10)||
'	 htp.p(texto);'||chr(10)||
'     tot := 0;'||chr(10)||
'     FOR cu_rec IN c_usuarios'||chr(10)||
'     LOOP'||chr(10)||
'       tot := tot + 1;'||chr(10)||
'       texto := ''&n';

s:=s||'bsp&nbsp&nbsp* '' || cu_rec.usuario || '': '' || cu_rec.total || ''<br>'';'||chr(10)||
'	   htp.p(texto);'||chr(10)||
'     END LOOP;'||chr(10)||
'	 texto := ''<br><br>'' ||''<b><u>Total usuarios que reservan:</b></u><br>'';'||chr(10)||
'     htp.p(texto);'||chr(10)||
'     texto := ''&nbsp&nbsp&nbsp'' || tot;'||chr(10)||
'     htp.p(texto);  '||chr(10)||
'  end if;'||chr(10)||
'end;';

wwv_flow_api.create_page_plug (
  p_id=> 9627331077343570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'Resumen datos',
  p_plug_template=> 8903509255269988+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 50,
  p_plug_display_column  => 2,
  p_plug_display_point   => 'BEFORE_BOX_BODY',
  p_plug_source  => s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 9550131261273220 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 10,
  p_button_plug_id => 9539713459182884+wwv_flow_api.g_id_offset,
  p_button_name    => 'APPLY_CHANGES',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Aplicar',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9198501226521071 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 30,
  p_button_plug_id => 9197731777521070+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=105:22:&SESSION.::NO:22',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>9550303725273224 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_branch_action=> 'f?p=&FLOW_ID.:21:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>9550131261273220+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>9480516716286200 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_branch_action=> 'f?p=&FLOW_ID.:21:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>9480308853286196+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9541306103199721 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_FECHA_INI',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 9539713459182884+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => 'to_char(to_date(to_char((sysdate-to_char(sysdate, ''dd'')+1),''dd-mm-yyyy'')), ''dd-mm-yyyy'')',
  p_item_default_type => 'PLSQL_EXPRESSION',
  p_prompt=>'Entre el',
  p_source_type=> 'STATIC',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY_DASH',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 10,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907109297269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9542322033204359 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_FECHA_FIN',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 9539713459182884+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => 'to_char(last_day(sysdate),''dd-mm-yyyy'')',
  p_item_default_type => 'PLSQL_EXPRESSION',
  p_prompt=>' &nbspy el',
  p_source_type=> 'STATIC',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY_DASH',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 10,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907109297269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9543426666215134 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_TIPO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 9539713459182884+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => '''USUARIOS''',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>' &nbsp &nbsp &nbsp &nbsp &nbspTipo informe',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX',
  p_lov => 'STATIC2:USUARIOS;USUARIOS,RECURSOS;RECURSOS',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'USUARIOS',
  p_lov_null_value=> 'USUARIOS',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907109297269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||':P21_TIPO := NVL(:P21_TIPO, ''USUARIOS'');'||chr(10)||
''||chr(10)||
':P21_FECHA_INI := NVL(:P21_FECHA_INI, to_char(to_date(to_char((sysdate-to_char(sysdate, ''dd'')+1),''dd-mm-yyyy''))));'||chr(10)||
''||chr(10)||
':P21_FECHA_FIN := NVL(:P21_FECHA_FIN, to_char(last_day(sysdate+1),''dd-mm-yyyy''));';

wwv_flow_api.create_page_process(
  p_id     => 9734618364659074 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Carga valores por defecto',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 21
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 22: GESTION RESERVAS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No hay ayuda disponible para esta página.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 22,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'GESTION RESERVAS',
  p_step_title=> 'GESTION RESERVAS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110530180956',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>22,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>22,p_text=>ph);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 9193502202521061 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 22,
  p_plug_name=> 'GESTIÓN DE RESERVAS',
  p_plug_template=> 8904204702269989+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 9193825943521061 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 22,
  p_button_sequence=> 30,
  p_button_plug_id => 9193502202521061+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Aplicar Cambios',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> '(:P22_USUARIO = :P1_USUARIO) OR (:P1_ROL=''ADMINISTRADOR'')',
  p_button_condition_type=> 'PLSQL_EXPRESSION',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9194007904521061 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 22,
  p_button_sequence=> 10,
  p_button_plug_id => 9193502202521061+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancelar',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9193719283521061 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 22,
  p_button_sequence=> 40,
  p_button_plug_id => 9193502202521061+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Crear',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P22_ID_RESERVA',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 9193904918521061 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 22,
  p_button_sequence=> 20,
  p_button_plug_id => 9193502202521061+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(8902417786269984+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Suprimir',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> '(:P22_USUARIO = :P1_USUARIO) OR (:P1_ROL=''ADMINISTRADOR'')',
  p_button_condition_type=> 'PLSQL_EXPRESSION',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>9194611239521062 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_branch_action=> 'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>9206100213746797 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_branch_action=> 'f?p=&FLOW_ID.:22:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>9205920021746797+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>9205010996741793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_branch_action=> 'f?p=&FLOW_ID.:22:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>9204802705741793+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9194801276521062 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_ID_RESERVA',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 9193502202521061+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Id Reserva',
  p_source=>'ID_RESERVA',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9195008754521064 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_ID_RECURSO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 9193502202521061+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Recurso',
  p_source=>'ID_RECURSO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'POPUP_KEY_LOV',
  p_named_lov=> 'RECURSOS',
  p_lov => 'SELECT RECURSO D, ID_RECURSO R FROM RECURSOS',
  p_lov_columns=> null,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'Seleccione recurso',
  p_lov_null_value=> '',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9195410705521065 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_USUARIO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 9193502202521061+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Usuario',
  p_source=>'USUARIO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'POPUP_KEY_LOV',
  p_named_lov=> 'USUARIOS',
  p_lov => 'SELECT USUARIO || '' - '' || APELLIDO1 || '' '' || APELLIDO2 || '', '' || NOMBRE D, USUARIO R '||chr(10)||
'  FROM USUARIOS, '||chr(10)||
'       EMPLEADOS'||chr(10)||
' WHERE EMPLEADOS.ID_EMPLEADO = USUARIOS.ID_EMPLEADO'||chr(10)||
'   AND EMPLEADOS.FECHA_BAJA IS NULL'||chr(10)||
' ORDER BY 1',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 6,
  p_cMaxlength=> 6,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9195828989521065 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_FECHA_INI',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 9193502202521061+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Fecha y hora de inicio',
  p_source=>'FECHA_INI',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY_HH_MI',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>9196220644521067 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 22,
  p_name=>'P22_FECHA_FIN',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 9193502202521061+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Fecha y hora de finalización',
  p_source=>'FECHA_FIN',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY_HH_MI',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8906815004269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9195227690521064 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_validation_name => 'P22_ID_RECURSO not null',
  p_validation_sequence=> 20,
  p_validation => 'P22_ID_RECURSO',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Id Recurso debe tener algún valor.',
  p_associated_item=> 9195008754521064 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9195616279521065 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_validation_name => 'P22_USUARIO not null',
  p_validation_sequence=> 30,
  p_validation => 'P22_USUARIO',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Usuario debe tener algún valor.',
  p_associated_item=> 9195410705521065 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9371521276143030 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_validation_name => 'P22_FECHA_INI not null',
  p_validation_sequence=> 40,
  p_validation => 'P22_FECHA_INI',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Debe indicar fecha y hora de inicio de la reserva',
  p_associated_item=> 9195828989521065 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9372815520150867 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_validation_name => 'P22_FECHA_FIN not null',
  p_validation_sequence=> 50,
  p_validation => 'P22_FECHA_FIN',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Debe indicar fecha y hora de fin de la reserva',
  p_associated_item=> 9196220644521067 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9376709988224925 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_validation_name => 'P22_USUARIO con permisos',
  p_validation_sequence=> 60,
  p_validation => '(:P22_USUARIO = :APP_USER) OR (ROL_USUARIO(:APP_USER)=''ADMINISTRADOR'' AND ES_USUARIO_ACTIVO(:P22_USUARIO ))',
  p_validation_type => 'PLSQL_EXPRESSION',
  p_error_message => 'No tiene permisos para crear reservas para este usuario',
  p_associated_item=> 9195410705521065 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9689131547313187 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_validation_name => 'P22_ID_RECURSO disponible',
  p_validation_sequence=> 70,
  p_validation => 'recurso_disponible('||chr(10)||
'   :P22_ID_RECURSO,'||chr(10)||
'   TO_DATE(:P22_FECHA_INI, ''DD/MM/YYYY HH:MI AM''),'||chr(10)||
'   TO_DATE(:P22_FECHA_FIN, ''DD/MM/YYYY HH:MI AM'')'||chr(10)||
'   )',
  p_validation_type => 'PLSQL_EXPRESSION',
  p_error_message => 'El recurso no se encuentra disponible en esas fechas',
  p_associated_item=> 9195008754521064 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9751925430096381 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_validation_name => 'P22_FECHA_INI posterior',
  p_validation_sequence=> 80,
  p_validation => 'TO_DATE(:P22_FECHA_INI, ''DD/MM/YYYY HH:MI AM'') > SYSDATE',
  p_validation_type => 'PLSQL_EXPRESSION',
  p_error_message => 'La fecha de inicio de la reserva ha de ser posterior a la fecha actual',
  p_associated_item=> 9195828989521065 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9748820142038021 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_validation_name => 'P22_FECHA_FIN posterior',
  p_validation_sequence=> 90,
  p_validation => 'TO_DATE(:P22_FECHA_FIN, ''DD/MM/YYYY HH:MI AM'')> SYSDATE',
  p_validation_type => 'PLSQL_EXPRESSION',
  p_error_message => 'La fecha de fin de la reserva ha de ser posterior a la fecha actual',
  p_associated_item=> 9196220644521067 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 9750126638058878 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_validation_name => 'fechas válidas',
  p_validation_sequence=> 100,
  p_validation => 'TO_DATE(:P22_FECHA_INI, ''DD/MM/YYYY HH:MI AM'') < TO_DATE(:P22_FECHA_FIN, ''DD/MM/YYYY HH:MI AM'')',
  p_validation_type => 'PLSQL_EXPRESSION',
  p_error_message => 'La fecha de inicio debe ser anterior a la fecha de fin de la reserva',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:RESERVAS:P22_ID_RESERVA:ID_RESERVA';

wwv_flow_api.create_page_process(
  p_id     => 9196603542521067 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from RESERVAS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido recuperar la fila.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:RESERVAS:P22_ID_RESERVA:ID_RESERVA|IUD';

wwv_flow_api.create_page_process(
  p_id     => 9196804805521068 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of RESERVAS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'No se ha podido procesar la fila de la tabla RESERVAS.',
  p_process_success_message=> 'Acción procesada.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'22';

wwv_flow_api.create_page_process(
  p_id     => 9197002129521068 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 22,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>9193904918521061 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 22
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 101: Conectar
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 101,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Conectar',
  p_alias  => 'LOGIN',
  p_step_title=> 'Conectar',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => 8901401939269952+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GESTION_RESERVAS_DESA',
  p_last_upd_yyyymmddhh24miss => '20110529143351',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'<br><b>Es preciso que se identifique en la aplicación para poder hacer uso de la misma. Si no dispone de usuario, o no recuerda su contraseña póngase en contacto con el administrador de la misma</b><br><br>';

wwv_flow_api.create_page_plug (
  p_id=> 9777526993834880 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Aviso',
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'BEFORE_BOX_BODY',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 8908909714269998 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Conectar',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 2,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Introduzca su nombre de usuario, si no lo recuerda o no dispone de él póngase en contacto con el administrador de la aplicación';

wwv_flow_api.create_page_item(
  p_id=>8909028262270000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 8908909714269998+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Nombre de Usuario',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 2,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Introduzca su ontraseña, si no la recuerda póngase en contacto con el administrador de la aplicación';

wwv_flow_api.create_page_item(
  p_id=>8909111657270000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 8908909714269998+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Contraseña',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'PASSWORD_WITH_ENTER_SUBMIT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 8907201370269992+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8909218517270000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 8908909714269998+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default => 'Conectar',
  p_prompt=>'Conectar',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(8902417786269984 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||chr(10)||
'owa_util.mime_header(''text/html'', FALSE);'||chr(10)||
'owa_cookie.send('||chr(10)||
'    name=>''LOGIN_USERNAME_COOKIE'','||chr(10)||
'    value=>lower(:P101_USERNAME));'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 8909429187270000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Definir Cookie de Nombre de Usuario',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'wwv_flow_custom_auth_std.login('||chr(10)||
'    P_UNAME       => :P101_USERNAME,'||chr(10)||
'    P_PASSWORD    => :P101_PASSWORD,'||chr(10)||
'    P_SESSION_ID  => v(''APP_SESSION''),'||chr(10)||
'    P_FLOW_PAGE   => :APP_ID||'':1'''||chr(10)||
'    );';

wwv_flow_api.create_page_process(
  p_id     => 8909313462270000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 8909623864270000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Limpiar Caché de Páginas',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||chr(10)||
'    v varchar2(255) := null;'||chr(10)||
'    c owa_cookie.cookie;'||chr(10)||
'begin'||chr(10)||
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');'||chr(10)||
'   :P101_USERNAME := c.vals(1);'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 8909526465270000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Obtener Cookie de Nombre de Usuario',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

---------------------------------------
prompt  ...Lists
--
---------------------------------------
prompt  ...Breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 8909707843270000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Ruta de navegación ');
 
wwv_flow_api.create_menu_option (
  p_id=> 8910127370270000 + wwv_flow_api.g_id_offset,
  p_menu_id=> 8909707843270000 + wwv_flow_api.g_id_offset,
  p_parent_id               => 0,
  p_option_sequence=> 10,
  p_short_name     => 'Página 1',
  p_long_name      => '',
  p_link           => 'f?p=105:1:&SESSION.',
  p_page_id        => 1,
  p_also_current_for_pages  => '');
 
null;
 
end;
/

---------------------------------------
prompt  ...Page Templates for application: 105
--
prompt  ......Page template 8901214746269941
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>'||chr(10)||
'  </td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td colsp';

c3:=c3||'an="2" class="t6Tabs"><table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'<div>#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" class="t6SidebarLayout" width="100%" summary="" height="70%">'||chr(10)||
' <tr>'||chr(10)||
'   <td valign="top" width="150">'||chr(10)||
'     <table cellpadding="0" cellspacing="0" width="100%" class="t6SidebarColor" summary="">'||chr(10)||
'   ';

c3:=c3||'     <tr>'||chr(10)||
'          <td><br /></td>'||chr(10)||
'          <td width="5" valign="top" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarUpperRight.gif" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'         <td valign="top" class="t6SideBarNav">#REGION_POSITION_02#</td>'||chr(10)||
'         <td width="5" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><';

c3:=c3||'br /></td>'||chr(10)||
'       </tr>'||chr(10)||
'       <tr bgcolor="#FFFFFF">'||chr(10)||
'          <td valign="top"><img width="100%" height="14" src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomMiddle.gif" alt="" /></td> '||chr(10)||
'          <td valign="top" width="5"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomRight.gif" alt="" /><br /><br /></td>'||chr(10)||
'       </tr>  '||chr(10)||
'     </table>'||chr(10)||
'   </td>'||chr(10)||
'   <td class="t6ContentBody" valign="top">#SUCCES';

c3:=c3||'S_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'  <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 8901214746269941 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><a href="#TAB_LINK#" class="t6standardtabcurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><a href="#TAB_LINK#" class="t6standardtabnoncurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentLeft.gif" alt="" /></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabcurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentRight.gif" alt="" /></td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentLeft.gif" alt="" /></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentRight.gif" alt="" /></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#">#TEXT#</a>#EDIT#&nbsp;&nbsp;',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 18,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 8901324817269949
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0"><tr>#TAB_CELLS#</tr></table></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6Verti';

c3:=c3||'calBar"><img src="#IMAGE_PREFIX#themes/theme_6/ParentTabBase.gif" alt="" /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'<div>#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" class="t6SidebarLayout" width="100%" summary="" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'  <td valign="top" width="150">'||chr(10)||
'    <table cellpadding="0" cellspacing="0" width="100%" class="t6SidebarColor" summary="">'||chr(10)||
'       <tr>'||chr(10)||
'         <td><br />';

c3:=c3||'</td>'||chr(10)||
'         <td width="15" valign="top" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarUpperRight.gif" alt=""></td>'||chr(10)||
'       </tr>'||chr(10)||
'       <tr>'||chr(10)||
'        <td valign="top" class="t6SideBarNav">#REGION_POSITION_02#</td>'||chr(10)||
'        <td width="15" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><br /></td>'||chr(10)||
'      </tr>'||chr(10)||
'      <tr bg';

c3:=c3||'color="#FFFFFF">'||chr(10)||
'         <td valign="top"><img width="100%" height="14" src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomMiddle.gif" alt=""></td> '||chr(10)||
'         <td valign="top" width="15"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomRight.gif" alt=""><br /><br /></td>'||chr(10)||
'      </tr>  '||chr(10)||
'    </table>'||chr(10)||
'  </td>'||chr(10)||
'  <td class="t6ContentBody" valign="top"><div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS';

c3:=c3||'_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'  <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 8901324817269949 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentLeft.gif" alt="LeftCurrentTab"></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabcurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentRight.gif" alt="RightCurrentTab"></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentLeft.gif" alt="LeftNonCurrentTab"></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentRight.gif" alt="RightNonCurrentTab"></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 16,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 8901401939269952
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'    #HEAD#'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>'||chr(10)||
'';

c3:=c3||'<div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<table class="t6Login" align="center" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t6Body">#BOX_BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 8901401939269952 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '#BODY_TITLE#',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 6,
  p_theme_class_id => 6,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 8901513258269952
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'</head>'||chr(10)||
'<body bgcolor="#FFFFFF" #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<br />#BOX_BODY#';

wwv_flow_api.create_template(
  p_id=> 8901513258269952 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success"><img src="#IMAGE_PREFIX#themes/theme_6/success_w.gif" width="24" height="23" alt="" class="success" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="0" cellspacing="0" border="0">'||chr(10)||
'<tr><td>&nbsp;&nbsp;</td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 8901604279269952
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><br /></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6VerticalBar"><img src="#IMAGE_PREFIX#themes/theme_6/ParentTabBase.';

c3:=c3||'gif" alt="" /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'<div>#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" class="t6SidebarLayout" width="100%" summary="" height="80%">'||chr(10)||
' <tr>'||chr(10)||
'   <td valign="top" width="150">'||chr(10)||
'     <table cellpadding="0" cellspacing="0" width="100%" class="t6SidebarColor" summary="">'||chr(10)||
'        <tr>'||chr(10)||
'          <td><br /></td>'||chr(10)||
'          <td width="5" valign="top" background="#';

c3:=c3||'IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarUpperRight.gif"></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'         <td valign="top" class="t6SideBarNav">#REGION_POSITION_02#</td>'||chr(10)||
'         <td width="5" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif">&nbsp;</td>'||chr(10)||
'       </tr>'||chr(10)||
'       <tr bgcolor="#FFFFFF">'||chr(10)||
'          <td valign="top">'||chr(10)||
'            <';

c3:=c3||'img width="100%" height="14" src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomMiddle.gif"></td> '||chr(10)||
'          <td valign="top" width="5"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomRight.gif"><br /><br /></td>'||chr(10)||
'       </tr>  '||chr(10)||
'     </table>'||chr(10)||
'   </td>'||chr(10)||
'   <td class="t6ContentBody" valign="top"><div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION';

c3:=c3||'_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'   <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 8901604279269952 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 17,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 8901703110269980
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" border="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>'||chr(10)||
'  </td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'';

c3:=c3||'  <td colspan="2" class="t6Tabs"><table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr><td colspan="2">#REGION_POSITION_01#</td></tr> '||chr(10)||
'</table>'||chr(10)||
'<table width="100%" summary="" height="70%">'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6ContentBody">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGIO';

c3:=c3||'N_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'  <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 8901703110269980 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><a href="#TAB_LINK#" class="t6standardtabcurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><a href="#TAB_LINK#" class="t6standardtabnoncurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentLeft.gif" alt=""></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6standardtabcurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentRight.gif" alt="RightCurrentTab"></td>'||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentLeft.gif" alt=""></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6standardtabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentRight.gif" alt=""></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '8');
end;
 
null;
 
end;
/

prompt  ......Page template 8901806046269980
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" cla';

c3:=c3||'ss="t6VerticalBar"><img src="#IMAGE_PREFIX#themes/theme_6/ParentTabBase.gif" alt="" /></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'   <td colspan="2">#REGION_POSITION_01#</td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" summary="" height="80%">'||chr(10)||
' <tr>'||chr(10)||
'  <td valign="top" class="t6ContentBody"><div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04##R';

c3:=c3||'EGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'  <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 8901806046269980 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentLeft.gif" alt="" /></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabcurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentRight.gif" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentLeft.gif" alt="" /></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentRight.gif" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#">#TEXT#</a>#EDIT#&nbsp;&nbsp;',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 8901910442269980
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'</head>'||chr(10)||
'<body bgcolor="#FFFFFF" #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'#LOGO#'||chr(10)||
'<br />#BOX_BODY#';

wwv_flow_api.create_template(
  p_id=> 8901910442269980 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success"><img src="#IMAGE_PREFIX#themes/theme_6/success_w.gif" width="24" height="23" alt="" class="t6success" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="0" cellspacing="0" border="0">'||chr(10)||
'<tr><td>&nbsp;&nbsp;</td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

prompt  ......Page template 8902008364269980
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
'    <tr>'||chr(10)||
'        <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
'    </tr>'||chr(10)||
'    <tr>'||chr(10)||
'        <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'        <td align="right" valign="bottom"><br /></td>'||chr(10)||
'    </tr>'||chr(10)||
'    <tr>'||chr(10)||
'        <td colspan="2" class="t6VerticalBar"><img src="#IMA';

c3:=c3||'GE_PREFIX#themes/theme_6/ParentTabBase.gif" alt="" /></td>'||chr(10)||
'    </tr>'||chr(10)||
'    <tr>'||chr(10)||
'        <td colspan="2">#REGION_POSITION_01#</td>'||chr(10)||
'    </tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" cellspacing="0" width="100%" summary="" height="80%">'||chr(10)||
'    <tr>'||chr(10)||
'        <td valign="top" class="t6ContentBody"><div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION';

c3:=c3||'_POSITION_04##REGION_POSITION_02##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'        <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
'    </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 8902008364269980 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

---------------------------------------
prompt  ...Button Templates
--
prompt  ......Button Template 8902103194269984
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t6ButtonAlternative1">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>8902103194269984 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 1',
  p_translate_this_template => 'N',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 8902228364269984
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" class="t6ButtonAlternative3" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6ButtonAlternative3Left" width="3"></td>'||chr(10)||
'  <td style="padding-left: 10px; padding-right: 10px;"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'  <td class="t6ButtonAlternative3Right" width="3"></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'';

wwv_flow_api.create_button_templates (
  p_id=>8902228364269984 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 3',
  p_translate_this_template => 'N',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 8902312983269984
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t6ButtonAlternative2">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>8902312983269984 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 2',
  p_translate_this_template => 'N',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 8902417786269984
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t6Button">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>8902417786269984 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_template_comment       => '');
end;
/
---------------------------------------
prompt  ...Region Templates
--
prompt  ......Region Template 8902519523269984
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ButtonRegionWithTitle" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8902519523269984 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region with Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8902519523269984 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8902619605269986
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ListRegionWithIcon" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td colspan="2" class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td colspan="2" class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_6/ChartList.gif" />&nbsp;</td>'||chr(10)||
'  <td valign="top" class="t6Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8902619605269986 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart List',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8902619605269986 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8902714391269986
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6BracketedRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td align="center" style="border:1px solid black;border-bottom:none;">&nbsp;</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8902714391269986 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Bracketed Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 18,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8902714391269986 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8902822199269986
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6RegionWithoutButtonsAndTitle" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8902822199269986 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Buttons and Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 19,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8902822199269986 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8902912252269986
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ReportsRegion100PercentWidth" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
''||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8902912252269986 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region 100% Width',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 13,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8902912252269986 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903019716269986
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ButtonRegionWithoutTitle" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903019716269986 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region without Title',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 17,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903019716269986 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903104745269986
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table width="100%" cellpadding="0" cellspacing="0" border="0"  class="t6HideAndShowRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t6Header">#TITLE#<a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#htmldb/builder/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#htmldb/builder/rollup_minus_dgray.gif'');" class="htmldbHideShowMinLink"><img src="#IMAGE_PRE';

t:=t||'FIX#htmldb/builder/rollup_plus_dgray.gif" id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><div class="t6Hide" id="region#REGION_SEQUENCE_ID#">'||chr(10)||
'<div class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</div>'||chr(10)||
'<div class="t6Body">#BODY#</div>'||chr(10)||
'</div></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903104745269986 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Hide and Show Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903104745269986 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903213217269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6BorderlessRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903213217269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Borderless Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 6,
  p_theme_class_id => 7,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903213217269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903315396269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ListRegionWithIcon" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
' <td><td class="t6Body"><img src="#IMAGE_PREFIX#themes/theme_6/provisioning_reports.gif" />#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903315396269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'List Region with Icon',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903315396269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903410344269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6NavigationRegionAlternative1" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903410344269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region, Alternative 1',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 16,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903410344269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903509255269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ReportsRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903509255269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 9,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903509255269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903631076269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6WizardRegionWithIcon" id="#REGION_ID#" summary="">'||chr(10)||
'<tr>'||chr(10)||
'  <td class="t6Header">#TITLE#</td>'||chr(10)||
'  <td class="t6ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td colspan="2" class="t6Body">'||chr(10)||
'  <table width="100%" summary="">'||chr(10)||
'    <tr><td><img src="#IMAGE_PREFIX#themes/theme_6/WizardIcon.gif">&nbsp;</td><td>#BODY#</td></tr>'||chr(10)||
'  <';

t:=t||'/table>'||chr(10)||
' </td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903631076269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region with Icon',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 20,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903631076269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903731797269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t6BreadcrumbRegion" id="#REGION_ID#">#BODY#</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903731797269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Breadcrumb Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 6,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903731797269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903802878269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6NavigationRegion" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903802878269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903802878269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8903929852269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ReportsRegionAlternative1" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8903929852269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region, Alternative 1',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 10,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8903929852269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8904020393269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6RegionWithoutTitle" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8904020393269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 11,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8904020393269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8904100610269988
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ListRegionWithIcon" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td colspan="2" class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td colspan="2" class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_6/ReportList.gif" alt="Reports" /></td>'||chr(10)||
'  <td valign="top" class="t6Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8904100610269988 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report List',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8904100610269988 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8904204702269989
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6FormRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_6/t.gif" width="400" height="1"></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8904204702269989 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Form Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 6,
  p_theme_class_id => 8,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8904204702269989 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8904319875269989
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6SidebarRegion" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8904319875269989 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8904319875269989 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8904430559269989
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6SidebarRegionAlternative1" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8904430559269989 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region, Alternative 1',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8904430559269989 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8904508307269989
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ChartRegion" id="#REGION_ID#" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6Header">#TITLE#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6Body">#BODY#</td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8904508307269989 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 30,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8904508307269989 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 8904614182269989
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6WizardRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t6Header">#TITLE#</td>'||chr(10)||
'<td class="t6ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td colspan="2" class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 8904614182269989 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 12,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 8904614182269989 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

---------------------------------------
prompt  ...List Templates
--
prompt  ......List Template 8905201497269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t6current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t2:=t2||'<td class="t6noncurrent"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8905201497269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table class="t6HorozontalImagesWithLabelList" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8905307387269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td align="center" class="t6current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></td></tr>';

t2:=t2||'<tr><td align="center"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8905307387269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table class="t6VerticalImagesList" summary="">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8905419911269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a class="t6current" href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8905419911269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t6VerticalOrderedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8905501149269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t6current"><a href="#LINK#" class="t6current">#TEXT#</a></td>';

t2:=t2||'<td class="t6noncurrent"><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8905501149269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<table class="t6HorizontalLinksList" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8905616786269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a class="t6current" href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a class="t6noncurrent" href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8905616786269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t6VerticalUnorderedListWithBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8905719370269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t6Button">#TEXT#</a>';

t2:=t2||'<a href="#LINK#" class="t6Button">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8905719370269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 6,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="t6ButtonList">',
  p_list_template_after_rows=>'</div><br />',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8905809608269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td><a class="t6current" href="#LINK#">#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#">#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8905809608269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 6,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<table class="t6VerticalUnorderedListWithoutBullets" summary="">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8905932155269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td><a class="t6current" href="#LINK#">#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#">#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8905932155269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 6,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<table class="t6VerticalSidebarList" cellpadding="0" cellspacing="0" width="100%" summary="">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8906009733269992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<img src="#IMAGE_PREFIX#themes/theme_6/WizardDownArrow.gif" width="7" height="12" alt="Down" /><br />'||chr(10)||
'<div class="current">#TEXT#</div>';

t2:=t2||'<img src="#IMAGE_PREFIX#themes/theme_6/WizardDownArrow.gif" width="7" height="12" alt="Down" /><br />'||chr(10)||
'<div class="noncurrent">#TEXT#</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8906009733269992 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 6,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="t6WizardProgressList">'||chr(10)||
'<div class="noncurrent">Start</div>',
  p_list_template_after_rows=>'<div>&DONE.</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8904705505269989
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>8904705505269989 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tree List',
  p_theme_id  => 6,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8904801997269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem"><a href="#" onclick="javascript:app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)">#TEXT#</a></li>';

t6:=t6||'<li class="dhtmlMenuItem"><a href="#" onclick="javascript:app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)">#TEXT#</a></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>8904801997269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Menu with Sublist',
  p_theme_id  => 6,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8904913092269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td><img src="#IMAGE_PREFIX#themes/theme_6/ListTabCurrentLeft.gif" alt="LeftCurrentTab"></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/ListTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6current" href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/ListTabCurrentRight.gif" alt="RightCurrentTab"></td>';

t2:=t2||'<td><img src="#IMAGE_PREFIX#themes/theme_6/ListTabNonCurrentLeft.gif" alt="LeftNonCurrentTab"></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/ListTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6noncurrent" href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/ListTabNonCurrentRight.gif" alt="RightNonCurrentTab"></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>8904913092269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 6,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<table class="t6TabbedNavigationList" cellspacing="0" cellpadding="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8905014692269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>8905014692269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML List (Image) with Sublist',
  p_theme_id  => 6,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu" style="display:none;">'||chr(10)||
'<li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 8905125252269991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>8905125252269991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 6,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Report Templates
--
prompt  ......Row Template 8906126245269992
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 8906126245269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6borderless">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header" #ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</td>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 8906126245269992 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 8906204756269992
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2:=c2||'<td class="t6dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 8906204756269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6standardalternatingrowcolors">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 8906204756269992 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 8906311017269992
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 8906311017269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6standard">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table><script language=JavaScript type=text/javascript>'||chr(10)||
'<!--'||chr(10)||
'init_htmlPPRReport(''#REGION_ID#'');'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>'||chr(10)||
'</htmldb:#REGION_ID#>'||chr(10)||
'</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif" /></a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif" /></a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif" /></a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif" /></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 8906311017269992 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 8906426430269992
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 8906426430269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6standard">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 8906426430269992 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 8906532196269992
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="t6header">#COLUMN_HEADER#</th><td class="t6data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 8906532196269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6valueattributepairs">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_theme_id  => 6,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 8906532196269992 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'',
  p_row_template_after_last =>'<tr><td colspan="2">&nbsp;</td></tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 8906622910269992
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data" #ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 8906622910269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="t6contentcollapse"><table cellpadding="0" border="0" cellspacing="0" summary="" width="100%">#TOP_PAGINATION#</table><table class="t6bottomborderonly" border="0" cellpadding="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 8906622910269992 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 8906705353269992
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 8906705353269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellspacing="0" cellpadding="0" width="100%" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr><td><ul class="t6OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul></td></tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Label Templates
--
prompt  ......Field Template 8906923260269992
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 8906923260269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_6/required1.gif" alt="Required Field Icon" /><span class="t6RequiredLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 8907031586269992
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 8907031586269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t6NoLabel">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 8907109297269992
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 8907109297269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><span class="t6OptionalLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 8907201370269992
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 8907201370269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><a class="t6OptionalLabelWithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 8906815004269992
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 8906815004269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_6/required1.gif" alt="Required Field Icon" /><a class="t6RequiredLabelWithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Breadcrumb Templates
--
prompt  ......Breadcrumb Template 8907319290269992
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 8907319290269992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t6HierarchicalMenu">',
  p_current_page_option=>'<li><a style="font-weight:bold;" href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

prompt  ......Breadcrumb Template 8907401052269994
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 8907401052269994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<div class="t6BreadcrumbMenu">',
  p_current_page_option=>'#NAME#',
  p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'&nbsp;&gt;&nbsp;',
  p_after_last=>'</div>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Popup List of Values Templates
--
prompt  ......Popup LOV Template 8908129157269994
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 8908129157269994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif',
  p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme.css" type="text/css">'||chr(10)||
'',
  p_page_body_attr=>'onloadoad="first_field()" style="margin:0;"',
  p_before_field_text=>'<div class="t6PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>10,
  p_before_result_set=>'<div class="t6PopupBody">',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Calendar Templates
--
prompt  ......Calendar Template 8907514949269994
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 8907514949269994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<td width="60">#IDY#</td>',
  p_month_title_format=> '<table class="t6StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="middle" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>'||chr(10)||
'  </tr>',
  p_month_open_format=> '  <tr>'||chr(10)||
'    <td align="center"  class="formRegionHeader"><table cellspacing="0" cellpadding="0" class="condensedTable" summary="">',
  p_month_close_format=> '    </table></td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold">'||chr(10)||
'',
  p_day_open_format=> '<td valign="top"  width="60" class="formRegionBody">'||chr(10)||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="formRegionBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold">'||chr(10)||
'',
  p_weekend_open_format => '<td valign="top" class="formRegionBodyWE">'||chr(10)||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ......Calendar Template 8907700801269994
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 8907700801269994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<td width="40" class="simpleHeadings">#IDY#</td>',
  p_month_title_format=> '<table class="t6SimpleCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="middle" class="simpleHeader">#IMONTH#&nbsp;#YYYY#</td>'||chr(10)||
'  </tr>'||chr(10)||
'',
  p_month_open_format=> '  <tr>'||chr(10)||
'    <td align="center" class="simpleHeader"><table cellspacing="0" cellpadding="0" class="simpleTable" summary="">',
  p_month_close_format=> '    </table></td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold;">'||chr(10)||
'',
  p_day_open_format=> '<td valign="top" class="simpleBody">'||chr(10)||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="simpleBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold;">'||chr(10)||
'',
  p_weekend_open_format => '<td valign="top" class="simpleBodyWE">'||chr(10)||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top" class="simpleBody">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ......Calendar Template 8907925782269994
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 8907925782269994 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<td width="100">#IDAY#</td>',
  p_month_title_format=> '<table class="t6StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="middle" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_month_open_format=> '<table class="t6StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="center"  class="formRegionHeader"><table cellspacing="2" cellpadding="2" summary="">',
  p_month_close_format=> '    </table></td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold">'||chr(10)||
'',
  p_day_open_format=> '<td valign="top" width="100" class="formRegionBody">'||chr(10)||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="formRegionBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold">'||chr(10)||
'',
  p_weekend_open_format => '<td valign="top" class="formRegionBodyWE">'||chr(10)||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

---------------------------------------
prompt  ...Application Themes
--
prompt  ......Theme 8908216863269995
begin
wwv_flow_api.create_theme (
  p_id                        =>8908216863269995 + wwv_flow_api.g_id_offset,
  p_flow_id                   =>wwv_flow.g_flow_id,
  p_theme_id  => 6,
  p_theme_name=>'Southwest',
  p_default_page_template=>8901806046269980 + wwv_flow_api.g_id_offset,
  p_error_template=>8901806046269980 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>8901910442269980 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template            =>8901401939269952 + wwv_flow_api.g_id_offset,
  p_default_button_template   =>8902417786269984 + wwv_flow_api.g_id_offset,
  p_default_region_template   =>8903509255269988 + wwv_flow_api.g_id_offset,
  p_default_chart_template    =>8904508307269989 + wwv_flow_api.g_id_offset,
  p_default_form_template     =>8904204702269989 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>8903509255269988 + wwv_flow_api.g_id_offset,
  p_default_tabform_template  =>8903509255269988 + wwv_flow_api.g_id_offset,
  p_default_wizard_template   =>8904614182269989 + wwv_flow_api.g_id_offset,
  p_default_menur_template    =>8903731797269988 + wwv_flow_api.g_id_offset,
  p_default_listr_template    =>8903929852269988 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>8906204756269992 + wwv_flow_api.g_id_offset,
  p_default_label_template    =>8907201370269992 + wwv_flow_api.g_id_offset,
  p_default_menu_template     =>8907401052269994 + wwv_flow_api.g_id_offset,
  p_default_calendar_template =>8907925782269994 + wwv_flow_api.g_id_offset,
  p_default_list_template     =>8905616786269991 + wwv_flow_api.g_id_offset,
  p_default_option_label      =>8907201370269992 + wwv_flow_api.g_id_offset,
  p_default_required_label    =>8906815004269992 + wwv_flow_api.g_id_offset);
end;
/
---------------------------------------
prompt  ...Build Options used by APPLICATION 105
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Messages Used by Application: 105
--
---------------------------------------
prompt  ...Language Maps for Application 105
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Shortcuts
--
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'¿Desea realizar esta acción de supresión?';

wwv_flow_api.create_shortcut (
 p_id=> 8916606532349682 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'DELETE_CONFIRM_MSG',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'¿Seguro que desea salir de esta página sin guardar?';

wwv_flow_api.create_shortcut (
 p_id=> 8934025065385667 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'OK_TO_GET_NEXT_PREV_PK_VALUE',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
 
null;
 
end;
/

---------------------------------------
prompt  ...Configurations for application105
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...WEB SERVICES (9iR2 or better)
--
---------------------------------------
prompt  ...Authorization Schemes
--
prompt  ......Authentication Schemes 9274304547088742
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return autentica_usuario';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 9274304547088742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'AUTENTICA_APLICACION',
  p_description=>'',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

prompt  ......Authentication Schemes 9713128561671945
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return autentica_usuario';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 9713128561671945 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Copia de  AUTENTICA_APLICACION',
  p_description=>'',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'-BUILTIN-',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_reference_id=> 9274304547088742,
  p_required_patch=>'');
end;
null;
 
end;
/

prompt  ......Authentication Schemes 8908310971269997
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'-BUILTIN-';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 8908310971269997 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'HTML DB',
  p_description=>'Utilice las credenciales de la cuenta interna Application Express y la página de conexión en esta aplicación.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

prompt  ......Authentication Schemes 8908409346269997
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 8908409346269997 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE',
  p_description=>'Usar autenticación de base de datos (el usuario se identifica mediante el DAD).',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

prompt  ......Authentication Schemes 8908510215269997
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return false; end;--';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 8908510215269997 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE ACCOUNT',
  p_description=>'Utilice las credenciales de la cuenta de base de datos.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Application Entry Points
--
 
begin
 
null;
 
end;
/

commit;
commit;
begin 
execute immediate 'alter session set nls_numeric_characters='''||wwv_flow_api.g_nls_numeric_chars||'''';
end;
/
set verify on
set feedback on
prompt  ...done
