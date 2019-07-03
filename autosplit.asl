state("EggReturnsHome") {
  int level : 0x146AEF0, 0x1A8, 0x0, 0x18, 0x1D0, 0x1C;
}

init {
  vars.split = 0;
}

update {
  if (old.level != current.level) {
    return true;
  }
}

start {
  if (old.level != current.level) {
    vars.split += 1;
    return true;
  }

  vars.split = 0;
}

split {
  if (old.level != current.level) {
    vars.split += 1;
    return true;
  }
}
