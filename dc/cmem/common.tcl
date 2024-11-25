
set search_path [list "." "/courses/ee6321/share/ibm13rflpvt/synopsys/" "../../mem_comp/"]

set synthetic_library [list "dw_foundation.sldb"]

set link_library [list "*" \
                        "scx3_cmos8rf_lpvt_tt_1p2v_25c.db" 	\
			"RF1SHD_tt_1p2v_25c_syn.db"	\
                        "dw_foundation.sldb"]

set target_library [list "scx3_cmos8rf_lpvt_tt_1p2v_25c.db" 	\
				"RF1SHD_tt_1p2v_25c_syn.db"]

