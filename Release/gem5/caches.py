from __future__ import print_function
from __future__ import absolute_import

import m5
from m5.objects import Cache

# Add the common scripts to our path
m5.util.addToPath('../')

from common import SimpleOpts


class L1Cache(Cache):

    assoc = 2
    tag_latency = 2
    data_latency = 2
    response_latency = 2
    mshrs = 4
    tgts_per_mshr = 20

    def __init__(self, options=None):
        super(L1Cache, self).__init__()
        pass

    def connectBus(self, bus):
        self.mem_side = bus.slave

    def connectCPU(self, cpu):
        raise NotImplementedError

class L1ICache(L1Cache):

    #defualt size
    size = '32kB'


    def __init__(self, opts=None):
        super(L1ICache, self).__init__(opts)
        if not opts:
            return
        if opts.l1i_size:
            self.size = opts.l1i_size

    def connectCPU(self, cpu):
        self.cpu_side = cpu.icache_port

class L1DCache(L1Cache):

    # defualt size
    size = '64kB'

    def __init__(self, opts=None):
        super(L1DCache, self).__init__(opts)
        if not opts:
            return
        if opts.l1d_size:
            self.size = opts.l1d_size

    def connectCPU(self, cpu):
        self.cpu_side = cpu.dcache_port

class L2Cache(Cache):
    """Simple L2 Cache with default values"""

    # Default parameters
    size = '1MB'
    assoc = 8
    tag_latency = 20
    data_latency = 20
    response_latency = 20
    mshrs = 20
    tgts_per_mshr = 12


    def __init__(self, opts=None):
        super(L2Cache, self).__init__()
        if not opts:
            print("HIIIII",self.assoc)
            return
        if opts.l2_size:
            self.size = opts.l2_size
        if opts.l2_assoc:
            assoc = opts.l2_assoc
        print("HIIIII,",self.assoc)

    def connectCPUSideBus(self, bus):
        self.cpu_side = bus.master

    def connectMemSideBus(self, bus):
        self.mem_side = bus.slave
