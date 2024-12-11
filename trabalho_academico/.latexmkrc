add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');
add_cus_dep('slo', 'sls', 0, 'makeglossaries');
add_cus_dep('gls-abr', 'glo-abr', 0, 'makeglossaries');

sub makeglossaries {
    system("makeglossaries -d .build cx_raiz");
    return 0;
}

$bibtex_use = 1;
$aux_dir = '.build';  # Set the auxiliary directory to .build
$out_dir = '.build';  # Set the output directory to .build
$clean_ext .= ' %R.glg %R.glo %R.gls %R.alg %R.acn %R.acr %R.slo %R.sls %R.slg %R.glg-abr %R.gls-abr %R.glo-abr';
