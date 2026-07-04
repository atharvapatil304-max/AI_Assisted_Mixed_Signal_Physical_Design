# Log 01 - Inspection


## Search for Pin Files

```bash
find . -iname "*pin*"
```

**Purpose**

* Check for custom pin-order files
* Verify manual IO placement

**Result**

* No custom pin configuration files found

---

## Find OpenLane Configuration

```bash
find . -name "config.json"
```

**Purpose**

* Locate OpenLane configuration files
* Identify the main project configuration

**Result**

* Found the primary configuration and run-specific snapshots

---

## List Top-Level JSON Files

```bash
find . -name "*.json" | grep -v runs
```

**Purpose**

* Filter out run directories
* Locate the main configuration file

**Result**

* Identified the top-level `config.json`

---

## View Configuration

```bash
cat config.json
```

**Purpose**

* Review implementation settings
* Verify macro integration parameters

**Result**

* Confirmed `EXTRA_LEFS`
* Confirmed `EXTRA_LIBS`
* Confirmed `FP_PDN_MACRO_HOOKS`

---

## Locate Analog Macro Files

```bash
find . -iname "*AMUX*"
```

**Purpose**

* Find all abstraction files for the analog macro

**Result**

* LEF located
* LIB located
* Verilog black-box located
