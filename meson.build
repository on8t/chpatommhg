project('chpatommhg', 'c')

common_sources = [
  'src/MM_HG_IN_HPA.c',
  'src/ui.c',
]

executable(
  'hpatommhg',
  common_sources,
  'src/hpatommhg.c',
  'src/logic/hpa_to_mm_hg.c',
  install : true,
)

executable(
  'mmhgtohpa',
  common_sources,
  'src/mmhgtohpa.c',
  'src/logic/mm_hg_to_hpa.c',
  install : true,
)
