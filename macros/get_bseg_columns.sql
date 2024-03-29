{% macro get_bseg_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_rowid", "datatype": dbt.type_numeric()},
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "abper", "datatype": dbt.type_string()},
    {"name": "absbt", "datatype": dbt.type_numeric()},
    {"name": "agzei", "datatype": dbt.type_numeric()},
    {"name": "altkt", "datatype": dbt.type_string()},
    {"name": "anbwa", "datatype": dbt.type_string()},
    {"name": "anfae", "datatype": dbt.type_string()},
    {"name": "anfbj", "datatype": dbt.type_string()},
    {"name": "anfbn", "datatype": dbt.type_string()},
    {"name": "anfbu", "datatype": dbt.type_string()},
    {"name": "anln1", "datatype": dbt.type_string()},
    {"name": "anln2", "datatype": dbt.type_string()},
    {"name": "aplzl", "datatype": dbt.type_string()},
    {"name": "aufnr", "datatype": dbt.type_string()},
    {"name": "aufpl", "datatype": dbt.type_string()},
    {"name": "augbl", "datatype": dbt.type_string()},
    {"name": "augcp", "datatype": dbt.type_string()},
    {"name": "augdt", "datatype": dbt.type_string()},
    {"name": "auggj", "datatype": dbt.type_string()},
    {"name": "bdif2", "datatype": dbt.type_numeric()},
    {"name": "bdif3", "datatype": dbt.type_numeric()},
    {"name": "bdiff", "datatype": dbt.type_numeric()},
    {"name": "belnr", "datatype": dbt.type_string()},
    {"name": "bewar", "datatype": dbt.type_string()},
    {"name": "blnbt", "datatype": dbt.type_numeric()},
    {"name": "blnkz", "datatype": dbt.type_string()},
    {"name": "blnpz", "datatype": dbt.type_numeric()},
    {"name": "bonfb", "datatype": dbt.type_numeric()},
    {"name": "bpmng", "datatype": dbt.type_numeric()},
    {"name": "bprme", "datatype": dbt.type_string()},
    {"name": "bschl", "datatype": dbt.type_string()},
    {"name": "btype", "datatype": dbt.type_string()},
    {"name": "bualt", "datatype": dbt.type_numeric()},
    {"name": "budget_pd", "datatype": dbt.type_string()},
    {"name": "bukrs", "datatype": dbt.type_string()},
    {"name": "bupla", "datatype": dbt.type_string()},
    {"name": "bustw", "datatype": dbt.type_string()},
    {"name": "buzei", "datatype": dbt.type_string()},
    {"name": "buzid", "datatype": dbt.type_string()},
    {"name": "bvtyp", "datatype": dbt.type_string()},
    {"name": "bwkey", "datatype": dbt.type_string()},
    {"name": "bwtar", "datatype": dbt.type_string()},
    {"name": "bzdat", "datatype": dbt.type_string()},
    {"name": "ccbtc", "datatype": dbt.type_string()},
    {"name": "cession_kz", "datatype": dbt.type_string()},
    {"name": "dabrz", "datatype": dbt.type_string()},
    {"name": "depot", "datatype": dbt.type_string()},
    {"name": "diekz", "datatype": dbt.type_string()},
    {"name": "disbj", "datatype": dbt.type_string()},
    {"name": "disbn", "datatype": dbt.type_string()},
    {"name": "disbz", "datatype": dbt.type_string()},
    {"name": "dmb21", "datatype": dbt.type_numeric()},
    {"name": "dmb22", "datatype": dbt.type_numeric()},
    {"name": "dmb23", "datatype": dbt.type_numeric()},
    {"name": "dmb31", "datatype": dbt.type_numeric()},
    {"name": "dmb32", "datatype": dbt.type_numeric()},
    {"name": "dmb33", "datatype": dbt.type_numeric()},
    {"name": "dmbe2", "datatype": dbt.type_numeric()},
    {"name": "dmbe3", "datatype": dbt.type_numeric()},
    {"name": "dmbt1", "datatype": dbt.type_numeric()},
    {"name": "dmbt2", "datatype": dbt.type_numeric()},
    {"name": "dmbt3", "datatype": dbt.type_numeric()},
    {"name": "dmbtr", "datatype": dbt.type_numeric()},
    {"name": "docln", "datatype": dbt.type_string()},
    {"name": "dtws1", "datatype": dbt.type_string()},
    {"name": "dtws2", "datatype": dbt.type_string()},
    {"name": "dtws3", "datatype": dbt.type_string()},
    {"name": "dtws4", "datatype": dbt.type_string()},
    {"name": "ebeln", "datatype": dbt.type_string()},
    {"name": "ebelp", "datatype": dbt.type_string()},
    {"name": "egbld", "datatype": dbt.type_string()},
    {"name": "eglld", "datatype": dbt.type_string()},
    {"name": "egrup", "datatype": dbt.type_string()},
    {"name": "elikz", "datatype": dbt.type_string()},
    {"name": "empfb", "datatype": dbt.type_string()},
    {"name": "erfme", "datatype": dbt.type_string()},
    {"name": "erfmg", "datatype": dbt.type_numeric()},
    {"name": "esrnr", "datatype": dbt.type_string()},
    {"name": "esrpz", "datatype": dbt.type_string()},
    {"name": "esrre", "datatype": dbt.type_string()},
    {"name": "eten2", "datatype": dbt.type_string()},
    {"name": "etype", "datatype": dbt.type_string()},
    {"name": "fastpay", "datatype": dbt.type_string()},
    {"name": "fdgrp", "datatype": dbt.type_string()},
    {"name": "fdlev", "datatype": dbt.type_string()},
    {"name": "fdtag", "datatype": dbt.type_string()},
    {"name": "fdwbt", "datatype": dbt.type_numeric()},
    {"name": "filkd", "datatype": dbt.type_string()},
    {"name": "fipos", "datatype": dbt.type_string()},
    {"name": "fistl", "datatype": dbt.type_string()},
    {"name": "fkber", "datatype": dbt.type_string()},
    {"name": "fkber_long", "datatype": dbt.type_string()},
    {"name": "fkont", "datatype": dbt.type_string()},
    {"name": "fmfgus_key", "datatype": dbt.type_string()},
    {"name": "fmxdocln", "datatype": dbt.type_string()},
    {"name": "fmxdocnr", "datatype": dbt.type_string()},
    {"name": "fmxyear", "datatype": dbt.type_string()},
    {"name": "fmxzekkn", "datatype": dbt.type_string()},
    {"name": "fwbas", "datatype": dbt.type_numeric()},
    {"name": "fwzuz", "datatype": dbt.type_numeric()},
    {"name": "gbetr", "datatype": dbt.type_numeric()},
    {"name": "geber", "datatype": dbt.type_string()},
    {"name": "gityp", "datatype": dbt.type_string()},
    {"name": "gjahr", "datatype": dbt.type_string()},
    {"name": "glupm", "datatype": dbt.type_string()},
    {"name": "gmvkz", "datatype": dbt.type_string()},
    {"name": "grant_nbr", "datatype": dbt.type_string()},
    {"name": "gricd", "datatype": dbt.type_string()},
    {"name": "grirg", "datatype": dbt.type_string()},
    {"name": "gsber", "datatype": dbt.type_string()},
    {"name": "gvtyp", "datatype": dbt.type_string()},
    {"name": "hbkid", "datatype": dbt.type_string()},
    {"name": "hkont", "datatype": dbt.type_string()},
    {"name": "hktid", "datatype": dbt.type_string()},
    {"name": "hrkft", "datatype": dbt.type_string()},
    {"name": "hwbas", "datatype": dbt.type_numeric()},
    {"name": "hwmet", "datatype": dbt.type_string()},
    {"name": "hwzuz", "datatype": dbt.type_numeric()},
    {"name": "hzuon", "datatype": dbt.type_string()},
    {"name": "idxsp", "datatype": dbt.type_string()},
    {"name": "ignr_ivref", "datatype": dbt.type_string()},
    {"name": "imkey", "datatype": dbt.type_string()},
    {"name": "intreno", "datatype": dbt.type_string()},
    {"name": "j_1tpbupl", "datatype": dbt.type_string()},
    {"name": "kblnr", "datatype": dbt.type_string()},
    {"name": "kblpos", "datatype": dbt.type_string()},
    {"name": "kidno", "datatype": dbt.type_string()},
    {"name": "kkber", "datatype": dbt.type_string()},
    {"name": "klibt", "datatype": dbt.type_numeric()},
    {"name": "koart", "datatype": dbt.type_string()},
    {"name": "kokrs", "datatype": dbt.type_string()},
    {"name": "kontl", "datatype": dbt.type_string()},
    {"name": "kontt", "datatype": dbt.type_string()},
    {"name": "kostl", "datatype": dbt.type_string()},
    {"name": "kstar", "datatype": dbt.type_string()},
    {"name": "kstrg", "datatype": dbt.type_string()},
    {"name": "ktosl", "datatype": dbt.type_string()},
    {"name": "kunnr", "datatype": dbt.type_string()},
    {"name": "kursr", "datatype": dbt.type_numeric()},
    {"name": "kzbtr", "datatype": dbt.type_numeric()},
    {"name": "landl", "datatype": dbt.type_string()},
    {"name": "lifnr", "datatype": dbt.type_string()},
    {"name": "linfv", "datatype": dbt.type_string()},
    {"name": "lnran", "datatype": dbt.type_string()},
    {"name": "lokkt", "datatype": dbt.type_string()},
    {"name": "lstar", "datatype": dbt.type_string()},
    {"name": "lzbkz", "datatype": dbt.type_string()},
    {"name": "maber", "datatype": dbt.type_string()},
    {"name": "madat", "datatype": dbt.type_string()},
    {"name": "mandt", "datatype": dbt.type_string()},
    {"name": "mansp", "datatype": dbt.type_string()},
    {"name": "manst", "datatype": dbt.type_string()},
    {"name": "matnr", "datatype": dbt.type_string()},
    {"name": "measure", "datatype": dbt.type_string()},
    {"name": "meins", "datatype": dbt.type_string()},
    {"name": "menge", "datatype": dbt.type_numeric()},
    {"name": "mndid", "datatype": dbt.type_string()},
    {"name": "mschl", "datatype": dbt.type_string()},
    {"name": "mwart", "datatype": dbt.type_string()},
    {"name": "mwsk1", "datatype": dbt.type_string()},
    {"name": "mwsk2", "datatype": dbt.type_string()},
    {"name": "mwsk3", "datatype": dbt.type_string()},
    {"name": "mwskz", "datatype": dbt.type_string()},
    {"name": "mwst2", "datatype": dbt.type_numeric()},
    {"name": "mwst3", "datatype": dbt.type_numeric()},
    {"name": "mwsts", "datatype": dbt.type_numeric()},
    {"name": "navfw", "datatype": dbt.type_numeric()},
    {"name": "navh2", "datatype": dbt.type_numeric()},
    {"name": "navh3", "datatype": dbt.type_numeric()},
    {"name": "navhw", "datatype": dbt.type_numeric()},
    {"name": "nebtr", "datatype": dbt.type_numeric()},
    {"name": "nplnr", "datatype": dbt.type_string()},
    {"name": "nprei", "datatype": dbt.type_numeric()},
    {"name": "obzei", "datatype": dbt.type_string()},
    {"name": "paobjnr", "datatype": dbt.type_string()},
    {"name": "pargb", "datatype": dbt.type_string()},
    {"name": "pasubnr", "datatype": dbt.type_string()},
    {"name": "pays_prov", "datatype": dbt.type_string()},
    {"name": "pays_tran", "datatype": dbt.type_string()},
    {"name": "pbudget_pd", "datatype": dbt.type_string()},
    {"name": "peinh", "datatype": dbt.type_numeric()},
    {"name": "pendays", "datatype": dbt.type_numeric()},
    {"name": "penfc", "datatype": dbt.type_numeric()},
    {"name": "penlc1", "datatype": dbt.type_numeric()},
    {"name": "penlc2", "datatype": dbt.type_numeric()},
    {"name": "penlc3", "datatype": dbt.type_numeric()},
    {"name": "penrc", "datatype": dbt.type_string()},
    {"name": "pernr", "datatype": dbt.type_string()},
    {"name": "perop_beg", "datatype": dbt.type_string()},
    {"name": "perop_end", "datatype": dbt.type_string()},
    {"name": "pfkber", "datatype": dbt.type_string()},
    {"name": "pgeber", "datatype": dbt.type_string()},
    {"name": "pgrant_nbr", "datatype": dbt.type_string()},
    {"name": "popts", "datatype": dbt.type_numeric()},
    {"name": "posn2", "datatype": dbt.type_string()},
    {"name": "ppa_ex_ind", "datatype": dbt.type_string()},
    {"name": "ppdif2", "datatype": dbt.type_numeric()},
    {"name": "ppdif3", "datatype": dbt.type_numeric()},
    {"name": "ppdiff", "datatype": dbt.type_numeric()},
    {"name": "pprct", "datatype": dbt.type_string()},
    {"name": "prctr", "datatype": dbt.type_string()},
    {"name": "prodper", "datatype": dbt.type_string()},
    {"name": "projk", "datatype": dbt.type_string()},
    {"name": "projn", "datatype": dbt.type_string()},
    {"name": "prznr", "datatype": dbt.type_string()},
    {"name": "psalt", "datatype": dbt.type_string()},
    {"name": "psegment", "datatype": dbt.type_string()},
    {"name": "pswbt", "datatype": dbt.type_numeric()},
    {"name": "pswsl", "datatype": dbt.type_string()},
    {"name": "pyamt", "datatype": dbt.type_numeric()},
    {"name": "pycur", "datatype": dbt.type_string()},
    {"name": "qbshb", "datatype": dbt.type_numeric()},
    {"name": "qsfbt", "datatype": dbt.type_numeric()},
    {"name": "qsshb", "datatype": dbt.type_numeric()},
    {"name": "qsskz", "datatype": dbt.type_string()},
    {"name": "qsznr", "datatype": dbt.type_string()},
    {"name": "rdif2", "datatype": dbt.type_numeric()},
    {"name": "rdif3", "datatype": dbt.type_numeric()},
    {"name": "rdiff", "datatype": dbt.type_numeric()},
    {"name": "re_account", "datatype": dbt.type_string()},
    {"name": "re_bukrs", "datatype": dbt.type_string()},
    {"name": "rebzg", "datatype": dbt.type_string()},
    {"name": "rebzj", "datatype": dbt.type_string()},
    {"name": "rebzt", "datatype": dbt.type_string()},
    {"name": "rebzz", "datatype": dbt.type_string()},
    {"name": "recid", "datatype": dbt.type_string()},
    {"name": "recrf", "datatype": dbt.type_string()},
    {"name": "rewrt", "datatype": dbt.type_numeric()},
    {"name": "rewwr", "datatype": dbt.type_numeric()},
    {"name": "rfzei", "datatype": dbt.type_string()},
    {"name": "rpacq", "datatype": dbt.type_string()},
    {"name": "rstgr", "datatype": dbt.type_string()},
    {"name": "ryacq", "datatype": dbt.type_string()},
    {"name": "saknr", "datatype": dbt.type_string()},
    {"name": "samnr", "datatype": dbt.type_string()},
    {"name": "sctax", "datatype": dbt.type_numeric()},
    {"name": "secco", "datatype": dbt.type_string()},
    {"name": "segment", "datatype": dbt.type_string()},
    {"name": "sgtxt", "datatype": dbt.type_string()},
    {"name": "shkzg", "datatype": dbt.type_string()},
    {"name": "shzuz", "datatype": dbt.type_string()},
    {"name": "skfbt", "datatype": dbt.type_numeric()},
    {"name": "sknt2", "datatype": dbt.type_numeric()},
    {"name": "sknt3", "datatype": dbt.type_numeric()},
    {"name": "sknto", "datatype": dbt.type_numeric()},
    {"name": "spgrc", "datatype": dbt.type_string()},
    {"name": "spgrg", "datatype": dbt.type_string()},
    {"name": "spgrm", "datatype": dbt.type_string()},
    {"name": "spgrp", "datatype": dbt.type_string()},
    {"name": "spgrq", "datatype": dbt.type_string()},
    {"name": "spgrs", "datatype": dbt.type_string()},
    {"name": "spgrt", "datatype": dbt.type_string()},
    {"name": "spgrv", "datatype": dbt.type_string()},
    {"name": "squan", "datatype": dbt.type_string()},
    {"name": "srtype", "datatype": dbt.type_string()},
    {"name": "stbuk", "datatype": dbt.type_string()},
    {"name": "stceg", "datatype": dbt.type_string()},
    {"name": "stekz", "datatype": dbt.type_string()},
    {"name": "sttax", "datatype": dbt.type_numeric()},
    {"name": "taxps", "datatype": dbt.type_string()},
    {"name": "tbtkz", "datatype": dbt.type_string()},
    {"name": "txbfw", "datatype": dbt.type_numeric()},
    {"name": "txbh2", "datatype": dbt.type_numeric()},
    {"name": "txbh3", "datatype": dbt.type_numeric()},
    {"name": "txbhw", "datatype": dbt.type_numeric()},
    {"name": "txdat", "datatype": dbt.type_string()},
    {"name": "txgrp", "datatype": dbt.type_string()},
    {"name": "txjcd", "datatype": dbt.type_string()},
    {"name": "umsks", "datatype": dbt.type_string()},
    {"name": "umskz", "datatype": dbt.type_string()},
    {"name": "uzawe", "datatype": dbt.type_string()},
    {"name": "valut", "datatype": dbt.type_string()},
    {"name": "vbel2", "datatype": dbt.type_string()},
    {"name": "vbeln", "datatype": dbt.type_string()},
    {"name": "vbewa", "datatype": dbt.type_string()},
    {"name": "vbund", "datatype": dbt.type_string()},
    {"name": "vertn", "datatype": dbt.type_string()},
    {"name": "vertt", "datatype": dbt.type_string()},
    {"name": "vname", "datatype": dbt.type_string()},
    {"name": "vorgn", "datatype": dbt.type_string()},
    {"name": "vprsv", "datatype": dbt.type_string()},
    {"name": "vptnr", "datatype": dbt.type_string()},
    {"name": "vrsdt", "datatype": dbt.type_string()},
    {"name": "vrskz", "datatype": dbt.type_string()},
    {"name": "werks", "datatype": dbt.type_string()},
    {"name": "wmwst", "datatype": dbt.type_numeric()},
    {"name": "wrbt1", "datatype": dbt.type_numeric()},
    {"name": "wrbt2", "datatype": dbt.type_numeric()},
    {"name": "wrbt3", "datatype": dbt.type_numeric()},
    {"name": "wrbtr", "datatype": dbt.type_numeric()},
    {"name": "wskto", "datatype": dbt.type_numeric()},
    {"name": "wverw", "datatype": dbt.type_string()},
    {"name": "xanet", "datatype": dbt.type_string()},
    {"name": "xauto", "datatype": dbt.type_string()},
    {"name": "xbilk", "datatype": dbt.type_string()},
    {"name": "xcpdd", "datatype": dbt.type_string()},
    {"name": "xegdr", "datatype": dbt.type_string()},
    {"name": "xfakt", "datatype": dbt.type_string()},
    {"name": "xfrge_bseg", "datatype": dbt.type_string()},
    {"name": "xhkom", "datatype": dbt.type_string()},
    {"name": "xhres", "datatype": dbt.type_string()},
    {"name": "xinve", "datatype": dbt.type_string()},
    {"name": "xkres", "datatype": dbt.type_string()},
    {"name": "xlgclr", "datatype": dbt.type_string()},
    {"name": "xncop", "datatype": dbt.type_string()},
    {"name": "xnegp", "datatype": dbt.type_string()},
    {"name": "xopvw", "datatype": dbt.type_string()},
    {"name": "xpanz", "datatype": dbt.type_string()},
    {"name": "xpypr", "datatype": dbt.type_string()},
    {"name": "xragl", "datatype": dbt.type_string()},
    {"name": "xref1", "datatype": dbt.type_string()},
    {"name": "xref2", "datatype": dbt.type_string()},
    {"name": "xref3", "datatype": dbt.type_string()},
    {"name": "xsauf", "datatype": dbt.type_string()},
    {"name": "xserg", "datatype": dbt.type_string()},
    {"name": "xskrl", "datatype": dbt.type_string()},
    {"name": "xskst", "datatype": dbt.type_string()},
    {"name": "xspro", "datatype": dbt.type_string()},
    {"name": "xuman", "datatype": dbt.type_string()},
    {"name": "xumsw", "datatype": dbt.type_string()},
    {"name": "xzahl", "datatype": dbt.type_string()},
    {"name": "zbd1p", "datatype": dbt.type_numeric()},
    {"name": "zbd1t", "datatype": dbt.type_numeric()},
    {"name": "zbd2p", "datatype": dbt.type_numeric()},
    {"name": "zbd2t", "datatype": dbt.type_numeric()},
    {"name": "zbd3t", "datatype": dbt.type_numeric()},
    {"name": "zbfix", "datatype": dbt.type_string()},
    {"name": "zekkn", "datatype": dbt.type_string()},
    {"name": "zfbdt", "datatype": dbt.type_string()},
    {"name": "zinkz", "datatype": dbt.type_string()},
    {"name": "zlsch", "datatype": dbt.type_string()},
    {"name": "zlspr", "datatype": dbt.type_string()},
    {"name": "zolld", "datatype": dbt.type_string()},
    {"name": "zollt", "datatype": dbt.type_string()},
    {"name": "zterm", "datatype": dbt.type_string()},
    {"name": "zumsk", "datatype": dbt.type_string()},
    {"name": "zuonr", "datatype": dbt.type_string()},
    {"name": "zzbuspartn", "datatype": dbt.type_string()},
    {"name": "zzchan", "datatype": dbt.type_string()},
    {"name": "zzlob", "datatype": dbt.type_string()},
    {"name": "zzloca", "datatype": dbt.type_string()},
    {"name": "zzproduct", "datatype": dbt.type_string()},
    {"name": "zzregion", "datatype": dbt.type_string()},
    {"name": "zzspreg", "datatype": dbt.type_string()},
    {"name": "zzstate", "datatype": dbt.type_string()},
    {"name": "zzuserfld1", "datatype": dbt.type_string()},
    {"name": "zzuserfld2", "datatype": dbt.type_string()},
    {"name": "zzuserfld3", "datatype": dbt.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}