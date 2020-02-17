# ViGEmClient Vcpkg Port

[Vcpkg](https://github.com/microsoft/vcpkg) portfile for [native ViGEm Client library](https://github.com/ViGEm/ViGEmClient).

## Usage

[Follow the Vcpkg Quick Start](https://github.com/microsoft/vcpkg#quick-start) and add this port as a submodule:

```bash
git submodule add https://github.com/ViGEm/ViGEmClient.vcpkg.git ports/vigemclient
```

### Install as static library (.lib)

```text
PS> .\vcpkg.exe install vigemclient:x86-windows-static vigemclient:x64-windows-static
```

### Install as dynamic library (.dll)

```text
PS> .\vcpkg.exe install vigemclient:x86-windows vigemclient:x64-windows
```
