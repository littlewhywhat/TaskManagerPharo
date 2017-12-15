I am an application to manage tasks that can be easily configured to suit your needs.

Here are some examples how you can start me (just copy suitable in playground and play):

```smalltalk
"example of tasks local spec client with temporary storage"

TaskManager configure: { #present -> 'spec',
                         #service -> 'local',
                         #repository -> 'temporary'};
            run.

"or alternatively for this configuration you can just do"

TaskManager run.
```