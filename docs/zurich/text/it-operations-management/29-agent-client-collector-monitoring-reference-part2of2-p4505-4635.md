# Zurich IT Operations Management — Agent Client Collector Monitoring reference

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4505–4635 of 4823 | Part 2 of 2

Sections: Agent Client Collector Monitoring reference (p4355)

---

<!-- page 4505 -->
Linux metrics policy (continued)
Type

Check

Description

Usage and
usage example

Metrics
collected

Featured
Metric

(comma
separated)

• rxDrops
(featured
• -i,
metric)
includeinterface:
• rxFifo
List of
• rxFrame
interfaces
to include
• rxCompressed
(comma
• rxMulticast
separated)
• rxBytes
• -I,
(featured
includeinterfaceregex:
metric)
Regex
matching
• rxPackets
interfaces
(featured
to include
metric)
• -X,
• rxErrors
excludeinterfaceregex:
• rxDrops
Regex
(featured
matching
metric)
interfaces
to exclude

• rxFifo

• rxColls
Usage
example:
• rxCarrier
command:
• rxCompressed
metricsnetworkinterface.rb
Metric

os.linux.metrics-Retrieves
Usage:
netstat-tcp
metrics on
TCP socket
• -p, port:
states from
The port
netstat. Useful
from which
on high-traffic
you want
web or proxy
to receive
servers with
metrics.
large numbers
Value range
of short= 1-65535.
lived TCP
• -t, type: The
connections
port type
coming and
from which
going.
to receive
metrics.
Values=local
or remote.
Default =
local

no
• tcp.UNKNOWN
• tcp.ESTABLISHED
• tcp.SYN_SENT
• tcp.SYN_RECV
• tcp.FIN_WAIT1
• tcp.FIN_WAIT2
• tcp.TIME_WAIT
• tcp.CLOSE
• tcp.CLOSE_WAIT
• tcp.LAST_ACK
• tcp.LISTEN
• tcp.CLOSING

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4505


<!-- page 4506 -->
Linux metrics policy (continued)
Type

Check

Description

Usage and
usage example

Metrics
collected

Featured
Metric

• -d,
disabletcp6:
Disables
the tcp6
check.
Enter a
value to set
disabletcp6
= true.
Usage
example:
metricsnetstattcp.rb
Linux log monitoring default checks and policies
Agent Client Collector provides the following policy for Linux log monitoring.

Type

Check

Description

Event

util.check-logs

Enables
monitoring log
files owned by a
regular user.

Usage and Usage
Example

Usage:
• -i --icase:
Run a case
insensitive
match.
• -c, --crit N:
Critical level (if
pattern has a
group).

Output

CheckLog
CRITICAL: 0
warnings, 8
criticals for
pattern SEVERE|
Exception in log
file /var/log/
servicenow/
agent-clientcollector/acc.log

• --encodeutf16u: Encode
line with
utf16 before
matching.
• -e, --encoding
ENCODINGPAGE: Specific
encoding page
to read log file
with.
• -E, --exclude
PAT: Pattern to
exclude from
matching.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4506


<!-- page 4507 -->
Type

Check

Description

Usage and Usage
Example

Output

