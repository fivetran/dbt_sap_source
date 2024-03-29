{% macro get_pa0001_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_rowid", "datatype": dbt.type_numeric()},
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "abkrs", "datatype": dbt.type_string()},
    {"name": "aedtm", "datatype": dbt.type_string()},
    {"name": "ansvh", "datatype": dbt.type_string()},
    {"name": "begda", "datatype": dbt.type_string()},
    {"name": "btrtl", "datatype": dbt.type_string()},
    {"name": "budget_pd", "datatype": dbt.type_string()},
    {"name": "bukrs", "datatype": dbt.type_string()},
    {"name": "ename", "datatype": dbt.type_string()},
    {"name": "endda", "datatype": dbt.type_string()},
    {"name": "fistl", "datatype": dbt.type_string()},
    {"name": "fkber", "datatype": dbt.type_string()},
    {"name": "flag1", "datatype": dbt.type_string()},
    {"name": "flag2", "datatype": dbt.type_string()},
    {"name": "flag3", "datatype": dbt.type_string()},
    {"name": "flag4", "datatype": dbt.type_string()},
    {"name": "geber", "datatype": dbt.type_string()},
    {"name": "grant_nbr", "datatype": dbt.type_string()},
    {"name": "grpvl", "datatype": dbt.type_string()},
    {"name": "gsber", "datatype": dbt.type_string()},
    {"name": "histo", "datatype": dbt.type_string()},
    {"name": "itbld", "datatype": dbt.type_string()},
    {"name": "itxex", "datatype": dbt.type_string()},
    {"name": "juper", "datatype": dbt.type_string()},
    {"name": "kokrs", "datatype": dbt.type_string()},
    {"name": "kostl", "datatype": dbt.type_string()},
    {"name": "mandt", "datatype": dbt.type_string()},
    {"name": "mstbr", "datatype": dbt.type_string()},
    {"name": "objps", "datatype": dbt.type_string()},
    {"name": "ordex", "datatype": dbt.type_string()},
    {"name": "orgeh", "datatype": dbt.type_string()},
    {"name": "otype", "datatype": dbt.type_string()},
    {"name": "pernr", "datatype": dbt.type_string()},
    {"name": "persg", "datatype": dbt.type_string()},
    {"name": "persk", "datatype": dbt.type_string()},
    {"name": "plans", "datatype": dbt.type_string()},
    {"name": "preas", "datatype": dbt.type_string()},
    {"name": "refex", "datatype": dbt.type_string()},
    {"name": "rese1", "datatype": dbt.type_string()},
    {"name": "rese2", "datatype": dbt.type_string()},
    {"name": "sacha", "datatype": dbt.type_string()},
    {"name": "sachp", "datatype": dbt.type_string()},
    {"name": "sachz", "datatype": dbt.type_string()},
    {"name": "sbmod", "datatype": dbt.type_string()},
    {"name": "seqnr", "datatype": dbt.type_string()},
    {"name": "sgmnt", "datatype": dbt.type_string()},
    {"name": "sname", "datatype": dbt.type_string()},
    {"name": "sprps", "datatype": dbt.type_string()},
    {"name": "stell", "datatype": dbt.type_string()},
    {"name": "subty", "datatype": dbt.type_string()},
    {"name": "uname", "datatype": dbt.type_string()},
    {"name": "vdsk1", "datatype": dbt.type_string()},
    {"name": "werks", "datatype": dbt.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}