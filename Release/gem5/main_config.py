
from __future__ import print_function
from __future__ import absolute_import

import m5

from m5.objects import *
from m5.params import NULL
from m5.util import addToPath, fatal, warn

addToPath('../')


from caches import *

from common import SimpleOpts

from optparse import OptionParser

parser = OptionParser()

#L1 Instruction Cache Options
parser.add_option('--l1i_size')

#l1 Data Cache Options
parser.add_option('--l1d_size')

#L2 Cache Options
parser.add_option('--l2_size')
parser.add_option('--l2_assoc')
parser.add_option('--cacheline')


(opts, args) = parser.parse_args()

# Set the usage message to display

# get ISA for the default binary to run. This is mostly for simple testing
isa = str(m5.defines.buildEnv['TARGET_ISA']).lower()

# Default to running 'hello', use the compiled ISA to find the binary
# grab the specific path to the binary
thispath = os.path.dirname(os.path.realpath(__file__))
binary = os.path.join(thispath, '../../',
                      'tests/test-progs/hello/bin/', isa, 'linux/hello')

# Check if there was a binary passed in via the command line and error if
# there are too many arguments
if len(args) == 1:
    binary = args[0]
elif len(args) > 1:
    SimpleOpts.print_help()
    m5.fatal("Expected a binary to execute as positional argument")
if opts.cacheline:
    system = System(cache_line_size=opts.cacheline)
else:
    system = System()

system.clk_domain = SrcClockDomain()
system.clk_domain.clock = '1GHz'
system.clk_domain.voltage_domain = VoltageDomain()

system.mem_mode = 'timing'
system.mem_ranges = [AddrRange('512MB')]

system.cpu = TimingSimpleCPU()


system.cpu.icache = L1ICache(opts)
system.cpu.dcache = L1DCache(opts)


system.cpu.icache.connectCPU(system.cpu)
system.cpu.dcache.connectCPU(system.cpu)


system.l2bus = L2XBar()


system.cpu.icache.connectBus(system.l2bus)
system.cpu.dcache.connectBus(system.l2bus)


system.l2cache = L2Cache(opts)
system.l2cache.connectCPUSideBus(system.l2bus)


system.membus = SystemXBar()


system.l2cache.connectMemSideBus(system.membus)


system.cpu.createInterruptController()

#intreupts for x86
if m5.defines.buildEnv['TARGET_ISA'] == "x86":
    system.cpu.interrupts[0].pio = system.membus.master
    system.cpu.interrupts[0].int_master = system.membus.slave
    system.cpu.interrupts[0].int_slave = system.membus.master


system.system_port = system.membus.slave


system.mem_ctrl = DDR3_1600_8x8()
system.mem_ctrl.range = system.mem_ranges[0]
system.mem_ctrl.port = system.membus.master


process = Process()

process.cmd = [binary]

system.cpu.workload = process
system.cpu.createThreads()


root = Root(full_system = False, system = system)

m5.instantiate()

print("Beginning simulation!")
exit_event = m5.simulate()
print('Exiting @ tick %i because %s' % (m5.curTick(), exit_event.getCause()))
