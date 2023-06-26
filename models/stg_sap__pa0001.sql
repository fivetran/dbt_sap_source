with base as (

    select * 
    from {{ ref('stg_sap__pa0001_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_sap__pa0001_tmp')),
                staging_columns=get_pa0001_columns()
            )
        }}
    from base
),

final as (
    
    select 
        abkrs,
        aedtm,
        ansvh,
        begda,
        btrtl,
        budget_pd,
        bukrs,
        ename,
        endda,
        fistl,
        fkber,
        flag1,
        flag2,
        flag3,
        flag4,
        geber,
        grant_nbr,
        grpvl,
        gsber,
        histo,
        itbld,
        itxex,
        juper,
        kokrs,
        kostl,
        mandt,
        mstbr,
        objps,
        ordex,
        orgeh,
        otype,
        pernr,
        persg,
        persk,
        plans,
        preas,
        refex,
        rese1,
        rese2,
        sacha,
        sachp,
        sachz,
        sbmod,
        seqnr,
        sgmnt,
        sname,
        sprps,
        stell,
        subty,
        uname,
        vdsk1,
        werks
    from fields
)

select *
from final