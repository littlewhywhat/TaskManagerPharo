reading
readTaskBO: contents
  ^ (reader on: contents readStream) nextAs: TaskBO.