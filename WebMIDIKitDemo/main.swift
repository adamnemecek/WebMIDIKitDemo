//
//  main.swift
//  WebMIDIKitDemo
//
//  Created by Adam Nemecek on 2/7/17.
//  Copyright © 2017 Adam Nemecek. All rights reserved.
//

import WebMIDIKit

let midi = MIDIAccess()

let noteOn: [UInt8] = [0x90, 0x40, 0x7f]
let noteOff: [UInt8] = [0x80, 0x40, 0]

let input = midi.inputs.prompt()

let output = input.flatMap { midi.output(for: $0) }

input?.onMIDIMessage = { packet in
  print("received \(packet)")
}


output?.send(noteOn)
       .send(noteOff, offset: 1000)

