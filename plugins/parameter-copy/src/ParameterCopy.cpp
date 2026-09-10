#include <Windows.h>
#include <plugin2.h>

COMMON_PLUGIN_TABLE common_plugin_table = {
	L"Parameter Copy", // プラグインの名前
	L"Copy and paste parameters between objects." // プラグインの情報
};

void TestMenu(EDIT_SECTION* edit) {
	MessageBoxW(nullptr, L"Test Menu", L"Parameter Copy", MB_OK);
}

EXTERN_C __declspec(dllexport)
COMMON_PLUGIN_TABLE* GetCommonPluginTable(void)
{
    return &common_plugin_table;
}

EXTERN_C __declspec(dllexport)
void RegisterPlugin(HOST_APP_TABLE* host)
{
    if (host == nullptr)
        return;

    host->register_object_menu(
        L"Parameter Copy\\テスト",
        TestMenu
    );
}

EXTERN_C __declspec(dllexport)
bool InitializePlugin(DWORD version)
{
    return true;
}

EXTERN_C __declspec(dllexport)
void UninitializePlugin()
{
}
