# ViGEmClient Vcpkg Port

[Vcpkg](https://github.com/microsoft/vcpkg) portfile for [native ViGEm Client library](https://github.com/ViGEm/ViGEmClient).

## Usage

1. [Follow the Vcpkg Quick Start](https://github.com/microsoft/vcpkg#quick-start)
2. Clone this repository into a directory of your choice like this example:
    - `git clone https://github.com/ViGEm/ViGEmClient.vcpkg.git C:\ViGEmClient.vcpkg`

### Install as static library (.lib)

```text
PS> .\vcpkg.exe install vigemclient:x86-windows-static vigemclient:x64-windows-static --overlay-ports="C:\ViGEmClient.vcpkg"
```

### Install as dynamic library (.dll)

```text
PS> .\vcpkg.exe install vigemclient:x86-windows vigemclient:x64-windows --overlay-ports="C:\ViGEmClient.vcpkg"
```
