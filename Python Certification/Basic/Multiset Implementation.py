class Multiset(object):
    def __init__(self):
        self.lst = []

    def add(self, val):
        self.lst.append(val)

    def remove(self, val):
        if val in self.lst:
           self.lst.remove(val)

    def __contains__(self, val):
        return val in self.lst

    def __len__(self):
        return len(self.lst)
