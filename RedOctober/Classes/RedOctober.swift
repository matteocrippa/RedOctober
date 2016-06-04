//
//  RedOctober.swift
//  Pods
//
//  Created by Matteo Crippa on 04/06/2016.
//
//

import BluetoothKit
import Foundation

enum RedOctoberUUID: String {
    case System = "7AF45D61-4298-450F-B1DF-6E707E1ADAE7"
    case Characteristic = "80703DC4-1D56-4D20-BDDB-3827EA1AB1EB"

    func uuid() -> NSUUID {
        return NSUUID(UUIDString: rawValue)!
    }
}

public class RedOctober {

    internal let central = BKCentral()
    internal let peripheral = BKPeripheral()

    public init() {}

    public func startBroadcasting(txt: String) {
        startPeripheral(txt)
    }

    public func startListening() {
        startCentral()
    }

}

extension RedOctober {
    internal func startPeripheral(_ txt: String) {

        let configuration = BKPeripheralConfiguration(
            dataServiceUUID: RedOctoberUUID.System.uuid(),
            dataServiceCharacteristicUUID: RedOctoberUUID.Characteristic.uuid(),
            localName: "ro-\(txt)"
        )
        do {
            try peripheral.startWithConfiguration(configuration)
        } catch let error {
            print(error)
        }
    }

}

extension RedOctober: BKAvailabilityObserver {

    internal func startCentral() {

        do {
            let configuration = BKConfiguration(
                dataServiceUUID: RedOctoberUUID.System.uuid(),
                dataServiceCharacteristicUUID: RedOctoberUUID.Characteristic.uuid()
            )
            central.addAvailabilityObserver(self)
            try  central.startWithConfiguration(configuration)
            scan()
        } catch let error {
            print(error)
        }
    }

    internal func scan() {
        central.scanContinuouslyWithChangeHandler({ changes, discoveries in
                print(changes)
                print(discoveries)
            }, stateHandler: { newState in
                print(newState)
            }, duration: 3, inBetweenDelay: 3, errorHandler: { error in
                print(error)
        })
    }

    public func availabilityObserver(availabilityObservable: BKAvailabilityObservable, availabilityDidChange availability: BKAvailability) {
        print(availability)
        if availability == .Available {
            scan()
        } else {
            central.interruptScan()
        }
    }
    
    public     func availabilityObserver(availabilityObservable: BKAvailabilityObservable, unavailabilityCauseDidChange unavailabilityCause: BKUnavailabilityCause) {
        print(unavailabilityCause)
    }

}
