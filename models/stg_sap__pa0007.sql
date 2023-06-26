with base as (

    select * 
    from {{ ref('stg_sap__pa0007_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_sap__pa0007_tmp')),
                staging_columns=get_pa0007_columns()
            )
        }}
    from base
),

final as (
    
    select 
        aedtm,
        arbst,
        awtyp,
        begda,
        dysch,
        empct,
        endda,
        flag1,
        flag2,
        flag3,
        flag4,
        grpvl,
        histo,
        itbld,
        itxex,
        jrstd,
        kztim,
        mandt,
        maxja,
        maxmo,
        maxta,
        maxwo,
        minja,
        minmo,
        minta,
        minwo,
        mostd,
        objps,
        ordex,
        pernr,
        preas,
        refex,
        rese1,
        rese2,
        schkz,
        seqnr,
        sprps,
        subty,
        teilk,
        uname,
        wkwdy,
        wostd,
        wweek,
        zterf
    from fields
)

select *
from final