• -F, --filepattern
FILE: Check a
pattern of files,
instead of one
file. For REGEX,
first test it on
https://
rubular.com/
to get the
expected
outcomes and
then pass it
inside quotes
as a parameter.
For example,
to get all .log
extension files,
pass "(.)*
\.log$" as
REGEX.
• -f, --log-file
FILE: Path to
log file.
• -l, --log-pattern
PAT: Log format
of each log
entry:
• -o, --warn-only
Warn instead
of critical on
match.
• -q, --pattern
PAT Pattern
to search
for.To search
for multiple
patterns,
separate each
pattern with
pipe(|) and put
inside quotes
(For example:
"SEVERE|
404").
• -r, --return:
Return
matched line.
• -L, --returnlength N:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4507


<!-- page 4508 -->
Type

Check

Description

Usage and Usage
Example

Output

Matched line
length.
• -M, --returnerror-limit N:
Max number
of returned
matched
lines(log
entries).
• -n, --name
NAME Set
state file dir
automatically
using name.
• -s, --state_dir
DIR Dir to keep
state files
under.
• -G, --skipevents-fornonexistent:
Skip event
creation if
the log file is
missing or not
found at the
specified path.
Default = False.
• -w, --warn N:
Warning level
if pattern has a
groupWarning
level if pattern
has a group.
Usage example:
command:
check-log.rb
-c 2 -w 1
-q "SEVERE|
Exception"
-s /tmp/
cache/checklog -f /
var/log/
servicenow/
agentclientcollector/
acc.log

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4508


<!-- page 4509 -->
Type

Check

Description

Event

util.check-logssudo

Enables
monitoring log
files owned by a
root user.

Usage and Usage
Example

Usage:
• -i --icase:
Run a case
insensitive
match
• -c, --crit N:
Critical level (if
pattern has a
group)

Output

CheckLog
CRITICAL: 0
warnings, 8
criticals for
pattern SEVERE|
Exception in log
file /var/log/
servicenow/
agent-clientcollector/acc.log

• --encodeutf16u: Encode
line with
utf16 before
matching
• -e, --encoding
ENCODINGPAGE: Specific
encoding page
to read log file
with.
• -E, --exclude
PAT Pattern to
exclude from
matching
• -F, --filepattern
FILE: Check a
pattern of files,
instead of one
file. For REGEX,
first test it on
https://
rubular.com/
to get the
expected
outcomes and
then pass it
inside quotes
as a parameter.
For example,
to get all .log
extension files,
pass "(.)*
\.log$" as
REGEX.
• -f, --log-file
FILE: Path to
log file.
• -l, --log-pattern
PAT: Log format
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4509


<!-- page 4510 -->
Type

Check

Description

Usage and Usage
Example

Output

of each log
entry:
• -o, --warn-only
Warn instead
of critical on
match
• -q, --pattern
PAT Pattern
to search
for.To search
for multiple
patterns,
separate each
pattern with
pipe(|) and put
inside quotes
(for example:
"SEVERE|404")
• -r, --return:
Return
matched line.
• -L, --returnlength N:
Matched line
length.
• -M, --returnerror-limit N:
Max number
of returned
matched
lines(log
entries).
• -n, --name
NAME: Set
state file dir
automatically
using name.
• -s, --state_dir
DIR: Dir to
keep state files
under
• -G, --skipevents-fornonexistent:
Skip event
creation if
the log file is
missing or not
found at the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4510


<!-- page 4511 -->
Type

Check

Description

Usage and Usage
Example

Output

specified path.
Default = False.
• -w, --warn N:
Warning level
if pattern has a
groupWarning
level if pattern
has a group.
• must_sudo:
Enables the
servicenow
user to run
the command
with sudo
permissions.
Usage example:
command:
check-log.rb
-c 2 -w 1
-q "SEVERE|
Exception"
-s /tmp/
cache/checklog -f /
var/log/
servicenow/
agentclientcollector/
acc.log
Linux metrics
The following table lists the metrics that are gathered as output from Linux checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
os.linux.metrics-process-usage metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

proc.acc.running

Number of processes
running with this
name (acc).

proc.acc.cpuPercent

Percentage of CPU
taken by the process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4511


<!-- page 4512 -->
os.linux.metrics-process-usage metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

proc.acc.memPercent

Metric type description

Percentage of
memory taken by the
process.

os.linux.metrics-reboot-count-today metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

reboot.count.today

Metric type description

Number of reboots
today.

os.linux.metrics-system-cpu metrics
Metric type

cpu.total.user

Resource (name of
specific database,
where relevant)

Units

Metric type description

Normal processes
executing in
user mode;

cpu.total.user
is the total of the
cpuN.user metrics.
cpu.total.nice

Niced processes
executing in
user mode;

cpu.total.nice
is the total of the
cpuN.nice metrics.
cpu.total.system

Time the CPU spent
running the kernel;

cpu.total.system
is the total of the

cpuN.system
metrics.
cpu.total.idle

Total time the CPU
spent in an idle state;

cpu.total.idle
is the total of the
cpuN.idle metrics.
cpu.total.iowait

Total time the CPU
spent waiting for
IO operations
to complete;

cpu.total.iowait
is the total of the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4512


<!-- page 4513 -->
os.linux.metrics-system-cpu metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cpuN.iowait
metrics.
cpu.total.irq

Total time that the
processor is spending
on Interrupts;

cpu.total.irq
is the total of the
cpuN.irq metrics.
cpu.total.softirq

Time spent
servicing soft
interrupt requests;

cpu.total.softirq
is the total of the

cpuN.softirq
metrics.
cpu.total.steal

Total time the virtual
CPU spent waiting
for the Hypervisor to
service another virtual
CPU. Applies only to
virtual machines.

cpu.total.guest

Total time the CPU
spent running the
virtual processor.
Applies only to
Hypervisors.

cpu.total.guest_nice

Total time the CPU
spent running as
nice guest OS;

cpu.total.guset_nice
is the total of the

cpuN.guest_nice
metrics
cpu.<cpu-core>.user

Time spent with
normal processing in
user mode.

cpu.<cpu-core>.nice

Time spent with niced
processing in user
mode.

cpu.<cpucore>.system

Time spent running in
kernel mode.

cpu.<cpu-core>.idle

Time spent idle.

cpu.<cpu-core>.iowait

Time spent waiting for
I/O to complete. Also
considered idle time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4513


<!-- page 4514 -->
os.linux.metrics-system-cpu metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cpu.<cpu-core>.irq

Time spent serving
hardware interrupts.

cpu.<cpu-core>.softirq

Time spent serving
software interrupts.

cpu.<cpu-core>.steal

Time stolen by other
operating systems
running in a virtual
environment.

cpu.<cpu-core>.guest

Time spent running a
virtual CPU or guest
OS under the control
of the kernel.

cpu.<cpucore>.guest_nice

Total time the CPU
spent running as nice
guest OS.

cpu.intr

Interrupts serviced
since boot time.

cpu.ctxt

Total number of
context switches
across all CPUs.

cpu.btime

Boot time.

cpu.processes

The number of
processes and
threads created,
which includes (but is
not limited to) those
created by calls to
the fork() and clone()
system calls.

cpu.procs_running

The total number of
processes running on
all CPUs.

cpu.procs_blocked

The number of
processes currently
blocked and waiting
for I/O to complete.

cpu.cpu_count

The number of CPUs
on the system.

cpu.<cpu-core>.cores

The number of CPU
cores.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4514


<!-- page 4515 -->
os.linux.metrics-system-cpu-load metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

load_avg.one
(featured metric)

The average system
load over one minute.

load_avg.five
(featured metric)

The average system
load over five minutes.

load_avg.fifteen
(featured metric)

The average system
load over fifteen
minutes.

load_avg.norm.one

The average system
load over one minute
normalized by the
number of CPUs.

load_avg.norm.five

The average system
load over five minutes
normalized by the
number of CPUs.

load_avg.norm.fifteen

The average system
load over fifteen
minutes normalized by
the number of CPUs.

os.linux.metrics-system-cpu-percentage metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cpu.avgutilization_percentage

The average
percentage of CPU
used.

cpu.user_percentage
(featured metric)

Percentage of time
total CPU was used by
normal processes in
user mode.

cpu.nice_percentage
(featured metric)

Percentage of time all
CPUs used by niced
processes in user
mode.

cpu.system_percentage
(featured metric)

Percentage of time the
CPU spent running
the kernel.

cpu.idle_percentage
(featured metric)

Percentage of time all
CPIUs were idle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4515


<!-- page 4516 -->
os.linux.metrics-system-cpu-percentage metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cpu.iowait_percentage
(featured metric)

Percentage of time all
CPUs waited for I/O to
complete.

cpu.irq_percentage
(featured metric)

Percentage of time
all CPUs serviced
interrupts.

cpu.softirq_percentage
(featured metric)

Percentage of time
all CPIs serviced
software interrupts.

cpu.steal_percentage
(featured metric)

Percentage of time
all CPUs serviced
virtual-host operating
systems.

cpu.guest_percentage
(featured metric)

Percentage of time all
CPUs serviced guest
operating systems.

os.linux.metrics-system-disk metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

disk.<diskname>.reads
(featured metric)

Total number of
reads completed
successfully.

disk.<diskname>.readsMerged

Total number of reads
merged.

disk.<diskname>.sectorsRead

Total number
of sectors read
successfully.

disk.<diskname>.readTime

milliseconds

Total number of
milliseconds spent by
all reads.

disk.<diskname>.writes
(featured metric)

Total number of
writes completed
successfully.

disk.<diskname>.writesMerged

Total number of writes
merged.

disk.<diskname>.sectorsWritten

Total number of
sectors written
successfully.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4516


<!-- page 4517 -->
os.linux.metrics-system-disk metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

disk.<diskname>.writeTime

Units

Metric type description

milliseconds

Total number of
milliseconds spent by
all writes.

disk.<diskname>.ioInProgress

Total number of I/Os
currently in progress.

disk.<diskname>.ioTime
(featured metric)

Total time spent on
I/Os.

disk.<diskname>.ioTimeWeighted

Total time spent on
I/Os. This can provide
a measure of both I/O
completion time and
the backlog that might
be accumulating.

os.linux.metrics-system-disk-capacity metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

disk.<file-systemname>.total

The total size of the
file system.

disk.<file-systemname>.used

The total amount of
space allocated to
existing files in the file
system.

disk.<file-systemname>.avail

The total amount of
space available within
the file system.

disk.<file-systemname>.used_percentage

The percentage of the
available space that
is currently allocated
to all files on the file
system.

disk.<file-systemname>.itotal

The total number of
inodes on the file
system.

disk.<file-systemname>.iused

The number of used
inodes.

disk.<file-systemname>.iavail

The number of free
(unused) inodes.

disk.<file-systemname>.iused_percentage

The percentage of
used inodes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4517


<!-- page 4518 -->
os.linux.metrics-system-disk-usage metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

disk_usage.<disk>.total

Total amount of space
available on the disk.

disk_usage.<disk>.used

Total amount of space
used in the disk.

disk_usage.<disk>.avail

Total amount of space
available on the disk.

disk_usage.<disk>.used_percentage
(featured metric)

The percentage of
space used on the
disk.

os.linux.metrics-system-memory metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

memory.total

Total usable RAM.

memory.free

Total free RAM.

memory.available

An estimate of how
much memory is
available for starting
new applications
without swapping.

memory.buffers

Temporary storage
used for raw disk
blocks.

memory.cached

In-memory cache for
files read from disk
(the page cache).
Does not include
mem_swapcached.

memory.swapTotal
(featured metric)

Total amount of swap
space available.

memory.swapFree
(featured metric)

Amount of swap
space that is currently
unused.

memory.dirty

Memory which is
waiting to be written
back to the disk.

memory.swapUsed
(featured metric)

The amount of swap
space in use.

memory.used

The amount of RAM in
use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4518


<!-- page 4519 -->
os.linux.metrics-system-memory metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

memory.usedWOBuffersCaches

The amount of
memory in use.

memory.freeWOBuffersCaches

Value of

MemAvailable
from /proc/
meminfo if present,
but falls back to free
+ buffered + cached
memory if not.
memory.swapUsedPercentage

Percent of swap
space used.

os.linux.metrics-system-memory-percent metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

memory_percent.free
(featured metric)

Percentage of free
RAM.

memory_percent.available
(featured metric)

Percentage of
memory available

memory_percent.buffers
(featured metric)

Percentage of
memory used for raw
disk blocks.

memory_percent.cached
(featured metric)

Percentage of
memory used with
in-memory cache for
files read from disk.

memory_percent.dirty
(featured metric)

Percentage of
memory waiting to be
written back to the
disk.

memory_percent.swapUsed
(featured metric)

Percentage of swap
space used.

memory_percent.usedWOBuffersCaches
(featured metric)

Percentage of
memory used.

memory_percent.freeWOBuffersCaches
(featured metric)

Percentage of
memory available.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4519


<!-- page 4520 -->
os.linux.metrics-system-uptime metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

system.uptime(sec)

Metric type description

The amount of time
the system has been
working and available.

os.linux.metrics-memory-vmstat metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

vmstat.nr_free_pages

Pages that are
currently unused by
the system.

vmstat.nr_alloc_batch

Pages allocated to
other domains due to
insufficient memory in
each domain of each
non-uniform memory
access (NUMA) node.

vmstat.nr_inactive_anon

Memory pages in
each domain of each
NUMA node that have
not been accessed.

vmstat.nr_active_anon

Anonymous virtual
memory pages that
have been recently
used.

vmstat.nr_inactive_file

The memory page
corresponding to
the file that has not
been accessed in
each domain of each
NUMA.

vmstat.nr_active_file

The memory page
corresponding to the
file that has been
recently accessed.

vmstat.nr_unevictable

The number of pages
in the unevictable
(non-)LRU list.

vmstat.nr_mlock

Pages mapped into
a VM_LOCKED VMA
that are a class of
unevictable pages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4520


<!-- page 4521 -->
os.linux.metrics-memory-vmstat metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

vmstat.nr_anon_pages

Memory mapped
pages that are not
part of a file.

vmstat.nr_mapped

The number of
memory mapped
pages.

vmstat.nr_file_pages
vmstat.nr_dirty

Pages waiting to be
written to disk.

vmstat.nr_writeback

Pages currently being
written to disk.

vmstat.nr_slab_reclaimable

Pages from the kernel
slab memory usage
that can be reclaimed.

vmstat.nr_slab_unreclaimable

Pages from the
kernel slab memory
usage that cannot be
reclaimed.

vmstat.nr_page_table_pages

Pages allocated to
page tables.

vmstat.nr_kernel_stack

Amount of memory
allocated to kernel
stacks.

vmstat.nr_unstable

The number of
unstable pages in
each domain of each
NUMA node.

vmstat.nr_bounce
vmstat.nr_vmscan_write

The number of dirty
pages written back
during a scan of LRUs.

vmstat.nr_vmscan_immediate_reclaim
vmstat.nr_writeback_temp
vmstat.nr_isolated_anon

The number of
anonymous memory
pages isolated in each
domain of each NUMA
node.

vmstat.nr_isolated_file

The number of
file storage pages
isolated in each

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4521


<!-- page 4522 -->
os.linux.metrics-memory-vmstat metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

domain of each NUMA
node.
vmstat.nr_shmem

The number of shared
memory pages.

vmstat.nr_dirtied

The number of dirty
pages in each domain
of each NUMA node.

vmstat.nr_written
vmstat.numa_hit

The number of pages
that were successfully
allocated to this node.

vmstat.numa_miss

The number of pages
that were allocated
to this node because
of low memory on the
intended node.

vmstat.numa_foreign

The number of pages
initially intended for
this node that were
allocated to another
node.

vmstat.numa_interleave

The number of
interleave policy
pages successfully
allocated to this node.

vmstat.numa_local

The number of pages
successfully allocated
on this node by a
process on this node.

vmstat.numa_other

The number of pages
allocated on this
node by a process on
another node.

vmstat.workingset_refault
vmstat.workingset_activate
vmstat.workingset_nodereclaim
vmstat.nr_anon_transparent_hugepages
vmstat.nr_free_cma

Free continuous
memory allocator
pages in each domain
of each NUMA.

vmstat.nr_dirty_threshold
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4522


<!-- page 4523 -->
os.linux.metrics-memory-vmstat metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

vmstat.nr_dirty_background_threshold
vmstat.pgpgin

The number of pages
brought in from disk.

vmstat.pgpgout

The number of pages
written out to disk.

vmstat.pswpin

The number of pages
brought in from swap
space.

vmstat.pswpout

The number of pages
swapped out into
swap space.

vmstat.pgalloc_dma
vmstat.pgalloc_dma32
vmstat.pgalloc_normal
vmstat.pgalloc_movable
vmstat.pgfree

The number of pages
free since the last
boot.

vmstat.pgactivate

Number of page
activations since the
last boot.

vmstat.pgdeactivate

Number of page
deactivations since
the last boot.

vmstat.pgfault

Minor faults since the
last boot.

vmstat.pgmajfault

Major faults since the
last boot.

vmstat.pglazyfreed
vmstat.pgrefill_dma
vmstat.pgrefill_dma32
vmstat.pgrefill_normal

Number of page refills
since the last boot.

vmstat.pgrefill_movable
vmstat.pgsteal_kswapd_dma
vmstat.pgsteal_kswapd_dma32
vmstat.pgsteal_kswapd_normal
vmstat.pgsteal_kswapd_movable
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4523


<!-- page 4524 -->
os.linux.metrics-memory-vmstat metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

vmstat.pgsteal_direct_dma
vmstat.pgsteal_direct_dma32
vmstat.pgsteal_direct_normal
vmstat.pgsteal_direct_movable
vmstat.pgscan_kswapd_dma
vmstat.pgscan_kswapd_dma32
vmstat.pgscan_kswapd_normal

Number of pages
scanned by kswapd
since boot.

vmstat.pgscan_kswapd_movable
vmstat.pgscan_direct_dma
vmstat.pgscan_direct_dma32
vmstat.pgscan_direct_normal

Number of pages
reclaimed since boot.

vmstat.pgscan_direct_movable
vmstat.pgscan_direct_throttle
vmstat.zone_reclaim_failed
vmstat.pginodesteal
vmstat.slabs_scanned
vmstat.kswapd_inodesteal
vmstat.kswapd_low_wmark_hit_quickly
vmstat.kswapd_high_wmark_hit_quickly
vmstat.pageoutrun

Number of times
kswapd called page
reclaim.

vmstat.allocstall

Number of times page
reclaim was called
directly (low memory).

vmstat.pgrotated
vmstat.drop_pagecache
vmstat.drop_slab
vmstat.numa_pte_updates
vmstat.numa_huge_pte_updates
vmstat.numa_hint_faults
vmstat.numa_hint_faults_local
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4524


<!-- page 4525 -->
os.linux.metrics-memory-vmstat metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

vmstat.numa_pages_migrated
vmstat.pgmigrate_success
vmstat.pgmigrate_fail
vmstat.compact_migrate_scanned
vmstat.compact_free_scanned
vmstat.compact_isolated
vmstat.compact_stall

The number of times
a process stalls when
running memory
compaction so that a
huge page is free for
use.

vmstat.compact_fail

The number of times
the system attempted
to compact memory
but failed.

vmstat.compact_success

The number of
times the system
compacted memory
and freed a huge page
for use.

vmstat.htlb_buddy_alloc_success
vmstat.htlb_buddy_alloc_fail
vmstat.unevictable_pgs_culled
vmstat.unevictable_pgs_scanned
vmstat.unevictable_pgs_rescued
vmstat.unevictable_pgs_mlocked
vmstat.unevictable_pgs_munlocked
vmstat.unevictable_pgs_cleared
vmstat.unevictable_pgs_stranded
vmstat.thp_fault_alloc

The number of huge
pages successfully
allocated to handle a
page fault.

vmstat.thp_fault_fallback

The number of page
fault fails to allocate
a huge page before
falling back to using
small pages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4525


<!-- page 4526 -->
os.linux.metrics-memory-vmstat metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

vmstat.thp_collapse_alloc

The number of pages
collapsed into one
huge page with the
successful allocation
of a new huge page to
store the data.

vmstat.thp_collapse_alloc_failed

The number of pages
collapsed into one
huge page but failed
allocation.

vmstat.thp_split

The number of base
pages to split from a
huge page.

vmstat.thp_zero_page_alloc

The number of
successful allocations
of huge zero pages.

vmstat.thp_zero_page_alloc_failed

The number of times
the kernel failed to
allocate a huge zero
page and falls back to
using small pages.

vmstat.balloon_inflate
vmstat.balloon_deflate
vmstat.balloon_migrate
os.linux.metrics-process-status metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

proc.<process>.VmSize

The total amount of
virtual memory used
by the process.

proc.<process>.VmRSS

The non-swapped
physical memory used
by a process.

proc.<process>.VmSwap

The total amount of
swap space used.

MongoDB default checks and policies
Agent Client Collector provides the following policies for MongoDB health monitoring. Policies
come with the checks specified in the indicated table. Policies and checks are available for both
Windows and Linux.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4526


<!-- page 4527 -->
MongoDB Events
Type

Check

Description

Event

app.mongodb.checkMonitors
mongodbwhether the
alive
MongoDB
server is alive
and creating
alerts for the
MongoDB
server health
status.

Usage

Command

Output

commonchecks
commonchecks
Check
checkcheckmongodb
mongodbmongodb
Alive OK:
alive -H
-p
Indicates that
db_host
{{.labels.params_port}}
the server
-p
-H
is in good
db_port
{{.labels.params_host}}
health.
Where:
• db_host =
Host where
server is
running.
• db_port
= Port to
connect
to the
MongoDB
server.
Usage
example:
command:
commonchecks
checkmongodbalive -H
10.***.***.***
-p 27017

Event

app.mongodb.checkCreates alerts
mongodbfor any of the
metrics
MongoDB
metrics,
based on the
threshold
limit.
To trigger the
alerts for any
MongoDB
server metric,
pass the
whole metric
name in the
parameter.

commonchecks
commonchecks
Check
checkcheckmongodb
mongodbmongodbMetrics
metrics
metrics
OK: Indicates
-H
-c
that the
Hostname
{{.labels.params_critical}}
mongodb.connection.cur
-p
-d
value is
port -w
{{.labels.params_database}}
within the
warning
-w
acceptable
-c
{{.labels.params_warning}}
threshold.
critical
-H
-d
{{.labels.params_host}}
database
-p
-m
{{.labels.params_port}}
MetricName -m
{{.labels.params_metric}}
Where:
• Hostname
= Host
where

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4527


<!-- page 4528 -->
MongoDB Events (continued)
Type

Check

Description

Usage

Command

Output

server is
running.
• port = Port
to connect
to the
MongoDB
server.
• warning
= Warning
threshold
value.
• critical
= Critical
threshold
value.
• database
= Database
name.
• MetricName
= Specific
metric to
monitor.
Usage
example:
command:
commonchecks
checkmongodbalive -H
10.***.***.***
-p 27017

MongoDB Metrics
Type

Check

Description

Metric

app.mongodb.metricsReturns
mongodb
metrics of the
MongoDB
server and all
databases.
Sample
metrics:

Usage

Command

Output

commonchecks
commonchecks
<hostname>.mongodb.con
checkmetrics20632
mongodb
mongodb
1639498004
-p
Where:
{{.labels.params_port}}
-H
• host =
{{.labels.params_host}}
Hostname
-d
where the
{{.labels.params_database}}
MongoDB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4528


<!-- page 4529 -->
MongoDB Metrics (continued)
Type

Check

Description

Usage

Command

Output

server is
• mongodb.connections.totalCreated:
running.
Incoming
connections • port = Port
to connect
• mongodb.locks.Database.acquireCount_IX
to the
: Intent
MongoDB
Exclusive
server.
lock mode
• database
• mongodb.locks.Database.acquireCount_X
= Database
: Exclusive
name.
lock mode
• mongodb.locks.Database.acquireCount_IS
: Intent
shared lock
mode

MongoDB metrics
The following table lists the metrics that are gathered as output from MongoDB checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
metrics-mongodb metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

mongodb.asserts.msg
(featured metric)

count

Number of message
assertions raised
since the MongoDB
process started.
Examine the
log file for more
information about
these messages.

mongodb.asserts.regular
(featured metric)

count

Number of regular
assertions raised
since the MongoDB
process started.
Examine the
log file for more
information about
these messages.

mongodb.asserts.rollovers

count

Number of times that
the rollover counters
have rolled over
since the last time the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4529


<!-- page 4530 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

MongoDB process
started.
mongodb.asserts.tripwire

Number of tripwire
assertions raised
since the MongoDB
process started.

mongodb.asserts.user

count

Number of "user
asserts" that occurred
since the last time the
MongoDB process
started.

mongodb.asserts.warning
(featured metric)

count

Number of warnings
raised since the
MongoDB process
started.

mongodb.connections.available

count

Number of unused
incoming connections
available.

mongodb.connections.current

count

Number of incoming
connections from
clients to the
database server.

mongodb.connections.totalCreated

count

Count of all incoming
connections created
to the server.

mongodb.cursor.open.noTimeout

count

Number of
open cursors
with the option

DBQuery.Option.noTimeout
set to prevent timeout
after a period of
inactivity.
mongodb.cursor.open.pinned

count

Number of "pinned"
open cursors.

mongodb.cursor.open.total
(featured metric)

count

Number of cursors
that MongoDB is
maintaining for clients.
Because MongoDB
exhausts unused
cursors, typically
this value is small
or zero. However, if
there is a queue, stale
tailable cursors, or
a large number of

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4530


<!-- page 4531 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

operations, this value
may increase.
mongodb.cursor.timedOut

count

Total number of
cursors that have
timed out since
the server process
started.

mongodb.databaseSizes.avgObjSize
admin

bytes

Average size of each
document in bytes.

mongodb.databaseSizes.avgObjSize
config

bytes

Average size of each
document in bytes.

mongodb.databaseSizes.avgObjSize
local

bytes

Average size of each
document in bytes.

mongodb.databaseSizes.collections
admin

count

Number of collections
in the database.

mongodb.databaseSizes.collections
config

count

Number of collections
in the database.

mongodb.databaseSizes.collections
local

count

Number of collections
in the database.

mongodb.databaseSizes.dataSize
admin

bytes

Total size of the
uncompressed data
held in the database.
The dataSize
decreases when you
remove documents.
For databases using
the WiredTiger
storage engine,
dataSize may
be larger than

storageSize
if compression
is enabled. The

dataSize
decreases when
documents shrink.
mongodb.databaseSizes.dataSize
config

bytes

Total size of the
uncompressed data
held in the database.

mongodb.databaseSizes.dataSize
local

bytes

Total size of the
uncompressed data
held in the database.

mongodb.databaseSizes.indexes
admin

count

Total number of
indexes across all

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4531


<!-- page 4532 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

collections in the
database.
mongodb.databaseSizes.indexes
config

count

Total number of
indexes across all
collections in the
database.

mongodb.databaseSizes.indexes
local

count

Total number of
indexes across all
collections in the
database.

mongodb.databaseSizes.indexSize
admin

bytes

Sum of the space
allocated to all
indexes in the
database, including
free index space.

mongodb.databaseSizes.indexSize
config

bytes

Sum of the space
allocated to all
indexes in the
database, including
free index space.

mongodb.databaseSizes.indexSize
local

bytes

Sum of the space
allocated to all
indexes in the
database, including
free index space.

mongodb.databaseSizes.objects
admin

count

Number of objects
(specifically,
documents) in the
database across all
collections.

mongodb.databaseSizes.objects
config

count

Number of objects
(specifically,
documents) in the
database across all
collections.

mongodb.databaseSizes.objects
local

count

Number of objects
(specifically,
documents) in the
database across all
collections.

mongodb.databaseSizes.storageSize
admin

bytes

This value does not
decrease as you
remove or shrink
documents. This
value may be smaller
than dataSize

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4532


<!-- page 4533 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

for databases using
the WiredTiger
storage engine with
compression enabled.
storageSize does
not include space
allocated to indexes.
See indexSize for
the total index size.
mongodb.databaseSizes.storageSize
config

bytes

Sum of the space
allocated to all
collections in
the database for
document storage,
including free space.

mongodb.databaseSizes.storageSize
local

bytes

Sum of the space
allocated to all
collections in
the database for
document storage,
including free space.

mongodb.globalLock.activeClients.readers
(featured metric)

count

Number of active
client connections
performing read
operations.

mongodb.globalLock.activeClients.total

count

Total number of
internal client
connections to the
database, including
system threads
as well as queued
readers and writers.
This metric will be
higher than the total of

activeClients.readers
and

activeClients.writers
due to the inclusion of
system threads.
mongodb.globalLock.activeClients.writers
(featured metric)

count

Number of active
client connections
performing write
operations.

mongodb.globalLock.currentQueue.readers
(featured metric)

count

Number of operations
that are currently
queued and waiting
for the read lock.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4533


<!-- page 4534 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

A consistently
small read queue,
particularly of shorter
operations, is not a
cause for concern.
mongodb.globalLock.currentQueue.total

count

Total number of
operations queued
waiting for the lock
(i.e., the sum of

globalLock.currentQueue.rea
and

globalLock.currentQueue.wri
A consistently small
queue, particularly of
shorter operations,
is not a cause
for concern. The

globalLock.activeClients
readers and writers
information provides
context for this data.
mongodb.globalLock.currentQueue.writers
(featured metric)

count

Number of operations
that are currently
queued and waiting
for the write lock.
A consistently
small write queue,
particularly of shorter
operations, is not a
cause for concern.

mongodb.globalLock.totalTime

microseconds

Time, in
microseconds, since
the database last
started and created
the globalLock.
This is approximately
equivalent to the total
server uptime.

mongodb.locks.Collection.acquireCount_r

count

Number of times the
collection lock was
acquired in the Intent
Shared (IS) lock mode.

mongodb.locks.Collection.acquireCount_w

count

Number of times the
collection lock was
acquired in the Intent
Exclusive (IX) lock
mode.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4534


<!-- page 4535 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

mongodb.locks.Collection.acquireCount_W

count

Number of times
the collection lock
was acquired in the
Exclusive (X) lock
mode.

mongodb.locks.Database.acquireCount_r

count

Number of times the
database lock was
acquired in the Intent
Shared (IS) lock mode.

mongodb.locks.Database.acquireCount_w

count

Number of times the
database lock was
acquired in the Intent
Exclusive (IX) lock
mode.

mongodb.locks.Database.acquireCount_W

count

Number of times
the database lock
was acquired in the
Exclusive (X) lock
mode.

mongodb.locks.Global.acquireCount_r

count

Number of times
the global lock was
acquired in the Intent
Shared (IS) lock mode.

mongodb.locks.Global.acquireCount_w

count

Number of times
the global lock was
acquired in the Intent
Exclusive (IX) lock
mode.

mongodb.locks.Global.acquireCount_W

count

Number of times
the global lock was
acquired in the
Exclusive (X) lock
mode.

mongodb.mem.pageFaults

count

Total number of
page faults. The

extra_info.page_faults
counter may increase
dramatically during
moments of poor
performance and may
correlate with limited
memory environments
and larger data sets.
Limited and sporadic
page faults do not

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4535


<!-- page 4536 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

necessarily indicate
an issue.
mongodb.mem.resident
(featured metric)

mebibyte

This value is roughly
equivalent to the
amount of RAM,
in mebibyte (MiB),
currently used by the
database process.
During normal use,
this value tends to
grow. In dedicated
database servers,
the number tends to
approach the total
amount of system
memory.

mongodb.mem.virtual

mebibyte

The quantity, in
mebibyte (MiB),
of virtual memory
used by the mongod
process.

mongodb.metrics.document.deleted

count

Total number of
documents deleted.

mongodb.metrics.document.inserted

count

Total number of
documents inserted.

mongodb.metrics.document.returned

count

Total number of
documents returned
by queries.

mongodb.metrics.document.updated

count

Total number of
documents updated.

mongodb.metrics.getLastError.wtime_num
(featured metric)

count

Total number of

getLastError
operations with
a specified write
concern (w) that
wait for one or more
members of a replica
set to acknowledge
the write operation (a
w value greater than
1.)

mongodb.metrics.getLastError.wtime_totalMillis miliseconds
(featured metric)

Total amount of time
in milliseconds that
the mongod has
spent performing

getLastError
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4536


<!-- page 4537 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

operations with write
concern (w) that
wait for one or more
members of a replica
set to acknowledge
the write operation (a
w value greater than
1.)
mongodb.metrics.getLastError.wtimeouts
(featured metric)

count

Number of times
that write concern
operations have timed
out as a result of the
wtimeout threshold
to getLastError.
This number
increments for both
default and nondefault write concern
specifications.

mongodb.metrics.operation.scanAndOrder

count

Total number of
queries that return
sorted numbers that
cannot perform the
sort operation using
an index.

mongodb.metrics.queryExecutor.scanned

count

Total number of index
items scanned during
queries and queryplan evaluation. This
counter is the same as

totalKeysExamined
in the output of
explain().
mongodb.metrics.queryExecutor.scannedObjects
count

Total number of
documents scanned
during queries
and query-plan
evaluation. This
counter is the same as

totalDocsExamined
in the output of
explain().
mongodb.metrics.record.moves

A document that
reports on data
related to record
allocation in the ondisk memory files.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4537


<!-- page 4538 -->
metrics-mongodb metrics (continued)
Resource (name of
specific database,
where relevant)

Units

Metric type description

mongodb.metrics.repl.apply.batches_num

count

Total number of
batches applied
across all databases.

mongodb.metrics.repl.apply.batches_totalMillis count

Total amount of time
in milliseconds the
mongod has spent
applying operations
from the oplog.

mongodb.metrics.repl.apply.ops

Total number of oplog
operations applied.

Metric type

count

metrics.repl.apply.ops
is incremented after
each operation.
mongodb.metrics.repl.buffer.count

count

Current number of
operations in the
oplog buffer.

mongodb.metrics.repl.buffer.maxSizeBytes

bytes

Maximum size of the
buffer. This value is a
constant setting in the
mongod, and is not
configurable.

mongodb.metrics.repl.buffer.sizeBytes

bytes

Current size of the
contents of the oplog
buffer.

mongodb.metrics.repl.network.bytes

count

Total amount of
data read from the
replication sync
source.

mongodb.metrics.repl.network.getmores_num

count

Reports the total
number of getmore
operations, which
are operations that
request an additional
set of operations from
the replication sync
source.

mongodb.metrics.repl.network.getmores_totalMillis
count

Total amount of time
required to collect
data from getmore
operations.

mongodb.metrics.repl.network.ops

count

Total number of
operations read from
the replication source.

mongodb.metrics.repl.network.readersCreated count

Total number of oplog
query processes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4538


<!-- page 4539 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

created. MongoDB
creates a new oplog
query any time
an error occurs in
the connection,
including a timeout, or
a network operation.
Furthermore,

metrics.repl.network.reader
increments every time
MongoDB selects
a new source for
replication.
mongodb.metrics.ttl.deletedDocuments

count

Total number of
documents deleted
from collections with a
ttl index.

mongodb.metrics.ttl.passes

count

Total number of
documents deleted
from collections with a
ttl index.

mongodb.network.bytesIn

count

Total number of bytes
that the server has
received over network
connections initiated
by clients.

mongodb.network.bytesOut

count

Total number of bytes
that the server has
sent over network
connections initiated
by clients.

mongodb.network.numRequests

count

Total number of
distinct requests
that the server has
received. Use this
value to provide
context for the

network.bytesIn
and

network.bytesOut
values to ensure
that MongoDB's
network utilization
is consistent with
expectations and
application use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4539


<!-- page 4540 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

mongodb.opcounters.command

Units

Metric type description

count

Total number of
commands issued
to the database
since the mongod
instance last started.

opcounters.command
counts all commands
except the write
commands: insert,
update, and delete.
mongodb.opcounters.delete

count

Total number of delete
operations since the
mongod instance last
started.

mongodb.opcounters.getmore

count

Total number of
getMore operations
since the mongod
instance last started.
This counter can
be high even if the
query count is low.
Secondary nodes
send getMore
operations as part
of the replication
process.

mongodb.opcounters.insert

count

Total number of insert
operations received
since the mongod
instance last started.

mongodb.opcounters.query

count

Total number of
queries received
since the mongod
instance last started.

mongodb.opcounters.update

count

Total number of
update operations
received since the
mongod instance last
started.

mongodb.opcountersRepl.command

count

Total number of
replicated commands
issued to the
database since the
mongod instance last
started.

mongodb.opcountersRepl.delete

count

Total number of
replicated delete

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4540


<!-- page 4541 -->
metrics-mongodb metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

operations since the
mongod instance last
started.
mongodb.opcountersRepl.getmore

count

Total number of
getMore operations
since the mongod
instance last started.

mongodb.opcountersRepl.insert
(featured metric)

count

Total number of
replicated insert
operations since the
mongod instance last
started.

mongodb.opcountersRepl.query
(featured metric)

count

Total number of
replicated queries
since the mongod
instance last started.

mongodb.opcountersRepl.update

count

Total number of
replicated update
operations since the
mongod instance last
started.

MS Exchange default checks and policies
Agent Client Collector provides the following default checks and policies for MS Exchange
monitoring.

Type

Check

Description

Metric

app.msexchange.metricsReturns Microsoft
msexchange
Exchange
metrics.

Usage and usage
example

winchecks
metric-ms
exchange
(options)
-s scheme
Replaces
the host
name
with this
parameter

Output

Metrics from MS
Exchange server

Usage example:
winchecks
metricmsexchange
{{if .labels.params_scheme}}
-s
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4541


<!-- page 4542 -->
Type

Check

Description

Usage and usage
example

Output

{{if .labels.params_scheme}}
{{end}}
MSSQL default checks and policies
The Agent Client Collector provides the following default checks and policies for MSSQL Metrics
monitoring.
MSSQL Metrics
Type

Check

Description

Metric

app.metricsmssql-query

Generic MSSQL
query class
which accepts a
query and dumps
metrics.

Usage and Usage
Example

winchecks
metrics-mssqlquery (options)
-d, --database
DATABASE
Database
schema to
connect to
(required)

Output

Custom metrics
defined in the
parameters,
which also
contain value
and timestamp.

-q ,--query The
query to execute,
should return a
list metric name
and value, for
example SELECT
METRIC_NAME,
VALUE FROM GV
$SYSMETRIC
-h, --host HOST
Host name to
connect to,
defaults to
localhost
-r, --port PORT
Port to connect
to, defaults to
1433
-s, --scheme
SCHEME Metric
naming scheme,
text to prepend
to .$parent.
$child,
Usage Example
.winchecks
metrics© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4542


<!-- page 4543 -->
MSSQL Metrics (continued)
Type

Check

Description

Usage and Usage
Example

Output

mssql-query
-d master -H
localhost
-p 1437
-q "select
name,size
from
sys.database_files"
MySQL default checks and policies
The Agent Client Collector provides the following default checks and policies for MySQL Metrics
monitoring.
MySQL Events
Description

Usage and Usage
example

Type

Check

Event

app.mysql.check- Verifies the
check-mysqlmysql-alive
length of a result query-resultset from a MySQL count.rb (options)
query.
-c, --critical
COUNT COUNT
critical threshold
for number of
items returned
by the query
(required)

Output

MysqlQueryCountCheck
OK/CRITICAL/
WARNING:
message
regarding ratio
between query
length and
threshold values

-d, --database
DATABASE
MySQL database
(required)
-h, --host HOST
MySQL Host
to connect to
(required)
-i, --ini VALUE
My.cnf ini file
--ini-section
VALUE Section
in my.cnf ini
file. To enable
connection to
MySQL thru
the .ini file,
provide the
values against
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4543


<!-- page 4544 -->
MySQL Events (continued)
Type

Check

Description

Usage and Usage
example

Output

the properties
'user' and
'password' in the
client section in
the .ini file.
-P, --port PORT
MySQL Port to
connect to
-q, --query
QUERY Query
to execute
(required)
-w, --warning
COUNT Count
warning
threshold for
number of items
returned by the
query (required)
-S, --socket
UNIX socket
to connect to
(required if
host specified
is 'localhost'
on UNIX - like
systems)
Usage Example
check-mysqlqueryresultcount.rb -h
127.0.0.1
-P 3306 -d
mysql -q
"select *
from user"
-w 5 -c 8
Event

app.mysql.check- Verifies the
mysql-threads
MySQL DB
number of
running threads
and assigns
a status of
OK/WARNING/
CRITICAL

check-mysqlthreads.rb
(options)
-h, --hostname
HOST Hostname
to login to

CheckMySQLHealth
OK/Critical/
Warning and
number of
running threads

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4544


<!-- page 4545 -->
MySQL Events (continued)
Type

Check

Description

Usage and Usage
example

depending on
input values.

-i, --ini VALUE
My.cnf ini file

Output

--ini-section
VALUE Section
in my.cnf ini file
(Needed if .ini
path provided).
To enable
connection to
MySQL thru
the .ini file,
provide the
values against
the properties
'user' and
'password' in the
client section in
the .ini file.
-c, --critnum
NUMBER Number
of running
threads upon
which an alert is
issued
-w, --warnnum
NUMBER Number
of running
threads upon
which a warning
is issued
-P, --port PORT
MySQL Port to
connect to
-S, --socket
UNIX socket
to connect to
(required if
host specified
is 'localhost'
on UNIX - like
systems)
Usage Example
check-mysqlthreads.rb
-h 127.0.0.1
-P 3306 -l 0
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4545


<!-- page 4546 -->
MySQL Events (continued)
Type

Check

Description

Usage and Usage
example

Output

-m 1 -c 25
-w 20
Event

util.check-mysqlquery

Verifies whether
MySQL DB is
running.

check-mysqlthreads.rb
(options)
-h, --hostname
HOST Hostname
to login to

CheckMySQLHealth
OK/Critical/
Warning and
number of
running threads

-i, --ini VALUE
My.cnf ini file
--ini-section
VALUE Section
in my.cnf ini file
(Needed if .ini
path is provided).
To enable
connection to
MySQL thru
the .ini file,
provide the
values against
the properties
'user' and
'password' in the
client section in
the .ini file.
-c, --critnum
NUMBER Number
of running
threads upon
which an alert is
issued
-w, --warnnum
NUMBER Number
of running
threads upon
which a warning
is issued
-l, --critlow
NUMBER Number
of running
threads under
which an alert is
issued

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4546


<!-- page 4547 -->
MySQL Events (continued)
Type

Check

Description

Usage and Usage
example

Output

-m, --warnlow
NUMBER Number
of running
threads under
which a warning
is issued
-P, --port PORT
MySQL Port to
connect to
-s, --socket
UNIX socket
to connect to
(required if
host specified
is 'localhost'
on UNIX - like
systems)
Usage Example
check-mysqlthreads.rb
-h 127.0.0.1
-P 3306 -l 0
-m 1 -c 25
-w 20

MySQL Metrics
Type

Check

Description

Metric

app.mysql.metrics- Returns metrics
mysql
on the MySQL
DB.

Usage and Usage
Example

/usr/local/bin/
metrics-mysqlgraphite.rb
(options)
-h, --host HOST
MySQL host
to connect to
(required)

Output

MysqlQueryCountCheck
OK/CRITICAL/
WARNING:
message
regarding ratio
between query
length and
threshold values

-i, --ini VALUE
My.cnf ini file
--ini-section
VALUE Section
in my.cnf ini file
(Needed if .ini
path is provided).
To enable
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4547


<!-- page 4548 -->
MySQL Metrics (continued)
Type

Check

Description

Usage and Usage
Example

Output

connection to
MySQL thru
the .ini file,
provide the
values against
the properties
'user' and
'password' in the
client section in
the .ini file.
-P, --port PORT
MySQL port to
connect to.
-s, --scheme
SCHEME Metric
naming scheme,
text to append to
metric
-S, --socket
UNIX socket
to connect to
(required if
host specified
is 'localhost'
on UNIX - like
systems)
-v, --verbose
Show errors
(if generated)
regarding
secondary status
copies. Add -v to
the Command to
activate.
Usage Example
check-mysqlthreads.rb
-h 127.0.0.1
-P 3306 -l 0
-m 1 -c 25
-w 20
Metric

app.mysql.check- Verifies the
mysql-threads
MySQL DB
number of
running threads
and assigns

/usr/local/bin/
metrics-mysqlgraphite.rb
(options)

hostname.mysql.general.abortedC
7600
1649630975

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4548


<!-- page 4549 -->
MySQL Metrics (continued)
Type

Check

Description

Usage and Usage
Example

a status of
OK/WARNING/
CRITICAL
depending on
input values.

-h, --hostname
HOST Hostname
to connect to
(required)
-i, --ini VALUE
My.cnf ini file

Output

hostname.mysql.general.abortedC
247 1649630975
hostname.mysql.general.txBytes
752733902
1649630975

hostname.mysql.commands.admin
1631 1649630975

--ini-section
hostname.mysql.commands.alter_t
VALUE Section
in my.cnf ini file
0 1649630975
(Needed if .ini
path is provided).
To enable
connection to
MySQL thru
the .ini file,
provide the
values against
the properties
'user' and
'password' in the
client section in
the .ini file.
-c, --critnum
NUMBER Number
of running
threads upon
which an alert is
issued
-w, --warnnum
NUMBER Number
of running
threads upon
which a warning
is issued
-l, --critlow
NUMBER Number
of running
threads under
which an alert is
issued
-m, --warnlow
NUMBER Number
of running
threads under
which a warning
is issued
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4549


<!-- page 4550 -->
MySQL Metrics (continued)
Type

Check

Description

Usage and Usage
Example

Output

-P, --port PORT
MySQL Port to
connect to
-s, --socket
UNIX socket
to connect to
(required if
host specified
is 'localhost'
on UNIX - like
systems)
Usage Example
metricsmysqlgraphite.rb
-h 127.0.0.1
-P 3306
Metric

app.mysql.metrics- Returns various
mysql-processes metrics regarding /usr/local/bin/
metrics-mysqlMySQL DB
processes.rb
processes
(options)
-h, --host MySQL
host to connect
to
-i, --ini VALUE
My.cnf ini file
--ini-section
VALUE Section
in my.cnf ini file
(Needed if .ini
path is provided).
To enable
connection to
MySQL thru
the .ini file,
provide the
values against
the properties
'user' and
'password' in the
client section in
the .ini file.

processes,
commands
they're running
and the
databases
they're running
the commands
on
Example:

• hostname.mysql.database.mysq
1 1649631113

• hostname.mysql.command.Daem
1 1649631113

• hostname.mysql.command.Slee
4 1649631113

• hostname.mysql.command.Quer
1 1649631113

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4550


<!-- page 4551 -->
MySQL Metrics (continued)
Type

Check

Description

Usage and Usage
Example

Output

-P, --port PORT
MySQL Port to
connect to
-s --scheme
SCHEME Metric
naming scheme,
text to append to
metric
-s, --socket
UNIX socket
to connect to
(required if
host specified
is 'localhost'
on UNIX - like
systems)
Usage Example
metricsmysqlprocesses.rb
-h 127.0.0.1
-P 3306
Network ping default checks and policies
Agent Client Collector provides the following default checks and policies for Network ping
monitoring. Policies and checks are available for both Windows and Linux.
Network-ping metrics policy
Check

Description

Usage

util.metrics-ping

Runs on the
ip address
discovered in
the ServiceNow
instance. Pings
the host and
collects metrics.

metrics-ping.rb
(options)

The monitored
CI type is

c --count
COUNT Ping
count

A proxy agent is
required.

Output

c7inc00473
83.ping.pa
ckets_tran
smitted 5
1675923
886

-h Host to
ping

-t --timeout
cmdb_ci_hardware
TIMEOUT
and is bound
Timeout
to the relevant
server.

Command

Example: ./
metrics-ping.rb -h
10.196.121.11

c7inc0047
383.ping.p
ackets_rec
eived 5
1675923
886

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4551


<!-- page 4552 -->
Network-ping metrics policy (continued)
Check

Description

Usage

Command

Output

c7inc0047
383.ping.p
acket_loss
0
1675923
886

c7inc0047
383.ping.t
ime 3999
1675923
886

c7inc0047
383.ping.
min 0.253
1675923
886

c7inc0047
383.ping.
avg 0.292
1675923
886

c7inc0047
383.ping.
max 0.318
1675923
886

c7inc0047
383.ping.m
dev 0.032
1675923
886

Note:
Windows
does not
support the

ping.time
and

ping.mdev
metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4552


<!-- page 4553 -->
Network ping metrics
The following table lists the metrics that are gathered as output from Network ping checks.
Entries indicated as Featured metrics are high-visibility metrics that are displayed in the
Operator Workspace Metric tab after an alert is generated. These metrics provide the operator
with additional information to help them further explore the specified issue.
network-ping metrics
Metric type

Units

Metric type description

ping.packets_transmitted

count

Number of data packets sent
to the target host during the
ping test.

ping.packets_received

count

Number of data packets
successfully received by the
target host.

ping.packet_loss

percentage

Percentage of data packets
that failed to reach the target
host.

ping.time

ms

Amount of time for the data
packets to travel to the
destination and back.

ping.min

ms

Shortest amount of time for a
series of ping requests on the
data packets.

ping.avg

ms

Average amount of time for a
series of ping requests on the
data packets.

ping.max

ms

Longest amount of time for a
series of ping requests on the
data packets.

ping.mdev

ms

Mean deviation (measure of
the variability or dispersion)
of the round-trip time (RTT) of
the packets sent during the
ping test.

Network host availability check
Agent Client Collector provides the following default check for network ping monitoring. The
check is available for both Windows and Linux.
util.check-ping check
Check

util.check-ping

Description

Checks the
network host
availability via
ICMP (ping)
requests.

Usage

checkping.rb -h
<ip-address>
(options)
-h host:
Host to ping

Command

Output

ICMP ping
unsuccess
ful for
host:
192.168.
1.1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4553


<!-- page 4554 -->
util.check-ping check (continued)
Check

Description

Usage

Generates an
OK event if the
ping success
ratio exceeds
the Warning
threshold (-W,
default 50%).

(Required).
Default=<localhost>

Generates a
Warning event if
the ping success
ratio is between
the warning
threshold (-W,
default 50%)
and the critical
threshold (-C,
default 20%).
Generates a
Critical event if
the ping success
ratio falls below
the critical
threshold (-C,
default 20%).
A proxy agent is
required.

Command

Output

(successf
ul: 0/5)

-c count:
Number of ping
requests sent
to the host.
Default=1
-T timeout:
The timeout
(in seconds)
for each ping
request. If the
timeout expires
before a reply
is received,
the ping is
considered
failed. Default=5
-6 ipv6:
Enables IPv6
pinging. Ping
uses IPv4
when this flag
is not used.
Default=False
-i interval:
Interval (in
seconds)
between each
ping request.
Default=1
-W ratio: The
success ratio
threshold for a
Warning state. If
the successful
ping responses
are below this
ratio and above
the -C ratio, the
script returns
a Warning.
Default=0.5
-C ratio:
The success
ratio threshold
for a Critical
state. If the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4554


<!-- page 4555 -->
util.check-ping check (continued)
Check

Description

Usage

Command

Output

successful ping
responses are
below this ratio,
the script returns
a Critical failure.
Default=0.2
-r report:
Flag to append
to the failure
message of an
MTR (My Trace
Route) report if
the ping fails.
When MTR
runs, a network
diagnostic report
generates.
Default=false
Nginx default checks and policies
Agent Client Collector provides the following policies for Nginx health monitoring. Policies come
with the checks specified in the indicated table. Policies and checks are available for both
Windows and Linux.
Nginx Events policy
Check

Description

Usage

nginx.checknginx-alive

Verifies whether
Nginx server is
alive.

check-nginxstatus.rb

Note:
Use basic
authentication
for events.

Command

-h, --host
Nginx
hostname
-p, --port
Nginx
port

Note:
Use basic
authentication
for events.

Output

Successful
CheckNginxStatus
OK: Nginx
is Alive and
healthy
Failure
CheckNginxStatus
CRITICAL:
Nginx is
Down

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4555


<!-- page 4556 -->
Nginx Metrics policy
Check

nginx.metricsnginx-server

Description

Retrieves
the following
information:

Usage

metricsnginx.rb
Options:

nginx.active_connections
-u --url Full
Total
URL to the server
number
status page.
of
For example:
active
https://
connections yoursite.com/
on
nginx_status
server.
nginx.accepts
The
accepted
connections.
nginx.handled
Handled
connections,
which
normally
equals
the
number
of
accepted
connections.
nginx.requests
Total
number
of
handled
requests
by
the
server.
nginx.read
Shows
whether
the
server
is
reading
requests.

Command

Output

ws19-INC00
47517.ngin
x.active_c
onnections
1
1640135
552
ws19-INC00
47517.ngin
x.accepts
5746
1640135
552
ws19-INC00
47517.ngin
x.handled
5746
1640135
552
ws19-INC00
47517.ngin
x.requests
9603
1640135
552
ws19-INC00
47517.ngin
x.reading
0
1640135
552
ws19-INC00
47517.ngin
x.writing
1
1640135
552
ws19-INC00
47517.ngin
x.waiting
0
1640135
552

nginx.writing
Shows
whether
the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4556


<!-- page 4557 -->
Nginx Metrics policy (continued)
Check

Description

Usage

Command

Output

server
is
writing
responses
to
the
client.
nginx.waiting
Idle
connections
waiting
for a
request.

Note:
Use basic
authentication
for metrics.
Nginx metrics
The following table lists the metrics that are gathered as output from Nginx checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
metrics-nginx metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

nginx.active_connections
admin
(featured metric)

count

Total number
of connections
opened on the
server, including
waiting connections
(nginx.waiting
value). It reflects the
number of current
users on the website.
There can be multiple
connections opened
for a single user.

nginx.accepts
(featured metric)

count

Represents the
total established
connections
when https://
yoursite.com/
nginx_status is
triggered.

admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4557


<!-- page 4558 -->
metrics-nginx metrics (continued)
Resource (name of
specific database,
where relevant)

Units

Metric type description

nginx.handled
(featured metric)

admin

count

Total number of
connections handled
by the Nginx server.

nginx.requests
(featured metric)

admin

count

Total number of
requests handled by
the Nginx server.

nginx.reading
(featured metric)

admin

count

Current number of
connections where
Nginx server is
reading the request
header.

nginx.writing (featured admin
metric)

count

Represents the
current number of
connections where
the Nginx server is
writing the response
back to the client.

nginx.waiting
(featured metric)

count

Number of idle client
connections waiting
for a request.

Metric type

admin

PostgreSQL default checks and policies
Agent Client Collector provides the following default checks and policies for PostgreSQL health
monitoring.
PostgreSQL checks
Type

Check

Description

Event

postgresql.check-alive Triggers an alert on
commonchecks
the status of the
check-postgresPostgreSQL database. alive -d
{{.labels.params_database}}
-p
{{.labels.params_port}}
-H
{{.labels.params_host}}

Event

postgresql.checkconnections

Triggers an alert
on the total
connection load
on the PostgreSQL
database, based
on the configured
threshold.

Command

commonchecks
check-postgresconnections -d
{{.labels.params_database}}
-c
{{.labels.params_critical}}
-p
{{.labels.params_port}}
-H
{{.labels.params_host}}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4558


<!-- page 4559 -->
PostgreSQL checks (continued)
Type

Check

Description

Command

-w
{{.labels.params_warning}}
-a
{{.labels.params_use_percen
Metric

postgresql.metricactive-connections

Provides metrics
on the total active
connection on the
PostgreSQL database.

commonchecks
metricpostgresconnections -p
{{.labels.params_port}}
-d
{{.labels.params_database}}
-H
{{.labels.params_host}}

Metric

postgresql.metricdbsize

Provides metrics
on the total size
for each of the
server's PostgreSQL
databases.

commonchecks
metricpostgresdbsize -d
{{.labels.params_database}}
-H
{{.labels.params_host}}
-p
{{.labels.params_port}}

Metric

postgresql.metriclocks

Provides metrics
on the locks in
the PostgreSQL
database/tables.

commonchecks
metricpostgreslocks -p
{{.labels.params_port}}
-d
{{.labels.params_database}}
-H
{{.labels.params_host}}

Metric

postgresql.metricrelation-size

Provides metrics on
the database table
size on the server.

commonchecks
metricpostgresrelationsize -p
{{.labels.params_port}}
-l
{{.labels.params_limit}}
-H
{{.labels.params_host}}
-d
{{.labels.params_database}}

Metric

postgresql.metricstatsbgwriter

Provides metrics
related to buffer
allocations.

commonchecks
metricpostgresstatsbgwriter
-p
{{.labels.params_port}}
-d

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4559


<!-- page 4560 -->
PostgreSQL checks (continued)
Type

Check

Description

Command

{{.labels.params_database}}
-H
{{.labels.params_host}}
Metric

postgresql.metricstatsdb

Provides metrics
related to commits/
rollbacks/tuples
transactions /
deadlocks/query
conflicts count.

commonchecks
metricpostgresstatsdb -d
{{.labels.params_database}}
-H
{{.labels.params_host}}
-p
{{.labels.params_port}}

Metric

postgresql.metricstatsio

Provides table based
metrics related index
reads/total hits to a
table index.

commonchecks
metricpostgresstatsio -s
{{.labels.params_scope}}
-H
{{.labels.params_host}}
-p
{{.labels.params_port}}
-d
{{.labels.params_database}}

Metric

postgresql.metricstatstable

Provides metrics
related to CRUD
operations.

commonchecks
metricpostgresstatstable -d
{{.labels.params_database}}
-H
{{.labels.params_host}}
-s
{{.labels.params_scope}}
-p
{{.labels.params_port}}

PostgreSQL metrics
The following tables list and describe the metrics that are gathered as output from the specified
PostgreSQL checks. Entries indicated as Featured metrics are high-visibility metrics that are
displayed in the Operator Workspace Metric tab after an alert is generated. These metrics
provide the operator with additional information to help them further explore the specified issue.
postgresql.check-connections metrics
Metric

Description

pgsql.connections.active

Provides metrics on the total active
connections in the PostgreSQL database.

(Featured metric)
pgsql.connections.idle

Provides metrics on the total idle connections
on the PostgreSQL database.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4560


<!-- page 4561 -->
postgresql.check-connections metrics (continued)
Metric

Description

(Featured metric)

postgresql.metric-dbsize metrics
Metric

Description

pgsql.db.size

Provides metrics on the total disk size
utilization for each of the PostgreSQL
databases on the server.

(Featured metric)

postgresql.metric-locks metrics
Metric

Description

pgsql.locks.AccessShareLock

Provides metrics on read-lock mode acquired
automatically from queried tables.

pgsql.locks.ExclusiveLock

Provides metrics on read-lock mode acquired
by LOCK TABLE table for IN EXCLUSIVE MODE
statements.

postgresql.metric-relation-size metrics
Metric

Description

pgsql.tables_size

Provides metrics on the database table size on
the server.

(Featured metric)

postgresql.metric-statsbgwriter metrics
Metric

Description

pgsql.statsbgwriter.buffers_alloc

Provides metrics related to the number of
allocated buffers.

pgsql.statsbgwriter.buffers_backend

Provides metrics related to the number of
buffers written directly by a backend.

pgsql.statsbgwriter.buffers_backend_fsync

Provides metrics related to the number of
times a backend had to execute its own fsync
call (normally the background writer handles
those, even when the backend performs its
own write).

pgsql.statsbgwriter.buffers_checkpoint

Provides metrics related to the number of
buffers written during checkpoints.

pgsql.statsbgwriter.buffers_clean

Provides metrics related to the number of
buffers written by the background writer.

pgsql.statsbgwriter.checkpoint_sync_time

Provides metrics related to the total amount
of time spent in the portion of checkpoint

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4561


<!-- page 4562 -->
postgresql.metric-statsbgwriter metrics (continued)
Metric

Description

processing where files are synchronized to
disk, in milliseconds.
pgsql.statsbgwriter.checkpoint_write_time

Provides metrics related to the total amount
of time spent in the portion of checkpoint
processing where files are written to disk, in
milliseconds.

pgsql.statsbgwriter.checkpoints_req

Provides metrics related to the number
of requested checkpoints that have been
performed.

(Featured metric)
pgsql.statsbgwriter.checkpoints_timed
(Featured metric)
pgsql.statsbgwriter.maxwritten_clean

Provides metrics related to the number of
scheduled checkpoints that have been
performed.
Provides metrics related to the number
of times the background writer stopped a
cleaning scan because it had written too many
buffers.

postgresql.metric-statsdb metrics
Metric

Description

pgsql.statsdb.blk_read_time

Provides metrics related to the time spent
reading data file blocks by backends in this
database, in milliseconds.

(Featured metric)
pgsql.statsdb.blk_write_time
(Featured metric)
pgsql.statsdb.blks_hit
(Featured metric)

Provides metrics related to the time spent
writing data file blocks by backends in this
database, in milliseconds.
Provides metrics related to the number of
times disk blocks were found in the buffer
cache, so that a read was not necessary. This
only includes hits in the PostgreSQL buffer
cache, not the operating system's file system
cache.

pgsql.statsdb.blks_read

Provides metrics related to the number of disk
blocks read in this database.

pgsql.statsdb.checksum_failures

Provides metrics related to the number of
data page checksum failures detected in this
database (or on a shared object), or 0 if data
checksums are not enabled.

pgsql.statsdb.conflicts

Provides metrics related to the number
of queries canceled due to conflicts with
recovery in this database. Conflicts occur only
on standby servers.

pgsql.statsdb.deadlocks

Provides metrics related to the number of
deadlocks detected in this database.

(Featured metric)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4562


<!-- page 4563 -->
postgresql.metric-statsdb metrics (continued)
Metric

Description

pgsql.statsdb.numbackends

Provides metrics related to the number
of backends currently connected to this
database. This is the only column in this view
that returns a value reflecting the current state;
all other columns return the accumulated
values since the last reset.

pgsql.statsdb.temp_bytes

Provides metrics related to the total amount
of data written to temporary files by queries
in this database. All temporary files are
counted, regardless of why the temporary
file was created, and regardless of the
log_temp_files setting.

pgsql.statsdb.temp_files

Provides metrics related to the number of
temporary files created by queries in this
database. All temporary files are counted,
regardless of why the temporary file was
created (such as sorting or hashing), and
regardless of the log_temp_files setting.

pgsql.statsdb.tup_deleted

Provides metrics related to the number of rows
deleted by queries in this database.

pgsql.statsdb.tup_fetched

Provides metrics related to the number of rows
fetched by queries in this database.

pgsql.statsdb.tup_inserted

Provides metrics related to the number of rows
inserted by queries in this database.

pgsql.statsdb.tup_returned

Provides metrics related to the number of rows
returned by queries in this database.

pgsql.statsdb.tup_updated

Provides metrics related to the number of rows
updated by queries in this database.

pgsql.statsdb.xact_commit

Provides metrics related to the number of
transactions in this database that have been
committed.

pgsql.statsdb.xact_rollback

Provides metrics related to the number of
transactions in this database that have been
rolled back.

postgresql.metric-statsio metrics
Metric

Description

pgsql.statsio.heap_blks_hit

Provides metrics related to the number of
buffer hits in this table.

(Featured metric)
pgsql.statsio.heap_blks_read

Provides metrics related to the number of disk
blocks read from this table.

pgsql.statsio.idx_blks_hit

Provides metrics related to the number of
buffer hits in all indexes in this table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4563


<!-- page 4564 -->
postgresql.metric-statsio metrics (continued)
Metric

Description

pgsql.statsio.idx_blks_read

Provides metrics related to the number of disk
blocks read from all indexes in this table.

pgsql.statsio.tidx_blks_hit

Provides metrics related to the number of
buffer hits in this table's TOAST table index (if
any).

pgsql.statsio.tidx_blks_read

Provides metrics related to the number of
disk blocks read from this table's TOAST table
index.

pgsql.statsio.toast_blks_hit

Provides metrics related to the number of
buffer hits in this table's TOAST table (if any).

pgsql.statsio.toast_blks_read

Provides metrics related to the number of disk
blocks read from this table's TOAST table (if
any).

postgresql.metric-statsio metrics
Metric

Description

pgsql.statstable.idx_scan

Provides metrics related to the number of
index scans initiated on this table.

pgsql.statstable.idx_tup_fetch

Provides metrics related to the number of live
rows fetched by index scans.

pgsql.statstable.n_dead_tup

Provides metrics related to the estimated
number of dead rows.

pgsql.statstable.n_live_tup

Provides metrics related to the estimated
number of live rows.

pgsql.statstable.n_tup_del

Provides metrics related to the number of
deleted rows.

pgsql.statstable.n_tup_hot_upd

Provides metrics related to the number of rows
HOT updated (that is, with no separate index
update required).

pgsql.statstable.n_tup_ins

Provides metrics related to the number of
inserted rows.

pgsql.statstable.n_tup_upd

Provides metrics related to the number of
updated rows.

pgsql.statstable.seq_scan

Provides metrics related to the number of
sequential scans initiated on this table.

pgsql.statstable.seq_tup_read

Provides metrics related to the number of live
rows fetched by sequential scans.

RabbitMQ default checks and policies
Agent Client Collector provides the following default checks and policies for RabbitMQ health
monitoring. You must perform RabbitMQ discovery before executing the checks. RabbitMQ
checks are available only in a Windows environment.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4564


<!-- page 4565 -->
RabbitMQ Events policy
Type

Check

Description

Command

Event

check-rabbitmq-alive

Verifies whether the
RabbitMQ server
is alive, using the
REST API. If the server
is down, an alert
triggers.

check-rabbitmqalive.rb --host
{{.labels.params_host}}
--port
{{.labels.params_port}}
-v
{{.labels.params_vhost}}

Event

check-rabbitmqcluster-health

Verifies whether the
RabbitMQ server's
cluster nodes are
running. If the nodes
are down, an alert
triggers.

check-rabbitmqclusterhealth.rb
--host
{{.labels.params_host}}
--port
{{.labels.params_port}}

Event

check-rabbitmqconsumers

Verifies the number
of consumers on the
RabbitMQ server and
triggers an alert based
on the configured
threshold.

check-rabbitmqconsumers.rb
{{if .labels.params_warn}}
--warn
{{.labels.params_warn}}
{{end}}
{{if .labels.params_critica
--critical
{{.labels.params_critical}}
{{end}} --host
{{.labels.params_host}}
--port
{{.labels.params_port}}

Event

check-rabbitmqmessages

Verifies the total
number of messages
queued on the
RabbitMQ server and
triggers an alert based
on the threshold.

check-rabbitmqmessages.rb
--critical
{{.labels.params_critical}}
--port
{{.labels.params_port}}
--warn
{{.labels.params_warn}}
--host
{{.labels.params_host}}

Event

check-rabbitmqnetwork-partitions

Verifies whether the
RabbitMQ network
partition has occurred
and triggers an
alert based on the
threshold.

check-rabbitmqnetworkpartitions.rb --host
{{.labels.params_host}}
--port
{{.labels.params_port}}

Event

check-rabbitmq-node- Verifies whether the
health
RabbitMQ server
node is in a running
state.

check-rabbit
mq-node-health
.rb --host
{{.labels.par
ams_host}}
{{if .labels.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4565


<!-- page 4566 -->
RabbitMQ Events policy (continued)
Type

Check

Description

Command

params_watchal
arms}}
--alarms
{{.labels.par
ams_watchalarm
s}} {{end}}
{{if .labels.
params_socketw
arn}} --swarn
{{.labels.par
ams_socketwar
n}} {{end}}
{{if .labels.
params_memcri
t}} --mcrit
{{.labels.par
ams_memcrit}}
{{end}}
{{if .labels.
params_fdcri
t}} --fcrit
{{.labels.par
ams_fdcrit}}
{{end}}
{{if .labels.
params_socketc
rit}} --scrit
{{.labels.par
ams_socketcri
t}} {{end}}
--port
{{.labels.par
ams_port}}
{{if .labels.
params_memwar
n}} --mwarn
{{.labels.par
ams_memwarn}}
{{end}}
{{if .labels.
params_fdwar
n}} --fwarn
{{.labels.par
ams_fdwarn}}
{{end}}
Event

check-rabbitmq-node- Checks and displays
usage
usage of the
RabbitMQ server
node.

check-rabbit
mq-node-usage
.rb
{{if .labels.
params_procwar
n}} --pwarn

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4566


<!-- page 4567 -->
RabbitMQ Events policy (continued)
Type

Check

Description

Command

{{.labels.par
ams_procwarn}}
{{end}}
--port
{{.labels.par
ams_port}}
{{if .labels.
params_socketw
arn}} --swarn
{{.labels.par
ams_socketwar
n}} {{end}}
--type
{{.labels.par
ams_type}}
{{if .labels.
params_diskcri
t}} --dcrit
{{.labels.par
ams_diskcrit}}
{{end}}
{{if .labels.
params_fdcri
t}} --fcrit
{{.labels.par
ams_fdcrit}}
{{end}}
{{if .labels.
params_proccri
t}} --pcrit
{{.labels.par
ams_proccrit}}
{{end}}
{{if .labels.
params_diskwar
n}} --dwarn
{{.labels.par
ams_diskwarn}}
{{end}}
{{if .labels.
params_socketc
rit}} --scrit
{{.labels.par
ams_socketcri
t}} {{end}}
--host
{{.labels.par
ams_host}}
{{if .labels.
params_memcri
t}} --mcrit
{{.labels.par
ams_memcrit}}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4567


<!-- page 4568 -->
RabbitMQ Events policy (continued)
Type

Check

Description

Command

{{end}}
{{if .labels.
params_fdwar
n}} --fwarn
{{.labels.par
ams_fdwarn}}
{{end}}
{{if .labels.
params_memwar
n}} mwarn
{{.labels.par
ams_memwarn}}
{{end}}
Event

check-rabbitmqqueue-drain-time

Verifies the time it will
take for each queue
on the RabbitMQ
server to drain,
based on the current
message exit rate.
For example, if a
queue has 1,000
messages in it but
only 1 message exits
per second, an alert
generates because
the default critical
level of 360 seconds
has been exceeded.

check-rabbitmqqueue-draintime.rb --host
{{.labels.params_host}}
--port
{{.labels.params_port}}
--warn
{{.labels.params_warn}}
--critical
{{.labels.params_critical}}

Event

check-rabbitmqqueues-synchronised

Verifies that all
mirrored queues with
secondary queues are
synchronised.

check-rabbitmqqueuessynchronised.rb
--host
{{.labels.params_host}}
--port
{{.labels.params_port}}

Event

check-rabbitmqstomp-alive

Verifies whether the
RabbitMQ server is
alive and responding
to STOMP.

check-rabbitmqstomp-alive.rb
--host
{{.labels.params_host}}
--queue
{{.labels.params_queue}}
--port
{{.labels.params_port}}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4568


<!-- page 4569 -->
RabbitMQ Metrics policy
Type

Check

Description

Command

Metric

metrics-rabbitmqoverview

Provides RabbitMQ
overview statistics.

metricsrabbitmqoverview.rb
--port
{{.labels.params_port}}
--host
{{.labels.params_host}}

Metric

metrics-rabbitmqqueue

Provides RabbitMQ
metrics per queue.

metricsrabbitmqqueue.rb --port
{{.labels.params_port}}
--host
{{.labels.params_host}}
{{if .labels.params_vhost}}
--vhost
{{.labels.params_vhost}}
{{end}}

RabbitMQ metrics
The following table lists the metrics that are gathered as output from RabbitMQ checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
metrics-rabbitmq-overview metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

rabbitmq.queue_totals.messages.count

count

Provides metrics on
the total number of
messages (ready plus
unacknowledged).

rabbitmq.queue_totals.messages.rate
(featured metric)

rate / sec

Provides metrics on
the total number of
messages (ready plus
unacknowledged)

rabbitmq.queue_totals.messages_ready.count

count

Provides metrics
on the number of
messages ready for
delivery.

rabbitmq.queue_totals.messages_ready.rate

rate / sec

Provides metrics
on the number of
messages ready for
delivery.

rabbitmq.queue_totals.messages_unacknowledged.count
count

Provides metrics
on the number of

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4569


<!-- page 4570 -->
metrics-rabbitmq-overview metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

unacknowledged
messages.
rabbitmq.queue_totals.messages_unacknowledged.rate
rate / sec

Provides metrics
on the number of
unacknowledged
messages.

rabbitmq.message_stats.deliver_get.count

count

Provides metrics
on messages
recently delivered to
consumers.

rabbitmq.message_stats.deliver_get.rate
(featured metric)

rate / sec

Provides metrics
on messages
recently delivered to
consumers.

rabbitmq.message_stats.deliver_no_ack.count count

Provides metrics on
unacknowledged
messages recently
delivered to
consumers.

rabbitmq.message_stats.deliver_no_ack.rate

rate / sec

Provides metrics on
unacknowledged
messages recently
delivered to
consumers.

rabbitmq.message_stats.publish.count

count

Provides metrics on
recently published
messages.

rabbitmq.message_stats.publish.rate

rate / sec

Provides metrics on
the recently published
messages.

rabbitmq.object_totals.channels.count

count

Provides metrics on
the total number of
channels.

rabbitmq.object_totals.connections.count
(featured metric)

count

Provides metrics on
the total number of
connections.

rabbitmq.object_totals.consumers.count
(featured metric)

count

Provides metrics on
the total number of
consumers.

rabbitmq.object_totals.exchanges.count

count

Provides metrics on
the total number of
exchanges.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4570


<!-- page 4571 -->
metrics-rabbitmq-overview metrics (continued)
Resource (name of
specific database,
where relevant)

Metric type

Units

Metric type description

count

Provides metrics on
the total number of
queues.

rabbitmq.queue.
Queue Name
{{QueueName}}.avg_egress_rate
(featured metric)

count

Provides queue
specific metrics on
the rate at which
unacknowledged
message records
enter RAM for the
given queue.

rabbitmq.queue.
Queue Name
{{QueueName}}.consumers

count

Provides queue
specific metrics on
the total consumers
for the given queue.

rabbitmq.queue.
Queue Name
{{QueueName}}.messages

count

Provides queue
specific metrics on
the total messages in
the given queue.

rabbitmq.queue.
Queue Name
{{QueueName}}.drain_time

count

Provides queue
specific metrics on
the message drain
time for the given
queue.

rabbitmq.object_totals.queues.count
(featured metric)

metrics-rabbitmq-queue metrics

URL Monitoring default checks and policies
Agent Client Collector provides policies for URL Monitoring. Polices come with embedded
checks.
URL Monitoring uses the HTTP Entry Point default policies. For details, see HTTP default checks
and policies.
Varnish default checks and policies
Agent Client Collector provides the following default checks and policies for Varnish monitoring.
Varnish metrics policy
Type

Check

Description

Metric

app.varnish.metrics-Collects Varnish
varnish
metrics from the
host.

Usage

linuxchecks
metricsvarnish
(options)
where:

Output

hostname.M
AIN_sess_c
onn 175
1649420
020

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4571


<!-- page 4572 -->
Varnish metrics policy (continued)
Type

Check

Description

Usage

• -t = fields List
of required
metrics,
comma
separated
within ""
• -v =
varnishname
The Varnish
instance to
retrieve data
from.

Output

hostname.M
AIN_sess_d
rop 0
1649420
020
hostname.M
AIN_client
_req 173
1649420
020
hostname.M
AIN_cache_
hit 0
1649420
020
hostname.M
AIN_cache_
hitpass 0
1649420
020
hostname.M
AIN_cache_
miss 167
1649420
020
hostname.M
AIN_backen
d_conn 0
1649420
020
hostname.M
AIN_backen
d_unheal
thy 0
1649420
020
hostname.M
AIN_backen
d_busy 0
1649420
020
hostname.M
AIN_backen
d_fail 171
1649420
020
hostname.M
AIN_backen
d_reuse 0
1649420
020
hostname.M
AIN_backen

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4572


<!-- page 4573 -->
Varnish metrics policy (continued)
Type

Check

Description

Usage

Output

d_recycle
0
1649420
020
hostname.M
AIN_thre
ads 200
1649420
020
hostname.M
AIN_thread
s_limited
0
1649420
020
hostname.M
AIN_thread
s_created
200
1649420
020
hostname.M
AIN_thread
s_failed 0
1649420
020
hostname.M
AIN_thread
_queue_len
0
1649420
020
hostname.M
AIN_sess_q
ueued 0
1649420
020
hostname.M
AIN_n_expi
red 167
1649420
020
hostname.M
AIN_n_lru_
nuked 0
1649420
020
hostname.M
AIN_backen
d_req 0
1649420
020
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4573


<!-- page 4574 -->
Varnish metrics
The following table lists the metrics that are gathered as output from Varnish checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
Varnish metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

MAIN_sess_conn
(featured metric)

count

Cumulative number
of accepted client
connections by
Varnish Cache.

MAIN_sess_drop
(featured metric)

count

Number of
connections dropped
due to a full queue.

MAIN_client_req
(featured metric)

count

Cumulative number
of received client
requests. Increments
after a request is
received, but before
Varnish responds.

MAIN_cache_hit

count

Cumulative number of
times a file was served
from Varnish’s cache.

MAIN_cache_hitpass

count

Cumulative number of
hits for a “pass” file.

MAIN_cache_miss

count

Cumulative number
of times a file was
requested but was not
in the cache, and was
therefore requested
from the backend.

MAIN_backend_conn

count

Cumulative number
of successful TCP
connections to the
backend.

MAIN_backend_unhealthy
(featured metric)

count

Cumulative number of
backend connections
which were not
attempted because
the backend has been
marked as unhealthy.

MAIN_backend_busy

count

Cumulative number
of times the
maximum amount of
connections to the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4574


<!-- page 4575 -->
Varnish metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

backend has been
reached.
MAIN_backend_fail
(featured metric)

count

Cumulative number of
failed connections to
the backend.

MAIN_backend_reuse
(featured metric)

count

Cumulative number of
connections that were
reused from the keepalive pool.

MAIN_backend_recycle

count

Cumulative number
of current backend
connections which
were put back to a
pool of keep-alive
connections and have
not yet been used.

MAIN_threads
(featured metric)

count

Number of threads in
all pools.

MAIN_threads_limited

count

Number of times
a thread needed
to be created but
couldn't because
varnishd maxed out its
configured capacity
for new threads.

MAIN_threads_created

count

Number of times
a thread has been
created.

MAIN_threads_failed
(featured metric)

count

Number of times
that Varnish
unsuccessfully tried to
create a thread.

MAIN_thread_queue_len

count

Current queue length:
number of requests
waiting on worker
thread to become
available.

MAIN_sess_queued

count

Number of times
Varnish has been out
of threads and had to
queue up a request.

MAIN_n_expired
(featured metric)

count

Cumulative number
of expired objects for
example due to TTL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4575


<!-- page 4576 -->
Varnish metrics (continued)
Resource (name of
specific database,
where relevant)

Metric type

Units

Metric type description

MAIN_n_lru_nuked
(featured metric)

count

Least Recently Used
Nuked Objects:
Cumulative number
of cached objects
that Varnish has
evicted from the
cache because of a
lack of space.

MAIN_backend_req
(featured metric)

count

Number of requests to
the backend.

vSphere default checks and policies
Agent Client Collector provides the following default checks and policies for vSphere monitoring.
vSphere virtualMachine metrics policy
Type

Check

Description

Usage

Output

Metric

vsphere.metricVirtualMachine

Retrieves metrics
for a vSphere
virtual machine.
Must use a proxy
agent.

commonchecks vsphere.VirtualMachine.d
metric8 1654755994
vsphere -H
hostname -R
VirtualMachine
-v vm_id -r
true -i 20
where:
• -H = hostname
Instance
Hostname
• -i = intervalId
20 for real
time metrics;
300 for 5
minutes older
aggregate
metrics (default
300)
• -r =
resourceLevelMetric
To enable
resource
level metrics
(default=false)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4576


<!-- page 4577 -->
vSphere Datastore Metrics policy
Type

Check

Description

Usage

Output

Metric

vSphere.metricDatastore

Retrieves Metrics
for vSphere
Datastore. Must
use a proxy
agent.

commonchecks vsphere.Datastore.disk.c
metric21474836480
vsphere -H
1655182836
hostname -R
Datastore -v
vm_id -r
where:
• -H = hostname
Instance
Hostname
• -r =
resourceLevelMetric
To enable
resource
level metrics
(default=false)

vSphere Datacenter Metrics policy
Type

Check

Description

Usage

Metric

vsphere.metricDatacenter

Retrieves metrics commonchecks
for the vSphere
metricdatacenter.
vsphere -H
hostname -R
Datacenter
-v vm_id -r

Output

vsphere.Da
tacenter.v
mop.numCha
ngeDS.late
st.total
217
1655194
where:
924
• -H = hostname
vsphere.Da
Instance
tacenter.v
Hostname
mop.numCha
ngeHost.la
• -r =
test.total
resourceLevelMetric
1373
To enable
1655194
resource
924
level metrics
vsphere.Da
(default=false)
tacenter.v
mop.numCha
ngeHostDS.
latest.to
tal 9
1655194
924
vsphere.Da
tacenter.v
mop.numClo
ne.latest.
total 192

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4577


<!-- page 4578 -->
vSphere Datacenter Metrics policy (continued)
Type

Check

Description

Usage

Output

1655194
924

vSphere ESX Server Metrics policy
Type

Check

Description

Usage

Output

Metric

vsphere.metricESX_Server

Retrieves metrics
for vSphere
ESX server or
HostSystem.
Must use a proxy
agent.

commonchecks
metricvsphere -H
hostname -R
HostSystem
-v vm_id -r

vsphere.Ho
stSystem.n
et.broadca
stRx.summa
tion.total
63885
1655198
where:
166
• -H = hostname
vsphere.Ho
Instance
stSystem.n
Hostname
et.broadca
stTx.summa
• -r =
tion.total
resourceLevelMetric
196
To enable
1655198
resource
166
level metrics
vsphere.Ho
(default=false)
stSystem.n
et.bytesRx
.average.t
otal 5924
1655198
166

vSphere metrics
The following table lists the metrics that are gathered as output from vSphere checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
vsphere.metric-VirtualMachine metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

net.broadcastRx.summation
network adapter

packets

Number of broadcast
packets received.

net.broadcastTx.summation
network adapter

packets

Number of broadcast
packets transmitted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4578


<!-- page 4579 -->
vsphere.metric-VirtualMachine metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

net.bytesRx.average

network adapter

KiB

Average amount of
data received per
second.

net.bytesTx.average

network adapter

KiB

Average amount of
data transmitted per
second.

net.droppedRx.summation
network adapter

packets

Number of received
packets dropped.

net.droppedTx.summation
network adapter

packets

Number of transmitted
packets dropped.

net.multicastRx.summation
network adapter

packets

Number of multicast
packets received.

net.multicastTx.summation
network adapter

packets

Number of multicast
packets transmitted.

net.packetsRx.summation
network adapter

packets

Number of packets
received.

net.packetsTx.summation etwork adapter

packets

Number of packets
transmitted.

net.received.average

network adapter

KiB

Average rate at which
data was received
during the interval.
This represents the
bandwidth of the
network.

net.transmitted.average network adapter

KiB

Average rate at which
data was transmitted
during the interval.
This represents the
bandwidth of the
network.

net.usage.average
(featured metric)

KiB

Network utilization
(combined transmitand receive-rates).

disk.maxTotalLatency.latest
drive
(featured metric)

millisecond

Highest latency value
across all disks used
by the host.

disk.read.average

drive

KiB

Average number of
kilobytes read from
the disk each second.

disk.usage.average
(featured metric)

drive

KiB

Aggregated disk I/O
rate.

network adapter

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4579


<!-- page 4580 -->
vsphere.metric-VirtualMachine metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

disk.usage.maximum

drive

KiB

Maximum disk I/O
rate.

disk.usage.minimum

drive

KiB

Minimum disk I/O rate.

disk.write.average

drive

KiB

Average number of
kilobytes written to the
disk each second.

cpu.costop.summation cpu-core

millisecond

Time the virtual
machine is ready
to run, but is
unable to run due
to co-scheduling
constraints.

cpu.demand.average

megahertz

The amount of CPU
resources a virtual
machine would use
if there were no CPU
contention or CPU
limit.

cpu.demandEntitlementRatio.latest
cpu-core

percent

CPU resource
entitlement to CPU
demand ratio.

cpu.entitlement.latest

cpu-core

megahertz

CPU resources
devoted by the ESXi
scheduler.

cpu.idle.summation

cpu-core

millisecond

Total time that the
CPU spent in an idle
state.

cpu.latency.average

cpu-core

percent

Percent of time the
virtual machine is
unable to run because
it is contending for
access to the physical
CPU(s).

cpu.maxlimited.summation
cpu-core

millisecond

Time the virtual
machine is ready
to run, but is not
running because
it has reached its
maximum CPU limit
setting.

cpu.overlap.summation cpu-core

millisecond

Time the virtual
machine was
interrupted to perform
system services on

cpu-core

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4580


<!-- page 4581 -->
vsphere.metric-VirtualMachine metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

behalf of itself or other
virtual machines.
cpu.readiness.average cpu-core

percent

Percentage of time
that the virtual
machine was ready,
but could not get
scheduled to run on
the physical CPU.

cpu.ready.summation

cpu-core

millisecond

Milliseconds of CPU
time spent in ready
state.

cpu.run.summation

cpu-core

millisecond

Time the virtual
machine is scheduled
to run.

cpu.swapwait.summation
cpu-core

millisecond

CPU time spent
waiting for swap-in.

cpu.system.summation cpu-core

millisecond

Amount of time spent
on system processes
on each virtual CPU in
the virtual machine.

cpu.usage.average
(featured metric)

percent

Percentage of CPU
capacity being used.

cpu.usagemhz.average cpu-core

megahertz

CPU usage, as
measured in
megahertz.

cpu.used.summation

cpu-core

millisecond

Time accounted to
the virtual machine.
If a system service
runs on behalf of this
virtual machine, the
time spent by that
service (represented
by cpu.system) should
be charged to this
virtual machine. If
not, the time spent
(represented by
cpu.overlap) should
not be charged
against this virtual
machine.

cpu.wait.summation
(featured metric)

cpu-core

millisecond

Total CPU time spent
in wait state.The wait
total includes time
spent the CPU Idle,

cpu-core

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4581


<!-- page 4582 -->
vsphere.metric-VirtualMachine metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

CPU Swap Wait, and
CPU I/O Wait states.
cpu.usage.vcpus.average
cpu-core

percent

Percentage of vcpus
capacity being used.

cpu.utilization.average cpu-core

percent

Percentage of CPU
capacity being used.

mem.active.average

memory

KiB

Amount of memory
that is actively used,
as estimated by
VMkernel based on
recently touched
memory pages.

mem.activewrite.averagememory

KiB

Estimate for the
amount of memory
actively being written
to by the virtual
machine.

mem.compressed.average
memory

KiB

Kilobytes of memory
that have been
compressed.

mem.compressionRate.average
memory

KiB

Rate of memory
compression for the
virtual machine.

mem.consumed.averagememory

KiB

Amount of host
physical memory
consumed by a virtual
machine, host, or
cluster.

mem.decompressionRate.average
memory

KiB

Rate of memory
decompression for
the virtual machine.

mem.entitlement.average
memory

KiB

Amount of host
physical memory
the virtual machine
is entitled to, as
determined by the
ESX scheduler.

mem.granted.average

memory

KiB

Amount of host
physical memory or
physical memory that
is mapped for a virtual
machine or a host.

mem.latency.average

memory

KiB

Percentage of
time the virtual
machine is waiting to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4582


<!-- page 4583 -->
vsphere.metric-VirtualMachine metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

access swapped or
compressed memory.
mem.llSwapInRate.average
memory

KiB

Rate at which memory
is being swapped
from host cache into
active memory.

mem.llSwapOutRate.average
memory

KiB

Rate at which memory
is being swapped
from active memory to
host cache.

mem.llSwapUsed.average
memory

KiB

Space used for
caching swapped
pages in the host
cache.

mem.overhead.average memory

KiB

Host physical
memory consumed
by the virtualization
infrastructure for
running the virtual
machine.

mem.overheadMax.average
memory

KiB

Host physical memory
reserved for use as
the virtualization
overhead for the
virtual machine.

mem.overheadTouched.average
memory

KiB

Actively touched
overhead host
physical memory
(KB) reserved for use
as the virtualization
overhead for the
virtual machine.

mem.shared.average

memory

KiB

Amount of guest
physical memory that
is shared with other
virtual machines,
relative to a single
virtual machine or to
all powered-on virtual
machines on a host.

mem.usage.average
(featured metric)

memory

percent

Memory usage as
percent of total
configured or
available memory.

KiB

Amount of memory
allocated by the virtual

mem.vmmemctl.averagememory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4583


<!-- page 4584 -->
vsphere.metric-VirtualMachine metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

machine memory
control driver.
mem.vmmemctltarget.average
memory

KiB

Target value set by
VMkernal for the
virtual machine's
memory balloon size.
In conjunction with
vmmemctl metric,
this metric is used by
VMkernel to inflate
and deflate the
balloon for a virtual
machine.

mem.zero.average

KiB

Memory that contains
0s only. Included
in shared amount.
Through transparent
page sharing, zero
memory pages can be
shared among virtual
machines that run
the same operating
system.

power.energy.summationpower

joule

Total energy (in joule)
used since last stats
reset.

power.power.average

power

watt

Current power usage.

sys.heartbeat.latest

system

number

Number of heartbeats
issued per virtual
machine.

sys.osUptime.latest

system

seconds

Total time elapsed,
in seconds, since
last operating system
boot-up.

sys.uptime.latest

system

seconds

Total time elapsed
since last system
startup.

virtualDisk.read.averagevirtual disk

KiB

Average number of
kilobytes read from
the virtual disk each
second.

virtualDisk.write.averagevirtual disk

KiB

Average number of
kilobytes written to
the virtual disk each
second.

memory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4584


<!-- page 4585 -->
vsphere.metric-VirtualMachine metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

rescpu.actav1.latest

rescpu

percent

CPU active average
over 1 minute.

rescpu.actav15.latest

rescpu

percent

CPU active average
over 15 minutes.

rescpu.actav5.latest

rescpu

percent

CPU active average
over 5 minutes.

rescpu.actpk1.latest

rescpu

percent

CPU active peak over
1 minute.

rescpu.actpk15.latest

rescpu

percent

CPU active peak over
15 minutes.

rescpu.actpk5.latest

rescpu

percent

CPU active peak over
5 minutes.

rescpu.runav1.latest

rescpu

percent

CPU running average
over 1 minute.

rescpu.runav15.latest

rescpu

percent

CPU running average
over 15 minutes.

rescpu.runav5.latest

rescpu

percent

CPU running average
over 5 minutes.

rescpu.runpk1.latest

rescpu

percent

CPU running peak
over 1 minute.

rescpu.runpk15.latest

rescpu

percent

CPU running peak
over 15 minutes.

rescpu.runpk5.latest

rescpu

percent

CPU running peak
over 5 minutes.

rescpu.sampleCount.latest
rescpu

millisecond

Group CPU sample
count.

rescpu.samplePeriod.latest
rescpu

millisecond

Group CPU sample
period.

Units

Metric type description

vmop.numChangeDS.latest
Virtual Machine
Operations Counters

Number

Number of datastore
change operations
for powered-off and
suspended virtual
machines.

vmop.numChangeHost.latest
Virtual Machine
Operations Counters

Number

Number of host
change operations

vsphere.metric-Datacenter metrics
Metric type

Resource (name of
specific database,
where relevant)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4585


<!-- page 4586 -->
vsphere.metric-Datacenter metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

for powered-off and
suspended virtual
machines.
vmop.numChangeHostDS.latest
Virtual Machine
Operations Counters

Number

Number of host and
datastore change
operations for
powered-off and
suspended virtual
machines.

vmop.numClone.latest Virtual Machine
Operations Counters

Number

Number of virtual
machine clone
operations.

vmop.numCreate.latest Virtual Machine
(featured metric)
Operations Counters

Number

Number of virtual
machine create
operations.

vmop.numDeploy.latest Virtual Machine
Operations Counters

Number

Number of virtual
machine template
deploy operations.

vmop.numDestroy.latestVirtual Machine
(featured metric)
Operations Counters

Number

Number of virtual
machine delete
operations.

vmop.numPoweroff.latestVirtual Machine
Operations Counters

Number

Number of virtual
machine power off
operations.

vmop.numPoweron.latest
Virtual Machine
Operations Counters

Number

Number of virtual
machine power on
operations.

vmop.numRebootGuest.latest
Virtual Machine
(featured metric)
Operations Counters

Number

Number of virtual
machine guest reboot
operations.

vmop.numReconfigure.latest
Virtual Machine
Operations Counters

Number

Number of virtual
machine reconfigure
operations.

vmop.numRegister.latestVirtual Machine
Operations Counters

Number

Number of virtual
machine register
operations.

vmop.numReset.latest Virtual Machine
Operations Counters

Number

Number of virtual
machine reset
operations.

vmop.numSVMotion.latest
Virtual Machine
Operations Counters

Number

Number of migrations
with Storage vMotion
(datastore change
operations for
powered-on VMs).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4586


<!-- page 4587 -->
vsphere.metric-Datacenter metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

vmop.numShutdownGuest.latest
Virtual Machine
Operations Counters

Number

Number of virtual
machine guest
shutdown operations.

vmop.numStandbyGuest.latest
Virtual Machine
Operations Counters

Number

Number of virtual
machine standby
guest operations.

vmop.numSuspend.latest
Virtual Machine
Operations Counters

Number

Number of virtual
machine suspend
operations.

vmop.numUnregister.latest
Virtual Machine
Operations Counters

Number

Number of virtual
machine unregister
operations.

vmop.numVMotion.latestVirtual Machine
(featured metric)
Operations Counters

Number

Number of migrations
with vMotion (host
change operations for
powered-on VMs).

vmop.numXVMotion.latest
Virtual Machine
Operations Counters

Number

Number of host and
datastore change
operations for
powered-on and
suspended virtual
machines.

Units

Metric type description

datastore.busResets.summation
Datastore

Number

Number of SCSI-bus
reset commands
issued.

datastore.commandsAborted.summation
Datastore

Number

Number of SCSI
commands aborted.

datastore.datastoreIops.average
Datastore

Number

Storage I/O Control
aggregated IOPS.

datastore.datastoreMaxQueueDepth.latest
Datastore

Number

Storage I/O Control
datastore maximum
queue depth.

datastore.datastoreNormalReadLatency.latest
Datastore

millisecond

Storage DRS
datastore normalized
read latency.

vsphere.metric-Datastore metrics
Metric type

Resource (name of
specific database,
where relevant)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4587


<!-- page 4588 -->
vsphere.metric-Datastore metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

datastore.datastoreNormalWriteLatency.latest
Datastore

millisecond

Storage DRS
datastore normalized
write latency.

datastore.datastoreReadBytes.latest
Datastore

millisecond

Storage DRS
datastore bytes read.

datastore.datastoreReadIops.latest
Datastore

Number

Storage DRS
datastore read I/O
rate.

datastore.datastoreReadLoadMetric.latest
Datastore

Number

Storage DRS
datastore metric for
read workload model.

datastore.datastoreReadOIO.latest
Datastore

Number

Storage DRS
datastore outstanding
read requests.

datastore.datastoreVMObservedLatency.latest
Datastore
microsecond

The average datastore
latency as seen by
virtual machines.

datastore.datastoreWriteBytes.latest
Datastore

millisecond

Storage DRS
datastore bytes
written.

datastore.datastoreWriteIops.latest
Datastore

Number

Storage DRS
datastore write I/O
rate.

datastore.datastoreWriteLoadMetric.latest
Datastore

Number

Storage DRS
datastore metric for
write workload model.

datastore.datastoreWriteOIO.latest
Datastore

Number

Storage DRS
datastore outstanding
write requests.

datastore.maxTotalLatency.latest
Datastore

millisecond

Highest latency value
across all datastores
used by the host.

datastore.numberReadAveraged.average
Datastore

Number

Average number
of read commands
issued per second to
the datastore.

datastore.numberWriteAveraged.average
Datastore

Number

Average number
of write commands
issued per second to
the datastore during
the collection interval.

datastore.read.average Datastore
(featured metric)

KiB

Rate of reading data
from the datastore.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4588


<!-- page 4589 -->
vsphere.metric-Datastore metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

datastore.siocActiveTimePercentage.average
Datastore
(featured metric)

Units

Metric type description

percent

Percentage of time
Storage I/O Control
actively controlled
datastore latency.

datastore.sizeNormalizedDatastoreLatency.average
Datastore
microsecond

Storage I/O Control
size-normalized I/O
latency.

datastore.throughput.contention.average
Datastore

millisecond

Average amount
of time for an I/O
operation to the
datastore or LUN
across all ESX hosts
accessing it.

datastore.throughput.usage.average
Datastore

KiB

The current
bandwidth usage for
the datastore or LUN.

datastore.totalReadLatency.average
Datastore

millisecond

Average amount
of time for a read
operation from the
datastore.

datastore.totalWriteLatency.average
Datastore

millisecond

Average amount
of time for a write
operation from the
datastore.

datastore.unmapIOs.summation
Datastore

Number

Number of Unmap
operations.

datastore.unmapSize.summation
Datastore

Number

Total UnMap size.

datastore.write.average Datastore
(featured metric)

KiB

Rate of writing data to
the datastore.

disk.busResets.summation
disk

Number

Number of SCSI-bus
reset commands
issued.

disk.capacity.latest

KiB

Configured size of the
datastore.

disk.capacity.contention.average
disk

KiB

The amount of
storage capacity
overcommitment for
the entity, measured
in percent.

disk.capacity.provisioned.average
disk

KiB

Provisioned size of the
entity.

disk.capacity.usage.average
disk

KiB

The amount of storage
capacity currently

disk

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4589


<!-- page 4590 -->
vsphere.metric-Datastore metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

being consumed by or
on the entity.
disk.commands.summation
disk

Number

Number of SCSI
commands issued.

disk.commandsAborted.summation
disk

Number

Number of SCSI
commands aborted.

disk.commandsAveraged.average
disk

Number

Average number of
SCSI commands
issued per second.

disk.deltaused.latest

KiB

Storage overhead of
a virtual machine or a
datastore due to delta
disk backings.

disk.deviceLatency.average
disk

millisecond

Average amount
of time it takes to
complete an SCSI
command from
physical device.

disk.deviceReadLatency.average
disk

millisecond

Average amount
of time it takes to
complete read from
physical device.

disk.deviceWriteLatency.average
disk

millisecond

Average amount of
time to write from the
physical device.

disk.kernelLatency.average
disk

millisecond

Average amount
of time spent by
VMkernel to process
each SCSI command.

disk.kernelReadLatency.average
disk

millisecond

Average amount
of time spent by
VMkernel to process
each SCSI read
command.

disk.kernelWriteLatency.average
disk

millisecond

Average amount
of time spent by
VMkernel to process
each SCSI write
command.

disk.maxQueueDepth.average
disk
(featured metric)

Number

Maximum queue
depth.

disk.maxTotalLatency.latest
disk

millisecond

Highest latency value
across all disks used
by the host.

disk

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4590


<!-- page 4591 -->
vsphere.metric-Datastore metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

disk.numberRead.summation
disk

Number

Number of disk reads
during the collection
interval.

disk.numberReadAveraged.average
disk

Number

Average number
of read commands
issued per second to
the datastore.

disk.numberWrite.summation
disk

Number

Number of disk writes
during the collection.

disk.numberWriteAveraged.average
disk

Number

Average number
of write commands
issued per second to
the datastore.

disk.provisioned.latest disk

KiB

Amount of storage
set aside for use by a
datastore or a virtual
machine. Files on the
datastore and the
virtual machine can
expand to this size but
not beyond it.

disk.queueLatency.average
disk

millisecond

Average amount
of time spent in
VMkernel queue (per
SCSI command).

disk.queueReadLatency.average
disk
(featured metric)

millisecond

Average amount of
time spent in the
VMkernel queue per
SCSI read command.

disk.queueWriteLatency.average
disk

millisecond

Average amount of
time spent in the
VMkernel queue per
SCSI write command.

disk.read.average

KiB

Average number of
kilobytes read from
the disk each second.

disk.scsiReservationCnflctsPct.average
disk

Number

Number of SCSI
reservation conflicts
for the LUN as a
percent of total
commands during the
collection interval.

disk.scsiReservationConflicts.summation
disk

Number

Number of SCSI
reservation conflicts

disk

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4591


<!-- page 4592 -->
vsphere.metric-Datastore metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

for the LUN during the
collection interval.
disk.throughput.contention.average
disk

millisecond

Average amount
of time for an I/O
operation to the
datastore or LUN
across all ESX hosts
accessing it.

disk.throughput.usage.average
disk

KiB

The current
bandwidth usage for
the datastore or LUN.

disk.totalLatency.average
disk
(featured metric)

millisecond

Average amount of
time taken during the
collection interval
to process a SCSI
command issued by
the guest OS to the
virtual machine.

disk.totalReadLatency.average
disk

millisecond

Average amount of
time taken to process
a SCSI read command
issued from the guest
OS to the virtual
machine.

disk.totalWriteLatency.average
disk

millisecond

Average amount
of time taken to
process a SCSI write
command issued by
the guest OS to the
virtual machine.

disk.unshared.latest

disk

KiB

Amount of space
associated exclusively
with a virtual machine.

disk.usage.average
(featured metric)

disk

KiB

Aggregated disk I/O
rate.

disk.used.latest

disk

KiB

Amount of space
actually used by the
virtual machine or the
datastore. May be
less than the amount
provisioned at any
given time, depending
on whether the
virtual machine is
powered-off, whether
snapshots have been

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4592


<!-- page 4593 -->
vsphere.metric-Datastore metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

created or not, and
other such factors.
disk.write.average

disk

KiB

Average number of
kilobytes written to the
disk each second.

Units

Metric type description

cpu.coreUtilization.average
cpu-core
(featured metric)

percent

CPU utilization of the
corresponding core
(if hyper-threading
is enabled) as a
percentage.

cpu.reservedCapacity.average
cpu-core

megahertz

Total CPU capacity
reserved by virtual
machines.

cpu.totalCapacity.average
cpu-core

megahertz

Total CPU capacity
reserved by and
available for virtual
machines.

datastore.maxTotalLatency.latest
datastore

millisecond

Highest latency value
across all datastores
used by the host.

vsphere.metric-ESX_Server metrics
Metric type

Resource (name of
specific database,
where relevant)

hbr.hbrDiskReadLatency.average
host-based replication millisecond

Average Disk read
latency.

hbr.hbrDiskStallLatency.average
host-based replication millisecond

Average Disk stall
latency.

hbr.hbrNetRx.average

host-based replication KiB

Average amount of
data received per
second.

hbr.hbrNetTx.average

host-based replication KiB

Average amount of
data transmitted per
second.

hbr.hbrNumVms.averagehost-based replication Number

Number of poweredon virtual machines
running on this host
that currently have
host-based replication
protection enabled.

mem.heap.average

VMkernel virtual
address space

memory

KiB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4593


<!-- page 4594 -->
vsphere.metric-ESX_Server metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

dedicated to
VMkernel main heap
and related data.
mem.heapfree.average memory

KiB

Free address space
in the VMkernel
main heap.Varies
based on number of
physical devices and
configuration options.

mem.llSwapIn.average memory

KiB

Amount of memory
swapped-in from host
cache.

mem.llSwapOut.averagememory

KiB

Amount of memory
swapped-out to host
cache.

mem.lowfreethreshold.average
memory

KiB

Threshold of free host
physical memory
below which ESX/
ESXi will begin
reclaiming memory
from virtual machines
through ballooning
and swapping.

mem.reservedCapacity.average
memory

MiB

Total amount of
memory reservation
used by powered-on
virtual machines and
vSphere services on
the host.

mem.sharedcommon.average
memory

KiB

Amount of machine
memory that is shared
by all powered-on
virtual machines and
vSphere services on
the host.

mem.state.latest

memory

KiB

One of four threshold
levels representing
the percentage of free
memory on the host.

mem.swapin.average

memory

KiB

Amount of memory
swapped-in from disk.

mem.swapinRate.average
memory

KiB

Rate at which memory
is swapped from disk
into active memory.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4594


<!-- page 4595 -->
vsphere.metric-ESX_Server metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

mem.swapout.average memory

KiB

Amount of memory
swapped-out to disk.

mem.swapoutRate.average
memory

KiB

Rate at which memory
is being swapped
from active memory to
disk.

mem.swapused.averagememory

KiB

Amount of memory
that is used by swap.
Sum of memory
swapped of all
powered on VMs and
vSphere services on
the host.

mem.sysUsage.average memory

KiB

Amount of host
physical memory used
by VMkernel for core
functionality, such as
device drivers and
other internal uses.
Does not include
memory used by
virtual machines or
vSphere services.

mem.totalCapacity.average
memory

KiB

Total amount of
memory reservation
used by and available
for powered-on
virtual machines and
vSphere services on
the host.

mem.unreserved.average
memory

KiB

Amount of memory
that is unreserved.
Memory reservation
not used by the
Service Console,
VMkernel, vSphere
services and other
powered on VMs userspecified memory
reservations and
overhead memory.

mem.vmfs.pbc.capMissRatio.latest
memory
(featured metric)

percent

Trailing average of
the ratio of capacity
misses to compulsory
misses for the VMFS
PB Cache.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4595


<!-- page 4596 -->
vsphere.metric-ESX_Server metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

mem.vmfs.pbc.overhead.latest
memory

KiB

Amount of VMFS heap
used by the VMFS PB
Cache.

mem.vmfs.pbc.size.latestmemory

MiB

Space used for
holding VMFS Pointer
Blocks in memory.

mem.vmfs.pbc.sizeMax.latest
memory

MiB

Maximum size the
VMFS Pointer Block
Cache can grow to.

mem.vmfs.pbc.workingSet.latest
memory

TiB

Amount of file blocks
whose addresses are
cached in the VMFS
PB Cache.

mem.vmfs.pbc.workingSetMax.latest
memory

TiB

Maximum amount
of file blocks whose
addresses are cached
in the VMFS PB
Cache.

net.errorsRx.summation network adapter
(featured metric)

Number

Number of packets
with errors received.

net.errorsTx.summation network adapter
(featured metric)

Number

Number of packets
with errors
transmitted.

net.unknownProtos.summation
network adapter

KiB

Number of frames with
unknown protocol
received.

power.powerCap.average
power

watt

Maximum allowed
power usage.

rescpu.maxLimited1.latest
rescpu

percent

Amount of CPU
resources over
the limit that were
refused, average over
1 minute.

rescpu.maxLimited15.latest
rescpu

percent

Amount of CPU
resources over
the limit that were
refused, average over
15 minutes.

rescpu.maxLimited5.latest
rescpu

percent

Amount of CPU
resources over
the limit that were
refused, average over
5 minutes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4596


<!-- page 4597 -->
vsphere.metric-ESX_Server metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

storageAdapter.maxTotalLatency.latest
storage adapter
(featured metric)

millisecond

Highest latency value
across all storage
adapters used by the
host.

storagePath.maxTotalLatency.latest
storage adapter
(featured metric)

millisecond

Highest latency value
across all storage
paths used by the
host.

Windows default checks and policies
Agent Client Collector provides the following default checks and policies for Windows health
monitoring.

Windows event monitoring checks
Windows OS Events policy
Check

Description

os.windows.checkevent-log

Measures the
Windows event log
against parameter
thresholds and
returns a CRITICAL

\WARNING\OK
event.

Usage and Example

Usage:
• -w warning
- Triggers a
WARNING event
if the event log
count matching the
pattern is above
the WARNING
parameter value
specified in the
check parameter.

Output

Check Event Log OK:
The Event Log that
matches the pattern is
<matched count>

• -c critical - Triggers
a CRITICAL event
if the event log
count matching the
pattern is above
the CRITICAL
parameter value
specified in the
check parameter.
• -e event level
- Specifies the
severity level of
the event. Possible
values: Information,
Verbose, Critical,
Warning, Error.
• -i - Unique event ID
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4597


<!-- page 4598 -->
Windows OS Events policy (continued)
Check

Description

Usage and Example

Output

• -d - The duration
of time, in hours, in
which you want to
retrieve events from
the Windows event
log.
Usage example:
winchecks
check-windowsevent-log -w
5 -c 10 -e
"Information"
-l
"Application"
-d 24
os.windows.checkevent-log-count

Measures the
Windows event log
against parameter
thresholds and
returns a CRITICAL
\WARNING\OK event.
Provides information
on the number of
events that have
occurred within a
specified duration
for a single log file
and a single ID. Also
indicates the filters
to be applied to
retrieve events for a
specific single-valued
windows event level
and provider name.
Retrieving events from
multiple log files is
not supported. The
number of events
is provided, without
details of each and
every event.

Usage:
• -w warning
- Triggers a
WARNING event
if the event log
count matching the
pattern is above
the WARNING
parameter value
specified in the
check parameter.

Check Event Log OK:
The Event Log that
matches the pattern is
<matched count>

• -c critical - Triggers
a CRITICAL event
if the event log
count matching the
pattern is above
the CRITICAL
parameter value
specified in the
check parameter.
• -l log_file - The log
file to be monitored.
Name of the file is
written in double
quotation marks.
• -r regex_pattern The regex pattern
which filters out the
description in the
event log. Written
in double quotation
marks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4598


<!-- page 4599 -->
Windows OS Events policy (continued)
Check

Description

Usage and Example

Output

• -e event level
- Specifies the
severity level of
the event. Possible
values: Information,
Verbose, Critical,
Warning, Error.
• -i id - Unique event
ID
• -d duration_hour
- The duration of
time, in hours, in
which you want
to retrieve events
from the Windows
event log. Decimal
points can be used;
for example, 30
minutes - 0.5.
• -p provider_name Source of the event,
written in double
quotation marks.
Usage example:
winchecks
check-windowsevent-log -w
5 -c 10 -e
"Information"
-l
"Application"
-d 24
os.windows.checkevent-log-details

Collects and filters
Usage:
Windows Event
• -d duration_hour logs based on the
Duration (in hours)
duration_hour,
from the current
event_log_level
time to filter events
and log_file
(Default: 24).
values.
• -e event_log_level
Retrieves and filters
- Filter the events
Windows event logs
based on the
according to the
event level.
provided parameters.
Possible values
It returns details
are: Information,
about the events with
Verbose, Critical,
CRITICAL, WARNING,
Warning, Error.
or OK status, based
Multiple values

Check Event Log
Details WARNING:
Type: Information,
Category: Application,
Machine: ws19inc0061393.LOCAL.LAB,
Event_ID: 1704,
Message: Security
policy in the Group
policy objects
has been applied
successfully.,
TimeCreated:
10/14/2024 12:09:35
AM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4599


<!-- page 4600 -->
Windows OS Events policy (continued)
Check

Description

on the specified
severity level.

Usage and Example

are commaseparated (Default:
Information).
For example:
Information,
Warning
• -i id - Filters events
based on the
specified event IDs.
For multiple IDs,
values are commaseparated and
enclosed in double
quotation marks.
For example: "1257,
1001"

Output

Type: Information,
Category: Application,
Machine: ws19inc0061393.LOCAL.LAB,
Event_ID: 16384,
Message:
Successfully
scheduled Software
Protection service
for restart at
2124-09-20T06:25:44Z.
Reason: Rules
Engine, TimeCreated:
10/13/2024 11:25:44
PM.

Type: Information,
• -l log_file - Specifies Category: Application,
Machine: ws19the log file name
inc0061393.LOCAL.LAB,
to filter events.
Event_ID: 16394,
The name of the
Message: Offline
file is written in
downlevel migration
double quotation
succeeded.,
marks. Supports
TimeCreated:
creating custom
10/13/2024 11:24:19
files and multiple
values are comma- PM.
separated. (Default:
Type: Information,
Application).
Category: Application,
For example:
Machine: ws19"Application,
inc0061393.LOCAL.LAB,
System"
Event_ID: 8224,
• -p provider_name
Message: The
- The name of the
VSS service is
event provider,
shutting down due
enclosed in double to idle timeout.,
quotation marks.
TimeCreated:
10/13/2024 11:51:36
• -r regex_pattern AM.
Filters events by
matching the event
message with the
specified pattern.
Value must be
enclosed in double
quotation marks.
• -s
servicenow_event_severity
- Creates a
servicenow event
with the value given
in this parameter.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4600


<!-- page 4601 -->
Windows OS Events policy (continued)
Check

Description

Usage and Example

Output

Possible values are:
Critical, Warning
and OK.
Usage example:
winchecks
check-windowsevent-logdetails -d 24
-l Application
-e Warning -r
"*" -s Warning
os.windows.checkdisk-name

Takes the storage
drive name as input
and verifies if the
drive is present.
Returns a CRITICAL

\WARNING\OK
value based on the
parameter provided.

os.windows.checkprocessor-queuelength

winchecks checkwindows-disk-name
<options>

Windows Checks
OK: Disk storage C is
present.

-d : Disk name (Default
= C)
Usage
example:winchecks
check-windowsdisk-name -d C

Measures the process Usage:
queue length against
• -w warning
thresholds and
- Triggers a
returns a CRITICAL
WARNING event
\WARNING\OK event
if the processor
according to the
queue length
thresholds given in
count matching the
the accompanying
pattern is above
parameters.
the WARNING
parameter value
specified in the
check parameter.

Processor Queue
Length OK: The
Processor Queue
length is 0.00

• -c critical - Triggers
a CRITICAL event
if the processor
queue length
count matching the
pattern is above
the CRITICAL
parameter value
specified in the
check parameter.
Usage example:
winchecks
check-windows© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4601


<!-- page 4602 -->
Windows OS Events policy (continued)
Check

Description

Usage and Example

Output

processorqueue-length -w
5 -c 10
os.windows.checksystem-cpu-load

Checks CPU
Load by using
typeperf. Measures
the CPU load
against configured
thresholds and
returns a CRITICAL
\WARNING\OK event
according to the
thresholds given in
the accompanying
parameters.

Usage:
• -w warning
- Triggers a
WARNING event
if the CPU load
count matching the
pattern is above
the WARNING
parameter value
specified in the
check parameter.

CPU Load OK: The
total CPU utilization is
26.92%

• -c critical - Triggers
a CRITICAL event
if the CPU load
count matching the
pattern is above
the CRITICAL
parameter value
specified in the
check parameter.
Usage example:
winchecks
check-windowscpu-load -w 85
-c 95

os.windows.checksystem-disk

Measures the
free physical
memory against
thresholds and
returns a CRITICAL
\WARNING\OK event
according to the
thresholds given in
the accompanying
parameters.

Usage:

Disk Usage Check OK:
The disk usage is %

• -w warning
- Triggers a
WARNING event
if the event log
percentage
matching the
pattern is above
the WARNING
parameter value
specified in the
check parameter.
• -c critical - Triggers
a CRITICAL event
if the event log
percentage
matching the
pattern is above

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4602


<!-- page 4603 -->
Windows OS Events policy (continued)
Check

Description

Usage and Example

Output

the CRITICAL
parameter value
specified in the
check parameter.
Usage example:
winchecks
check-windowsdisk -w 85 -c
95
os.windows.checksystem-memorypercent

Collects the RAM
usage. Measures
the memory usage
against configured
thresholds and
returns a CRITICAL
\WARNING\OK event
according to the
thresholds given in
the accompanying
parameters.

Usage:
• -w warning
- Triggers a
WARNING event
if the memory
use percentage
matching the
pattern is above
the WARNING
parameter value
specified in the
check parameter.

RAM Usage OK:
The total memory
utilization is 84%

• -c critical - Triggers
a CRITICAL event
if the memory
use percentage
matching the
pattern is above
the CRITICAL
parameter value
specified in the
check parameter.
Usage example:
winchecks
check-windowsram -w 85 -c 95
os.windows.checksystem-process

Query running
processes to find
running processes
that match the
given arguments
(pattern, name, both
pattern and name.
At least one must be
given). Measures the
running processes
against configured

Usage:

Check Process OK:

• -n name - Process
executable name to
check the process
execution.

OK Found 1 matching
running processes
named explorer

• -p pattern - Pattern
(sub string) to
search for in
the command
that invoked the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4603


<!-- page 4604 -->
Windows OS Events policy (continued)
Check

Description

thresholds and filters,
returns a CRITICAL
\WARNING\OK event
according to the
thresholds given in
the accompanying
parameters.

Usage and Example

Output

process. Produces
valid results
only if the user
running the Agent
owns the queried
process has view
permissions for the
queried process.
• -w warnover
- Triggers a
WARNING status
if the query
returns more
processes than
those specified by
the argument.
• -W warnunder
- Triggers a
WARNING status
if the query
returns fewer
processes than
those specified by
the argument.
• -c critover - Triggers
a CRITICAL
event if the query
returns more
processes than
those specified by
the argument.
• -C critunder Triggers a CRITICAL
event if the query
returns fewer
processes than
those specified by
the argument.
Usage example:
winchecks
check-windowsprocesses -n
explorer

os.windows.checkdirectory

Verifies whether a
Windows directory
exists.

Usage: -d --directory
Path to the relevant
directory; use '\' for
separation.

Check Directory OK:
The directory 'C:/
Users/Public' exists

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4604


<!-- page 4605 -->
Windows OS Events policy (continued)
Check

Description

Usage and Example

Output

Usage example:
winchecks
check-windowsdirectory -d
dir_path
os.windows.checkpagefile

Collects the

Pagefile usage
and compares it
against the WARNING
and CRITICAL
thresholds.

Usage:
• -w warning
- Triggers a
WARNING event
if the Pagefile
usage is above
the WARNING
parameter value
specified in the
check parameter.

Check Windows Page
File OK: Page file
usage at 31.63%

• -c critical - Triggers
a CRITICAL event
if the Pagefile
usage is above
the CRITICAL
parameter value
specified in the
check parameter.
Usage example:
winchecks
check-windowspagefile -w 75
-c 85
os.windows.checkfree-physical-memory

Measures the free
physical memory
against configured
thresholds and
returns a CRITICAL
\WARNING\OK event
according to the
thresholds given in
the accompanying
parameters.

Usage:
• -w warning
- Triggers a
WARNING event if
the free physical
memory is under
the WARNING
parameter value
specified in the
check parameter.

Free Physical Memory
OK: The Free Physical
Memory is 20.25%

• -c critical - Triggers
a CRITICAL event
if the free physical
memory is under
the CRITICAL
parameter value
specified in the
check parameter.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4605


<!-- page 4606 -->
Windows OS Events policy (continued)
Check

Description

Usage and Example

Output

Usage example:
winchecks
check-windowsfree-physicalmemory -w 10 -c
5
os.windows.checkfree-virtual-memory

Measures the free
virtual memory
against configured
thresholds and
returns a CRITICAL
\WARNING\OK event
according to the
thresholds given in
the accompanying
parameters.

Usage:
• -w warning
- Triggers a
WARNING event
if the free virtual
memory is above
the WARNING
parameter value
specified in the
check parameter.

Free Virtual Memory
OK: The Free Virtual
Memory is 25.66%

• -c critical - Triggers
a CRITICAL event
if the free virtual
memory is above
the CRITICAL
parameter value
specified in the
check parameter.
Usage example:
winchecks
check-windowsfree-virtualmemory -w 10 -c
5
os.windows.checkprocess-cpu

Processes CPU usage Usage:
against configured
• -p processname thresholds and
Process name to
returns a CRITICAL
collect CPU usage.
\WARNING\OK event
• -w warning
according to the
- Triggers a
thresholds given in
WARNING
the accompanying
event if the CPU
parameters.
usage is above
the WARNING
parameter value
specified in the
check parameter.

Check Process CPU
OK: Process CPU
usage is 0.0000%

• -c critical - Triggers
a CRITICAL event
if the CPU usage is
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4606


<!-- page 4607 -->
Windows OS Events policy (continued)
Check

Description

Usage and Example

Output

above the CRITICAL
parameter value
specified in the
check parameter.
Usage example:
winchecks
check-windowsprocess-cpu-p
acc -c 95 -w 85
os.windows.checkprocess-memory

Processes memory
usage against
thresholds and
returns a CRITICAL
\WARNING\OK event
according to the
thresholds given in
the accompanying
parameters.

Usage:
• -p processname
- Process name
to collect memory
usage.

Check Process
Memory OK: Process
Memory usage is
0.0149%

• -w warning
- Triggers a
WARNING event
if the process
memory usage
is above the
WARNING
parameter value
specified in the
check parameter.
• -c critical - Triggers
a CRITICAL event
if the process
memory usage is
above the CRITICAL
parameter value
specified in the
check parameter.
Usage example:
winchecks
check-windowsprocess-memoryp acc -c 95 -w
85

os.windows.checkuser-account

Takes the list of user
names as an input
and verifies whether
the user account
is active. Returns a
CRITICAL\WARNING
\OK value.

winchecks checkwindows-userdisabled (options)

User Name and Status

-u : Comma separated
List of User Name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4607


<!-- page 4608 -->
Windows OS Events policy (continued)
Check

Description

Usage and Example

Output

Usage example:
winchecks
checkwindows-userdisabled- u
Administrator,Guest

Windows metric monitoring checks
Windows OS Metrics policy
Check

Description

os.windows.checkprocessor-queuelength

Measures the
processor queue
length.

Usage and Example

Usage: -s scheme Replaces output's
hostname + process
with the given
value (example:
hostname.process)

Output

win2019dc-64bit.cpu.queuelength
0.00 1645371109

Usage example:
command:
winchecks
metric-windowsprocessorqueue-length
--scheme
hostname.proc
os.windows.checksystem-cpu-load

Collects average CPU
load per second.

Usage: -s scheme Replaces output's
hostname + process
with the given
value (example:
hostname.process)

win2019dc-64bit.cpu.loadavgsec
15.07 1645371561

Usage example:
command:
winchecks
metricwindows-cpuload -scheme
hostname.proc
os.windows.checksystem-cpu

Collects the CPU core
metric.

Usage: -s , scheme
Replaces output's
hostname+process
with the given
value (example:
hostname.process)

win2019dc-64bit.cpu.cpu0.cores
2 1645371681

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4608


<!-- page 4609 -->
Windows OS Metrics policy (continued)
Check

Description

Usage and Example

Output

Usage example:
command:
winchecks
metric-windowscpu -scheme
hostname.proc
os.windows.checksystem-disk-usage

Collects the following
disk usage metrics
usage:
• total in GB
• usage in GB
• avail in GB
• used percentage

Usage:
• -i , ignore_mnt:
Comma separated
list of mount points
to ignore (:C)
• -I, include_mnt:
Comma separated
list of mount points
to include.
• —scheme, scheme:
Replaces output's
hostname+process
with the given
value (example:
hostname.process).

win2019dc-64bit.disk_usage.disk_C.total(GB)
99.40 1645371774
win2019dc-64bit.disk_usage.disk_C.used(GB)
50.72 1645371774
win2019dc-64bit.disk_usage.disk_C.avail(GB)
48.68 1645371774

win2019dc-64bit.disk_usage.disk_C.used_perce
51.02 1645371774

Usage example:
command:
winchecks
metricwindows-diskusage-scheme
hostname.proc
os.windows.checksystem-memorypercent

Collects RAM
percentage usage,
Free Physical Memory
percentage and
Free Virtual Memory
percentage.

Usage: -s, scheme
- Replaces output's
hostname+process
with the given
value (example:
hostname.process)
Usage example:
command:
winchecks
metricwindows-diskusage-scheme
hostname.proc

os.windows.checksystem-network

Collects the following
active network
adapter metrics:

Usage: -s scheme:
Replaces output's
hostname + process

win2019dc-64bit.mem.free_physical_percentag
13.30 1645371856
win2019dc-64bit.mem.free_virtual_percentage
13.93 1645371856
win2019dc-64bit.ram.usage_percentage
86.07 1645371856

win2019dc-64bit.system.network.Network_Inter
name><metric

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4609


<!-- page 4610 -->
Windows OS Metrics policy (continued)
Check

Description

• Total bytes per sec
• Packets/sec
• Packets Received
per sec
• Packets Sent per
sec
• Current Bandwidth
• Bytes Received per
sec

Usage and Example

Output

with the given
value (example:
hostname.process)

value>Bytes_Total/sec
98742.67 1645372042

Usage name:
command:
winchecks
metric-windowsnetwork
--scheme
hostname.proc

For example: win2019dc-64bit.system.network.Network_Inter
sec 98742.67
1645372042

• Packets Received
Unicast per sec
• Packets Received
Non-Unicast per sec
• Packets Received
Discarded
• Packets
ReceivedErrors
• Packets Received
Unknown
• Bytes sent per sec
• Packets sent
unicast per sec
• Packets sent nonunicast per sec
• Packets outbound
discarded
• Packets outbound
errors
• Output queue
length
• Offloaded
connections
• TCP Active RSC
Connections
• TCP RSC Coalesced
Packets per sec
• TCP RSC
Exceptions per sec
• TCP RSC Average
Packet Size

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4610


<!-- page 4611 -->
Windows OS Metrics policy (continued)
Check

Description

os.windows.checksystem-uptime

Collects system
uptime.

Usage and Example

Usage: -s, scheme
- Replaces output's
hostname+process
with the given
value (example:
hostname.process)

Output

win2019dc-64bit.system.uptime(sec)
4614142.06
1645372124

Usage example:
command:
winchecks
metric-windowsuptime --scheme
hostname.proc
os.windows.checksystem-disk

Collects the following
disk metrics:

Usage:

• AvgDiskSecPerRead

• -i, ignore_mnt Comma separated
• AvgDiskSecPerWrite
list of mount points
• DiskReadBytesPerSec to ignore (:C)
• DiskWriteBytesPerSec • -I, include_mnt Comma separated
list of mount points
to include.
• —scheme Replaces output's
hostname+process
with the given
value (example:
hostname.process).
Usage example:
command:
winchecks
metric-windowsdisk

win2019dc-64bit.disk._total.AvgDisksec/
Read 0.000000
1645372198
win2019dc-64bit.disk._total.AvgDisksec/
Write 0.000608
1645372198
win2019dc-64bit.disk._total.DiskReadBytes/
sec 0.000000
1645372198
win2019dc-64bit.disk._total.DiskWriteBytes/
sec 34941.692255
1645372198
win2019dc-64bit.disk.C.AvgDisksec/
Read 0.000000
1645372200
win2019dc-64bit.disk.C.AvgDisksec/
Write 0.000000
1645372200
win2019dc-64bit.disk.C.DiskReadBytes/
sec 0.000000
1645372200
win2019dc-64bit.disk.C.DiskWriteBytes/

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4611


<!-- page 4612 -->
Windows OS Metrics policy (continued)
Check

Description

Usage and Example

Output

sec 0.000000
1645372200
os.windows.checksystem-memory

Collects the following
disk metrics:

Usage: -s, scheme
- Replaces output's
• FreePhysicalMemory hostname+process
• TotalPhysicalMemory with the given
value (example:
• FreeVirtualMemory
hostname.process)
• TotalVirtualMemorySize
Usage example:
• AvailableMemory
command:
winchecks
• TotalVisibleMemorySize
metric-windowsmemory --scheme
hostname.proc

win2019dc-64bit.mem.free_physical(KB)
1175440.00
1645372274
win2019dc-64bit.mem.total_physical(KB)
8588898304.00
1645372274
win2019dc-64bit.mem.free_virtual(KB)
1747636.00
1645372274
win2019dc-64bit.mem.total_virtual(KB)
12263156.00
1645372274
win2019dc-64bit.mem.available(KB)
1202032640.00
1645372274
win2019dc-64bit.mem.total_visible(KB)
8387596.00
1645372274

os.windows.checkprocess-status

Collects windows
Usage:
process status with
CPU and memory data
• -n, process used by the process.
Process name
to collect status
metric.
• —scheme Replaces output's
hostname+process
with the given
value (example:
hostname.process).

os.windows.metricsprocess-status

Retrieves the number
of running instances,
the percentage of
CPU utilization, and

Usage:

win2019dc-64bit.Process.Status
67 1645372421
win2019dc-64bit.Process.CpuPercent
0 1645372421
win2019dc-64bit.Process.Memory(KB)
1226444 1645372421

WINR493MKFE75G.Process.Status
1 1625478491

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4612


<!-- page 4613 -->
Windows OS Metrics policy (continued)
Check

Description

the memory usage
(in kilobytes) of the
specified Windows
process.

Usage and Example

• -n, process Process name
to collect status
metric.
• —scheme Replaces output's
hostname+process
with the given
value (example:
hostname.process).

Output

WINR493MKFE75G.Process.CpuPercent
0 1625478491
WINR493MKFE75G.Process.MemoryKB
276 162547849

Usage example:
command:
winchecks
metric-windowsprocess-status
-n Svchost -s
hostname.proc

Windows OS event checks - Extended
Runs Windows extended checks on operational Windows servers. To run this policy, activate one
of the checks and provide a CI filter on the policy's Monitored CIs tab to run these checks on
selected CIs.
Windows OS Events - Extended policy
Check

Description

os.windows.checkprocessor-queuelength

Measures the
processor queue
length.

Usage and Example

Usage: -s scheme Replaces output's
hostname + process
with the given
value (example:
hostname.process)

Output

win2019dc-64bit.cpu.queuelength
0.00 1645371109

Usage example:
command:
winchecks
metric-windowsprocessorqueue-length
--scheme
hostname.proc
os.windows.checksystem-cpu

Collects the CPU core
metric.

Usage: -s , scheme
Replaces output's
hostname+process
with the given

win2019dc-64bit.cpu.cpu0.cores
2 1645371681

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4613


<!-- page 4614 -->
Windows OS Events - Extended policy (continued)
Check

Description

Usage and Example

Output

value (example:
hostname.process)
Usage example:
command:
winchecks
metric-windowscpu -scheme
hostname.proc
os.windows.checksystem-cpu-load

Collects average CPU
load per second.

Usage: -s scheme Replaces output's
hostname + process
with the given
value (example:
hostname.process)

win2019dc-64bit.cpu.loadavgsec
15.07 1645371561

Usage example:
command:
winchecks
metricwindows-cpuload -scheme
hostname.proc
os.windows.checksystem-disk-usage

Collects the following
disk usage metrics
usage:
• total in GB
• usage in GB
• avail in GB
• used percentage

Usage:
• -i , ignore_mnt:
Comma separated
list of mount points
to ignore (:C)
• -I, include_mnt:
Comma separated
list of mount points
to include.
• —scheme, scheme:
Replaces output's
hostname+process
with the given
value (example:
hostname.process).

win2019dc-64bit.disk_usage.disk_C.total(GB)
99.40 1645371774
win2019dc-64bit.disk_usage.disk_C.used(GB)
50.72 1645371774
win2019dc-64bit.disk_usage.disk_C.avail(GB)
48.68 1645371774

win2019dc-64bit.disk_usage.disk_C.used_perce
51.02 1645371774

Usage example:
command:
winchecks
metricwindows-diskusage-scheme
hostname.proc

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4614


<!-- page 4615 -->
Windows OS Events - Extended policy (continued)
Check

os.windows.checksystem-memorypercent

Description

Usage and Example

Output

Collects RAM
percentage usage,
Free Physical Memory
percentage and
Free Virtual Memory
percentage.

Usage: -s, scheme
- Replaces output's
hostname+process
with the given
value (example:
hostname.process)

win2019dc-64bit.mem.free_physical_percentag
13.30 1645371856

Usage example:
command:
winchecks
metricwindows-diskusage-scheme
hostname.proc
os.windows.checksystem-network

Collects the following
active network
adapter metrics:
• Total bytes per sec
• Packets/sec
• Packets Received
per sec
• Packets Sent per
sec
• Current Bandwidth
• Bytes Received per
sec

Usage: -s scheme:
Replaces output's
hostname + process
with the given
value (example:
hostname.process)

win2019dc-64bit.mem.free_virtual_percentage
13.93 1645371856
win2019dc-64bit.ram.usage_percentage
86.07 1645371856

win2019dc-64bit.system.network.Network_Inter
name><metric
value>Bytes_Total/sec
98742.67 1645372042

For example: win2019Usage name:
dc-64bit.system.network.Network_Inter
command:
sec 98742.67
winchecks
1645372042
metric-windowsnetwork
--scheme
hostname.proc

• Packets Received
Unicast per sec
• Packets Received
Non-Unicast per sec
• Packets Received
Discarded
• Packets
ReceivedErrors
• Packets Received
Unknown
• Bytes sent per sec
• Packets sent
unicast per sec
• Packets sent nonunicast per sec
• Packets outbound
discarded
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4615


<!-- page 4616 -->
Windows OS Events - Extended policy (continued)
Check

Description

Usage and Example

Output

• Packets outbound
errors
• Output queue
length
• Offloaded
connections
• TCP Active RSC
Connections
• TCP RSC Coalesced
Packets per sec
• TCP RSC
Exceptions per sec
• TCP RSC Average
Packet Size
os.windows.checksystem-uptime

Collects system
uptime.

Usage: -s, scheme
- Replaces output's
hostname+process
with the given
value (example:
hostname.process)

win2019dc-64bit.system.uptime(sec)
4614142.06
1645372124

Usage example:
command:
winchecks
metric-windowsuptime --scheme
hostname.proc
os.windows.checksystem-disk

Collects the following
disk metrics:

Usage:

• AvgDiskSecPerRead

• -i, ignore_mnt Comma separated
• AvgDiskSecPerWrite
list of mount points
• DiskReadBytesPerSec to ignore (:C)
• DiskWriteBytesPerSec • -I, include_mnt Comma separated
list of mount points
to include.
• —scheme, scheme
- Replaces output's
hostname+process
with the given
value (example:
hostname.process).

win2019dc-64bit.disk._total.AvgDisksec/
Read 0.000000
1645372198
win2019dc-64bit.disk._total.AvgDisksec/
Write 0.000608
1645372198
win2019dc-64bit.disk._total.DiskReadBytes/
sec 0.000000
1645372198
win2019dc-64bit.disk._total.DiskWriteBytes/
sec 34941.692255
1645372198

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4616


<!-- page 4617 -->
Windows OS Events - Extended policy (continued)
Check

Description

Usage and Example

Output

Usage example:
command:
winchecks
metric-windowsdisk

win2019dc-64bit.disk.C.AvgDisksec/
Read 0.000000
1645372200
win2019dc-64bit.disk.C.AvgDisksec/
Write 0.000000
1645372200
win2019dc-64bit.disk.C.DiskReadBytes/
sec 0.000000
1645372200
win2019dc-64bit.disk.C.DiskWriteBytes/
sec 0.000000
1645372200

os.windows.checksystem-memory

Collects the following
disk metrics:

Usage: -s, scheme
- Replaces output's
• FreePhysicalMemory hostname+process
• TotalPhysicalMemory with the given
value (example:
• FreeVirtualMemory
hostname.process)
• TotalVirtualMemorySize
Usage example:
• AvailableMemory
command:
winchecks
• TotalVisibleMemorySize
metric-windowsmemory --scheme
hostname.proc

win2019dc-64bit.mem.free_physical(KB)
1175440.00
1645372274
win2019dc-64bit.mem.total_physical(KB)
8588898304.00
1645372274
win2019dc-64bit.mem.free_virtual(KB)
1747636.00
1645372274
win2019dc-64bit.mem.total_virtual(KB)
12263156.00
1645372274
win2019dc-64bit.mem.available(KB)
1202032640.00
1645372274
win2019dc-64bit.mem.total_visible(KB)
8387596.00
1645372274

os.windows.checkprocess-status

Collects windows
Usage:
process status with
CPU and memory data
used by the process.

win2019dc-64bit.Process.Status
67 1645372421

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4617


<!-- page 4618 -->
Windows OS Events - Extended policy (continued)
Check

Description

Usage and Example

• -n, process Process name
to collect status
metric.
• —scheme, scheme
- Replaces output's
hostname+process
with the given
value (example:
hostname.process).

Output

win2019dc-64bit.Process.CpuPercent
0 1645372421
win2019dc-64bit.Process.Memory(KB)
1226444 1645372421

Windows metrics
The following table lists the metrics that are gathered as output from Windows checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
Windows metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

Process.Status

Windows process
status including CPU
and memory data.

Process.CpuPercent

Percentage of CPU
used by the process.

Process.Memory(KB)

KB

Memory used by the
given process.

cpu.queuelength
(featured metric)

Processor queue
length.

cpu.loadavgsec
(featured metric)

Average CPU load per
second.

disk.AvgDisksec/Read

seconds

Average time of a read
from the disk.

disk.AvgDisksec/Write

seconds

Average time of a write
to the disk.

disk.DiskReadBytes/
sec

byte/sec

Rate at which bytes
are transferred from
the disk during read
operations.

disk.DiskWriteBytes/
sec

byte/sec

Rate at which bytes
are transferred to
the disk during write
operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4618


<!-- page 4619 -->
Windows metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

disk_usage.avail(GB)

GB

Disk available.

disk_usage.used(GB)

GB

Disk used.

disk_usage.total(GB)

GB

Disk total.

disk_usage.used_percentage
(featured metric)

Disk used in
percentage.

mem.free_physical_percentage

Percent of free
physical memory.

mem.free_virtual_percentage

Percent of free virtual
memory.

ram.usage_percentage
(featured metric)

Percent of RAM used.

mem.free_physical(KB)

KB

Amount of free
physical memory.

mem.total_physical(KB)

KB

Total physical
memory.

mem.free_virtual(KB)

KB

Amount of free virtual
memory.

mem.total_virtual(KB)

KB

Total virtual memory.

mem.available(KB)

KB

Total amount of virtual
memory available.

mem.total_visible(KB)

KB

Total amount of
physical memory
accessible to the
operating system.

system.uptime(Sec)

seconds

Duration that the
system has been
operational.

system.network.Bytes_Received/
sec (featured metric)

byte/sec

Bytes received per
second for active
network adapters.

system.network.Bytes_Sent/
sec (featured metric)

byte/sec

Bytes sent per second
for active network
adapters.

system.network.Bytes_Total/
sec (featured metric)

byte/sec

Sum of the bytes
received and sent per
second.

system.network.Current_Bandwidth

bit/sec

Estimate of the
network interface
bandwidth.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4619


<!-- page 4620 -->
Windows metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

system.network.Offloaded_Connections

Number of IPv4 and
IPv6 TCP connections
currently handled
by the TCP chimney
offload capable
network adapter.

system.network.Output_Queue_Length

Length of the output
packet queue.

system.network.Packets/
sec

Rate that packets are
sent and received on
the network.

system.network.Packets_Outbound_Discarded

Number of outbound
packets that were
discarded.

system.network.Packets_Outbound_Errors

Number of outbound
packets that could not
be sent becuase of
errors.

system.network.Packets_Received/
sec

Rate that packets are
received.

system.network.Packets_Received_Discarded

Number of inbound
packets that were
discarded.

system.network.Packets_Received_Errors

Number of inbound
packets that could not
be sent because of
errors.

system.network.Packets_Received_NonUnicast/sec

Rate that non-unicast
(subnet broadcast
or subnet multicast
packets) are delivered
to a higher-layer
protocol.

system.network.Packets_Received_Unicast/
sec

Rate that unicast
(subnet) packets are
delivered to a higherlayer protocol.

system.network.Packets_Received_Unknown

Number of packets
that were received,
but discarded,
because of an
unknown or
unsupported protocol.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4620


<!-- page 4621 -->
Windows metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

system.network.Packets_Sent/
sec

Rate that packets are
sent.

system.network.Packets_Sent_NonUnicast/sec

Rate that packets
are requested for
transmission to nonunicast (subnet
broadcast or subnet
multicast) addresses
by higher-layer
protocols. Includes
packets that were
discarded or not sent.

system.network.Packets_Sent_Unicast/
sec

Rate that packets
are requested to
for transmission
to subnet-unicast
addresses by higherlayer protocols.
Includes packets that
were discarded or not
sent.

system.network.TCP_Active_RSC_Connections

Number of IPv4 and
IPv6 TCP connections
currently receiving
large packets from the
RSC-capable network
adapter.

system.network.TCP_RSC_Average_Packet_Size byte

Average size of
received packets
across all TCP
connections.

system.network.TCP_RSC_Coalesced_Packets/
sec

The large-packet
receive rate across all
TCP connections.

system.network.TCP_RSC_Exceptions/
sec

The RSC exception
rate for received
packets across all TCP
connections.

Windows log monitoring default checks and policies
Agent Client Collector provides the following policy for Windows log monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4621


<!-- page 4622 -->
Windows log monitoring policy
Type

Check

Description

Event

os.windows.check- Enables
log
monitoring
log files on a
Windows server.

Usage and Usage
Example

Usage:
• -c crit N:
Critical level if
pattern has a
group.
• -f -log-file FILE:
Path to log file.
• -o --warn-only:
Warn instead
of critical on
match.

Output

Windows Log
CRITICAL: Found
4 criticals, 0
warnings for
pattern SEVERE|
Exception|404|
Errorin file C:
\ProgramData
\ServiceNow
\agent-clientcollector\log
\acc.log

• -q pattern
PAT: Pattern
to search for.
To search
for multiple
patterns,
separate each
pattern with a
pipe (|) and put
inside quotes.
For example:
"SEVERE|404"
• -w warn N:
Warning level
if pattern has a
group.

Azure metrics script
When creating a new policy for Azure cloud metrics, create a .json script to determine the metrics
to be monitored. The format for the script appears below, followed by a table explaining the script
contents.
{
"namespace": "Microsoft.Network/loadBalancers",
"metrics": [
"AllocatedSnatPorts",
"ByteCount",
"DipAvailability",
"PacketCount",
"SnatConnectionCount",
"SYNCount",
"UsedSnatPorts",
"VipAvailability"
],
"time_grain": "PT1M"
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4622


<!-- page 4623 -->
Resources and their metrics are retrievable from the Supported metrics for Azure resources
page.

Header

Description

namespace

The name of the resource being monitored.

metrics

The metrics being retrieved from the
monitored resource.

time_grain

The granularity of how often metrics are to be
collected. Possible values are:
• PT1M: Metric values are collected every
minute.
• PT5M: Metric values are collected every 5
minutes.
• PT15M: Metric values are collected every 15
minutes.
• PT30M: Metric values are collected every 30
minutes.
• PT1H: Metric values are collected every hour.
• PT1D: Metric values are collected daily.

Windows event log filter parameters
The configurable values on the Check Parameters tab of the os.windows.check-event-log check.
Check Parameters tab values
Parameter

Type

Description

provider_name

String

Name of the provider that
generated the event.

Note: If you do not

specify a log_file
value together with the
provider_name, the
system searches all
available log files, which
increases the time it
takes to receive results.
log_file

String

The name of the Windows
event log file from which you
retrieve events. Possible
values are:
• Application
• System

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4623


<!-- page 4624 -->
Check Parameters tab values (continued)
Parameter

Type

Description

Note: If you
do not specify a

provider_name
value together with the
log_file, the system
searches all events
from the log file, which
increases the number of
retrieved events.
id

Integer

The numerical id of the event.
Possible values are 0-65535.

warning

Integer

Any value above the specified
parameter generates a
Warning event.

event_level

String

The severity level of the event.
Possible values:
• Critical
• Error
• Warning
• Information
• Verbose

regex_pattern

String

The regex pattern to be used
in searching the event logs.
The value must be enclosed
in double quotation marks. For
example, "error".

duration_hour

Integer

The time period for which you
want to retrieve events from
the Windows event log. Value
is specified in hours; fractions
of hours are specified with
decimals.

critical

Integer

Any value equal to or above
the specified parameter
generates a Critical event.

Parameters of MID Server distributed cluster
The following MID Server parameters support the MID Server Distributed cluster type.
You can access these parameters in the Configuration Parameters related list of a MID Server.
To add and set any of these parameter, see Add a MID Server parameter .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4624


<!-- page 4625 -->
Parameter

Description

mid.distributed.cluster.striped.threadpool.size

Size of striped threadpool in MID Server
distributed cluster.
• Type: integer
• Default value: Number of cores on the
virtual machine or server.

mid.distributed.cluster.log.level

Logging level for MID Server distributed
cluster, which can help troubleshooting.
However, logging impacts the performance of
Metric Intelligence.
An empty value designates no logging.
• Type: integer
• Default value: none
• Other possible values: info, debug, trace

mid.distributed.cluster.global.timeout

Global timeout in seconds for MID Server
distributed cluster.
• Type: integer
• Default value: 180
• Other possible values:
◦ Minimum value: 60 (not enforced)
◦ Maximum value: 300 (not enforced)

mid.distributed.cluster.node.max.off.heap.memory
The amount of off heap memory used by
Metric Intelligence to process data series per
minute.
The default 4 GB of space is the amount of
off heap memory needed for processing
800,000 data series per minute. Adjust this
value proportionally to the amount of actual
data series. For example, to process 400,000
data series per minute, you can change the
value to 2048.
• Type: integer
• Default value: 4096

Scheduled jobs included with MID Server distributed cluster
The following MID Server scheduled job is included with the MID Server Distributed cluster type.

Name

Description

Validate MID distributed cluster

Validates status of the cluster node for each
MID Server in the cluster. For a MID Server that

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4625


<!-- page 4626 -->
Name

Description

is down and its status is not stopped, updates
the node status to stopped.
Also, validates overall status of the cluster.
During this validation, the job stops the cluster
if there are multiple sub-clusters in a single
cluster.

Components installed with Metric Intelligence
Several types of components are installed with activation of the Metric Intelligence
(com.snc.sa.metric) plugin, including tables, scheduled jobs, and properties.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Scheduled jobs installed
Name

Description

Metric Intelligence Runs daily and builds the statistical models used for anomaly detection.
— Metric Learner
job
Metric Intelligence Cleans up the sa_metric_anomaly_score and the
— Purge old metric sa_metric_schema_definition tables.
schemas and
anomaly scores
Metric Intelligence Synchronizing data from the instance to the MID Server in the metric
— Sync metric
schema table sa_metric_schema_definition.
schema to mid
Metric Intelligence Synchronizing data from the instance to the MID Server in tables.
— Sync tables with
mid
Metric Intelligence Cleaning up tables related to various deletion operations.
— Table cleanup
Metric Intelligence Calculates the observation interval using collected data points for all data
— Observation
series.
Interval Learner
job
Metric Intelligence Daily job that cleans stale anomaly scores, for a specified window of time,
— Process Stale
in the Metric Anomaly Score [sa_metric_anomaly_score] table.
Anomaly Score –
Uses the properties
Daily
sa_metric.anomaly_score_stale_interval_in_days and

sa_metric.anomaly_score_next_stale_interval_in_days
to calculate the window of time for cleaning.
Metric Intelligence Keeps anomaly scores up to date with any deletion of metrics.
— Sync CI
Anomaly Scores
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4626


<!-- page 4627 -->
Name

Description

Metric Intelligence Synchronizes metric configurations from the instance to all Metric
— Metric
Intelligence MID Servers.
configuration job
Metric Intelligence Builds local level kalman filter models on which to run change detection.
— Local level
kalman filter
model learner job
Metric Intelligence On-demand scheduled job which runs when user clicks Run Anomaly
— Anomaly Model Test.
Test
Metric Intelligence
1. Checks the status of the cluster node.
— Validate MID
Distributed cluster
If status is Started and the status of the Metric Intelligence extension is
not any of Started/Starting/Warning [warning with specific errors], then
the job changes the status of the cluster node to Stopped.
This happens when MID Server stops unexpectedly without notifying the
instance that it is stopping.
2. Checks the status of all cluster nodes on all MID Servers in the cluster.
◦ If the status of all nodes is Stopped and the status of the cluster itself
is Started, then the job changes the status of the cluster to Stopped.
◦ If the status of the cluster is Stopped but there are MID Servers with
a cluster node that is running, then the job changes the status of the
cluster to Started.
3. Checks the number of Cluster Leaders: If two are detected, then the job
stops the entire cluster.
This happens when MID Servers are not able to connect with other
members of the cluster and form multiple sub-clusters.
Event
Management process metric
binding events
[1000-1020]

Process Metric Intelligence metric binding events separately from Event
Management events (bucket range 1000-1020).

Event
Management process metric
binding events
[1020-1040]

Process Metric Intelligence metric binding events separately from Event
Management events (bucket range 1020-1040).

Event
Management process metric
binding events
[1040-1060]

Process Metric Intelligence metric binding events separately from Event
Management events (bucket range 1040-1060).

Event
Management process metric

Process Metric Intelligence metric binding events separately from Event
Management events (bucket range 1060-1080).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4627


<!-- page 4628 -->
Name

Description

binding events
[1060-1080]
Event
Management process metric
binding events
[1080-1100]

Process Metric Intelligence metric binding events separately from Event
Management events (bucket range 1080-1100).

Metric Intelligence Learns the stationary nonparametric model.
- Stationary
nonparametric
model learner job
Metric Intelligence Constructs all the information required for performing real time anomaly
- Combined
detection (calculating data frequency and building statistical models) on a
Model Learner
subset of all series for which data is being collected.
Job

Tables installed
Table

Metric Time Series Model

Description

Statistical models built for metric data.

[sa_time_series]
Alert Anomaly
[em_alert_anomaly]

Anomaly alerts that were created from anomaly events
that were sent by Metric Intelligence so users can
review. Anomaly alerts are kept separately from regular
system alerts.

Metric Anomaly Score

Stores anomaly scores for the metric.

[sa_metric_anomaly_score]
Metric To CI Mapping Deleted SysIds

SysIds of deleted metric-to-CI mapping records.

[sa_metric_map_deleted]
Metric To CI Mapping

Mappings currently in effect of metric types to CIs.

[sa_metric_map]
SA Metric Type Registration

Details about metric type registration.

[sa_metric_registration]
Metric Type Registration Deleted SysIds
[sa_metric_registration_deleted]
Metric Schema Definition

SysIds of records that were deleted from the SA Metric
Type Registration [sa_metric_registration] table.

[sa_metric_schema_definition]

Map of metrics being received based on CI class. It is
used to optimize the metric data payload being sent
from the MID Server to the instance.

Metric Type

Metric type source.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4628


<!-- page 4629 -->
Table

Description

[sa_metric_type]
Monitoring System Metric Type Deleted SysIds

SysIds of deleted monitoring system metrics.

[sa_source_metric_type_deleted]
Monitoring System Metric Type
[sa_source_metric_type]
Metric Settings
[sa_metric_config_setting]
Metric Configuration Rules
[sa_metric_config_rule]
Metric overridden configurations
[sa_metric_config_rule_setting]
Metric Staged Configurations

Metric types per CI class, active/inactive status, and
metric source.
Default configuration settings for Metric Intelligence
MID Servers.
Rules to override configuration settings for MID
Servers.
Maps overridden configurations to custom defined
rules.
Saved encoded configurations for the MID Servers.

[sa_metric_config_staging]
Metric learned parameters
[sa_metric_learned_param]
Metric To CI Mapping Deleted Details

Parameters learned for CI/metric combinations, that
will be synced to the MID Servers.

[sa_metric_map_deleted_detail]

Details about deleted entries from metric to CI
mapping table. Includes CI, metric, and SysId of
the deleted entry in the Metric To CI Mappings
[sa_metric_map] table.

Track unique CIs created in metric map

All unique CIs for which metric map entry was created.

[sa_metric_ci_tracker]
Metric Class
[sa_metric_class]
Metric Change Score

Metric classes that can be associated with specific
metrics to override bounds and widths learned values.
Change events information.

[sa_metric_change_score]
Anomaly Test Rules

Anomaly test rules used for anomaly model testing.

[sa_metric_anomaly_test_rule]
Anomaly test results
[sa_metric_anomaly_test_result]
Metric anomaly test config customized
parameters

Results from anomaly model testing, such as bounds
and anomaly scores.
Customized parameters for selected series in anomaly
model testing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4629


<!-- page 4630 -->
Table

Description

[sa_metric_anomaly_test_config_custom_param]
Metric Intelligence Properties

Metric Intelligence properties by domain.

[sa_metric_property]
Track host name with metric CI
[sa_metric_ci_host]
Functions supported by metric expression
language

CIs that are bind with node name from the binding
event.
Functions supported by metric expression language.

[sa_metric_expr_function]
Argument types for functions supported by
metric expression language

Argument types for functions supported by metric
expression language.

[sa_metric_expr_func_arg]
Track CI Types to metric entries valid for different Track CI Types to metric entries that are valid for
sources
different sources.
[sa_metric_ci_type_map]
CI Type To Resource Class
[sa_ci_type_to_resource_class]

Contains mappings of CI type to resource class. Used
for resource binding during resource lookups given a
CI and a resource_path in the event.
The [sa_ci_type_to_resource_class] table
contains some default mapping records, and the
evt_mgmt_admin role is required to manage this table.

CI Resource

Parent table used for resource binding.

[ci_resource]
CI Resource Hardware
[ci_resource_hardware]
CI Resource Application
[ci_resource_appl]
CI Resource Service
[ci_resource_service]
CI Resource VM
[ci_resource_vm_object]
CI Resource Database
[ci_resource_database]

An extension of the CI Resource [ci_resource] table,
used for resource binding.
An extension of the CI Resource [ci_resource] table,
used for resource binding.
An extension of the CI Resource [ci_resource] table,
used for resource binding.
An extension of the CI Resource [ci_resource] table,
used for resource binding.
An extension of the CI Resource [ci_resource] table,
used for resource binding.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4630


<!-- page 4631 -->
Table

Description

Series Event History

Information about CIs start and end maintenance
mode.

[sa_series_event_history]

Metric Intelligence stores historical
information about the times CIs enter and exit
maintenance mode if the system property
sa.model_learner.maint_event_record_history_enabled
is set to true (default). And if the system property
sa_metric.maint_exclusion is also set to true (default),
metrics from CIs that are in maintenance mode are
excluded from model learning.
Metric Dashboard Metadata
[sa_metric_dashboard_metadata]
Metric Config Anomaly Detection Staging
[sa_metric_config_anomaly_detection_staging]

Chart configurations per CI class, for the metrics that
are displayed for a CI associated with an alert, in Agent
Workspace.
Internal table that is used to help calculate the action
level for each entry in the Metric to CI Mapping
[sa_metric_map] table.

Properties installed

Note: To open the System Property [sys_properties] table, enter
sys_properties.list in the navigation filter. To open the Metric Settings
[sa_metric_config_setting] table, enter sa_metric_config_setting.list in the
navigation filter.

Property

Usage

sa.metric.map.with.ci.expiration.sec

Length of time (in seconds) that records for mapping of
CIs remains in effect if the mapping to CI is found.
• Type: numeric
• Default value: 432000
• Location: System Property [sys_properties] table
• Learn more: Metric Intelligence

sa.metric.map.without.ci.expiration.sec

Length of time (in seconds) that records for mapping of
CIs remains in effect if the mapping to CI is not found.
• Type: numeric
• Default value: 86400
• Location: System Property [sys_properties] table
• Learn more: Metric Intelligence

sa_metric.anomaly_score_stale_interval_in_days

The starting day of the window of time that the Operat

Metrics – Process Stale Anomaly Score

scheduled job uses when checking staleness status of
score.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4631


<!-- page 4632 -->
Property

Usage

The window of time spans from today, until the past num
specified in this property.
• Type: numeric
• Default value: 3
• Location: System Property [sys_properties] table
sa_metric.anomaly_score_next_stale_interval_in_days

Number of days by which to extend the window of time

Operational Metrics – Process Stale An
Score – Daily scheduled job.
Applies if the job runs, but fails to return any
data using the window of time specified by the

sa_metric.anomaly_score_stale_interval
property.
• Type: numeric
• Default value: 7
• Location: System Property [sys_properties] table
max_records_per_rest_request

Maximum number of records to download from the inst
MID Server in each synchronization cycle.
This property is for internal use.
• Type: integer
• Default value: 10000
• Other possible values:
◦ Minimum value: 1000
◦ Maximum value: 20000
• Location: Metric Settings [sa_metric_config_setting]

normalized_metric_max_queue_size

Size of metrics queue. Anomaly detector reads through
and determines for each metric whether it is anomalous
This property is for internal use.
• Type: integer
• Default value: 3000000
• Other possible values:
◦ Minimum value: 1000000
◦ Maximum value: 5000000
• Location: Metric Settings [sa_metric_config_setting]

normalized_metric_queue_consumer_count

Number of threads that concurrently perform anomaly d
This property is for internal use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4632


<!-- page 4633 -->
Property

Usage

• Type: integer
• Default value: 12
• Other possible values:
◦ Minimum value: 8
◦ Maximum value: 16
• Location: Metric Settings [sa_metric_config_setting]
ignite_data_streamer_thread_count

Number of threads that data streamers use to write data
cache.

The data streamer creates batches from individual data
adds these batches to the cache.
This property is for internal use.
• Type: integer
• Default value: 8
• Other possible values:
◦ Minimum value: 8
◦ Maximum value: 32
• Location: Metric Settings [sa_metric_config_setting]
ignite_data_streamer_flush_frequency

Frequency of automatic flush of data streamers.

The data streamer creates batches from individual data
adds these batches to the cache.
This property is for internal use.
• Type: integer
• Default value: 1000
• Other possible values:
◦ Minimum value: 0
◦ Maximum value: 30000
• Location: Metric Settings [sa_metric_config_setting]
ignite_data_streamer_buffer_size

Buffer size of data streamers.

The data streamer creates batches from individual data
adds these batches to the cache.
This property is for internal use.
• Type: integer
• Default value: 102400
• Other possible values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4633


<!-- page 4634 -->
Property

Usage

◦ Minimum value: 1024
◦ Maximum value: 1024000
• Location: Metric Settings [sa_metric_config_setting]
ignite_data_streamer_batch_size

Size of the batch that is added to a data streamer.

The data streamer creates batches from individual data
adds these batches to the cache.
This property is for internal use.
• Type: integer
• Default value: 5000
• Other possible values:
◦ Minimum value: 1
◦ Maximum value: 10000
• Location: Metric Settings [sa_metric_config_setting]
ignite_data_streamer_batch_flush_frequency

Frequency of automatic flush of internal batching befor
data to data streamers.

The data streamer creates batches from individual data
adds these batches to the cache.
This property is for internal use.
• Type: integer
• Default value: 5000
• Other possible values:
◦ Minimum value: 1000
◦ Maximum value: 30000
• Location: Metric Settings [sa_metric_config_setting]
sa.metric.use.resource.binding

Enables resource binding.
• Type: true | false
• Default value: true
• Location: System Property [sys_properties] table
• Learn more: Metric binding to resources

sa.metric.display.mid.setup.action

Displays the Setup Metric Intelligence related link on th
Server form, for a MID Server that has been validated an
running.
• Type: true | false
• Default value: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4634


<!-- page 4635 -->
Property

Usage

• Location: System Property [sys_properties] table

• Learn more: MID Server and MID Server distributed c
Metric Intelligence
sa.model_learner.maint_event_record_history_enabled

Stores historical information about CIs start and end ma
mode, in the Series Event History [sa_series_event_hist
• Type: true | false
• Default value: true
• Location: System Property [sys_properties] table
• Learn more: Understanding Metric Intelligence

sa_metric.maint_exclusion

Excludes metrics for CIs that are in maintenance mode,
learning.
• Type: true | false
• Default value: true
• Location: System Property [sys_properties] table
• Learn more: Understanding Metric Intelligence

sa.model_learner.maint_history_batch_size

Determines the number of data series per batch when s
information about CIs start and end maintenance mode
Series Event History [sa_series_event_history] table.

Adjust the setting of this property if there are related pe
issues.
• Type: integer
• Default value: 1000
• Location: System Property [sys_properties] table
• Learn more: Understanding Metric Intelligence
sa_metric.scheduled_jobs_to_monitor_sys_id_list

Contains the sys_ids of the 3 scheduled jobs that self-h
monitoring for Metric Intelligence monitors:
• Metric Intelligence — Metric configuration job
• Metric Intelligence — Sync tables with mid

• Metric Intelligence — Validate MID Distributed cluster

Quick start tests for Metric Intelligence
Validate that Metric Intelligence still works after you make any configuration change such as
apply an upgrade or develop an application. Copy and configure these quick start tests to pass
when using your instance-specific data.
Metric Intelligence quick start tests require activating the Metric Intelligence plugin
(com.snc.sa.metric).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4635


