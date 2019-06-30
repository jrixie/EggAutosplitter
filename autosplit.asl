state("EggReturnsHome") {
  int level : 0x11E2B40, 0x1C;
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
