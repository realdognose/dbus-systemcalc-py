Hack for dynamic-ess delegate.

### feature/3.41

### install

```
wget https://github.com/realdognose/dbus-systemcalc-py/blob/91c529a9beca7afd327617e2e2a7da38364919e5/delegates/dynamicess.py
wget https://github.com/realdognose/dbus-systemcalc-py/blob/91c529a9beca7afd327617e2e2a7da38364919e5/temp/PageSettingsDynamicEss.qml

test -a /opt/victronenergy/dbus-systemcalc-py/delegates/dynamicess.backup.py || cp /opt/victronenergy/dbus-systemcalc-py/delegates/dynamicess.py /opt/victronenergy/dbus-systemcalc-py/delegates/dynamicess.backup.py
test -a /opt/victronenergy/gui/qml/PageSettingsDynamicEss.backup.qml || cp /opt/victronenergy/gui/qml/PageSettingsDynamicEss.qml /opt/victronenergy/gui/qml/PageSettingsDynamicEss.backup.qml

mv dynamicess.py /opt/victronenergy/dbus-systemcalc-py/delegates/dynamicess.py
mv PageSettingsDynamicEss.qml /opt/victronenergy/gui/qml/PageSettingsDynamicEss.qml

shutdown -r -t 10 now
```

### restore

```
cp /opt/victronenergy/dbus-systemcalc-py/delegates/dynamicess.backup.py /opt/victronenergy/dbus-systemcalc-py/delegates/dynamicess.py
cp /opt/victronenergy/gui/qml/PageSettingsDynamicEss.backup.qml /opt/victronenergy/gui/qml/PageSettingsDynamicEss.qml

shutdown -r -t 10 now
```