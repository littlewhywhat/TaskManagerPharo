reading
readTaskVO: contents
  ^ (reader on: contents readStream) nextAs: TaskVO.