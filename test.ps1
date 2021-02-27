

Resolve-Path glsl/*/* | % -Parallel {
  $null = glslc "${_}" -o "${_}.spv" 2> $null;
};

cargo test

Resolve-Path bin/* | % {
  $null = spirv-dis $_;
};