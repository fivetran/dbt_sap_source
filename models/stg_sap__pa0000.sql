with base as (

    select * 
    from {{ ref('stg_sap__pa0000_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_sap__pa0000_tmp')),
                staging_columns=get_pa0000_columns()
            )
        }}
    from base
),

final as (
    
    select 
        aedtm,
        begda,
        endda,
        flag1,
        flag2,
        flag3,
        flag4,
        grpvl,
        histo,
        itbld,
        itxex,
        mandt,
        massg,
        massn,
        objps,
        ordex,
        pernr,
        preas,
        refex,
        rese1,
        rese2,
        seqnr,
        sprps,
        stat1,
        stat2,
        stat3,
        subty,
        uname
    from fields
)

select *
from final