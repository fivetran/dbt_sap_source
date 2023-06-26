with base as (

    select * 
    from {{ ref('stg_sap__t503_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_sap__t503_tmp')),
                staging_columns=get_t503_columns()
            )
        }}
    from base
),

final as (

    select    
        abart,
        abtyp,
        aksta,
        ansta,
        antyp,
        austa,
        burkz,
        inwid,
        konty,
        mandt,
        molga,
        persg,
        persk,
        trfkz,
        typsz,
        zeity
    from fields
)

select * 
from final