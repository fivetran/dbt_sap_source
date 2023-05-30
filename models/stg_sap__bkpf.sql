with base as (

    select * 
    from {{ ref('stg_sap__bkpf_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_sap__bkpf_tmp')),
                staging_columns=get_bkpf_columns()
            )
        }}
    from base
),

final as (

    select 
        bukrs,
        belnr,
        blart,
        bldat,
        monat,
        cpudt,
        xblnr,
        waers,
        glvor,
        awkey,
        fikrs,
        hwaer,
        hwae2,
        hwae3,
        awsys,
        ldgrp,
        kursf,
        xreorg,
        mandt,
        gjahr
            on bkpf.mandt = bseg.mandt
        and bkpf.bukrs = bseg.bukrs
        and bkpf.belnr = bseg.belnr
        and bkpf.gjahr = bseg.gjahr
    from fields
)

select * 
from final